enum KSize{
    K32 = 32
    K33 = 33
    K34 = 34
    K35 = 35
    K36 = 36
    K37 = 37
    K38 = 38
    K39 = 39
    K40 = 40
}

class MaximizedKSize {
    [KSize]$KSize
    [int]$MaxPlots
    [Decimal]$RemainingBytes
    [Decimal]$KSizeBytes
    [int64]$TotalBytes

    static [Decimal]$K40 = 32824.3 * 1gb
    static [Decimal]$K39 = 15931.8 * 1gb
    static [Decimal]$K38 = 7732.8 * 1gb
    static [Decimal]$K37 = 3753.3 * 1gb
    static [Decimal]$K36 = 1821.7 * 1gb
    static [Decimal]$K35 = 884.1 * 1gb
    static [Decimal]$K34 = 429.8 * 1gb
    static [Decimal]$K33 = 208.8 * 1gb
    static [Decimal]$K32 = 101.4 * 1gb

    MaximizedKSize(
        [KSize]$KSize,
        [int64]$TotalBytes
    ){
        $this.KSize = $Ksize
        $this.TotalBytes = $TotalBytes

        $this.KSizeBytes = switch ($this.KSize){
            "K40" {[MaximizedKSize]::K40}
            "K39" {[MaximizedKSize]::K39}
            "K38" {[MaximizedKSize]::K38}
            "K37" {[MaximizedKSize]::K37}
            "K36" {[MaximizedKSize]::K36}
            "K35" {[MaximizedKSize]::K35}
            "K34" {[MaximizedKSize]::K34}
            "K33" {[MaximizedKSize]::K33}
            "K32" {[MaximizedKSize]::K32}
        }
        $this.MaxPlots = [math]::Floor([decimal]($this.TotalBytes / $this.KSizeBytes))
        $this.RemainingBytes = $Totalbytes - (([math]::Floor([decimal]($this.TotalBytes / $this.KSizeBytes))) * $this.KSizeBytes)
    }
}
