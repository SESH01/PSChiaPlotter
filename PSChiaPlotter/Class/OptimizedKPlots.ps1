class OptimizedKPlots {
    [int]$K40
    [int]$K39
    [int]$K38
    [int]$K37
    [int]$K36
    [int]$K35
    [int]$K34
    [int]$K33
    [int]$K32
    [decimal]$RemainingBytes
    [double]$RemainingGB

    OptimizedKPlots (
        [int]$K40,
        [int]$K39,
        [int]$K38,
        [int]$K37,
        [int]$K36,
        [int]$K35,
        [int]$K34,
        [int]$K33,
        [int64]$Totalbytes
    ){
        $sizeremaining = $TotalBytes - (($K40 * [MaximizedKSize]::K40) + ($K39 * [MaximizedKSize]::K39) + ($K38 * [MaximizedKSize]::K38) + ($K37 * [MaximizedKSize]::K37) + ($K36 * [MaximizedKSize]::K36) + ($K35 * [MaximizedKSize]::K35) + ($K34 * [MaximizedKSize]::K34) + ($K33 * [MaximizedKSize]::K33))
        $k32max = Get-MaxKSize -Totalbytes $sizeremaining -KSize "K32"
        $this.K40 = $K40
        $this.K39 = $K39
        $this.K38 = $K38
        $this.K37 = $K37
        $this.K36 = $K36
        $this.K35 = $K35
        $this.K34 = $K34
        $this.K33 = $K33
        $this.K32 = $k32max.MaxPlots
        $this.RemainingBytes = $k32max.RemainingBytes
        $this.RemainingGB = [math]::Round($k32max.RemainingBytes / 1gb,2)
    }
}
