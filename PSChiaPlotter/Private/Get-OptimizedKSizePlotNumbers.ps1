function Get-OptimizedKSizePlotNumbers {
    [CmdletBinding()]
    param(
        [MaximizedKSize[]]$MaximizedKSize
    )

    foreach ($size in $MaximizedKSize){
        switch ($size.KSize){
            "K32" {
                [OptimizedKPlots]::new(0,0,0,$Size.TotalBytes)
            } #32

            "K33" {
                for ($K33Count = 1; $K33Count -le $size.MaxPlots; $K33Count++){
                    [OptimizedKPlots]::new(0,0,$K33Count,$Size.TotalBytes)
                } #for 33
            } #33
            "K34" {
                for ($K34Count = 1; $K34Count -le $size.maxplots; $K34Count++){
                    [OptimizedKPlots]::new(0,$K34Count,0,$Size.TotalBytes)

                    $k34sizeremaining = $Size.TotalBytes - ($K34Count * $size.KSizeBytes)
                    $K33Max = Get-MaxKSize -TotalBytes $k34sizeremaining -KSize "K33"
                    for ($k33 = 1; $k33 -le $k33max.MaxPlots; $k33++){
                        [OptimizedKPlots]::new(0,$K34Count,$k33,$Size.TotalBytes)
                    } #for 33
                } #for 34
            } #34

            "K35" {
                for ($k35count = 1; $k35count -le $size.maxplots; $k35count++){

                    [OptimizedKPlots]::new($k35count,0,0,$Size.TotalBytes)

                    $k35sizeremaining = $Size.TotalBytes - ($k35count * $size.KSizeBytes)
                    $k33max = Get-MaxKSize -Totalbytes $k35sizeremaining -KSize "K33"

                    for ($k33 = 1; $k33 -le $k33max.MaxPlots; $k33++){
                        [OptimizedKPlots]::new($k35count,0,$k33,$Size.TotalBytes)
                    } #for 33

                    $k34max = Get-MaxKSize -Totalbytes $k35sizeremaining -KSize "K34"
                    for ($k34 = 1; $k34 -le $k34max.maxplots; $k34++){
                        [OptimizedKPlots]::new($k35count,$k34,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($k35count * $size.KSizeBytes) + ($k34 * $k34max.KSizeBytes))
                        $K33max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K33"

                        for ($k33 = 1;$k33 -le $k33max.maxplots; $k33++){
                            [OptimizedKPlots]::new($k35count,$k34,$k33,$Size.TotalBytes)
                        } #for 33
                    } #for 34
                } #for 35
            } #35
            "K36" {
                for ($K36count = 1; $K36count -le $size.maxplots; $K36count++){

                    [OptimizedKPlots]::new($K36count,0,0,$Size.TotalBytes)

                    $K36sizeremaining = $Size.TotalBytes - ($K36count * $size.KSizeBytes)
                    $K34max = Get-MaxKSize -Totalbytes $K36sizeremaining -KSize "K34"

                    for ($K34 = 1; $K34 -le $K34max.MaxPlots; $K34++){
                        [OptimizedKPlots]::new($K36count,0,$K34,$Size.TotalBytes)
                    } #for 34

                    $K35max = Get-MaxKSize -Totalbytes $K36sizeremaining -KSize "K35"
                    for ($K35 = 1; $K35 -le $K35max.maxplots; $K35++){
                        [OptimizedKPlots]::new($K36count,$K35,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($K36count * $size.KSizeBytes) + ($K35 * $K35max.KSizeBytes))
                        $K34max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K34"

                        for ($K34 = 1;$K34 -le $K34max.maxplots; $K34++){
                            [OptimizedKPlots]::new($K36count,$K35,$K34,$Size.TotalBytes)
                        } #for 34
                    } #for 35
                } #for 36
            } #36
            "K37" {
                for ($K37count = 1; $K37count -le $size.maxplots; $K37count++){

                    [OptimizedKPlots]::new($K37count,0,0,$Size.TotalBytes)

                    $K37sizeremaining = $Size.TotalBytes - ($K37count * $size.KSizeBytes)
                    $K35max = Get-MaxKSize -Totalbytes $K37sizeremaining -KSize "K35"

                    for ($K35 = 1; $K35 -le $K35max.MaxPlots; $K35++){
                        [OptimizedKPlots]::new($K37count,0,$K35,$Size.TotalBytes)
                    } #for 35

                    $K36max = Get-MaxKSize -Totalbytes $K37sizeremaining -KSize "K36"
                    for ($K36 = 1; $K36 -le $K36max.maxplots; $K36++){
                        [OptimizedKPlots]::new($K37count,$K36,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($K37count * $size.KSizeBytes) + ($K36 * $K36max.KSizeBytes))
                        $K35max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K35"

                        for ($K35 = 1;$K35 -le $K35max.maxplots; $K35++){
                            [OptimizedKPlots]::new($K37count,$K36,$K35,$Size.TotalBytes)
                        } #for 35
                    } #for 36
                } #for 37
            } #37
            "K38" {
                for ($K38count = 1; $K38count -le $size.maxplots; $K38count++){

                    [OptimizedKPlots]::new($K38count,0,0,$Size.TotalBytes)

                    $K38sizeremaining = $Size.TotalBytes - ($K38count * $size.KSizeBytes)
                    $K36max = Get-MaxKSize -Totalbytes $K38sizeremaining -KSize "K36"

                    for ($K36 = 1; $K36 -le $K36max.MaxPlots; $K36++){
                        [OptimizedKPlots]::new($K38count,0,$K36,$Size.TotalBytes)
                    } #for 36

                    $K37max = Get-MaxKSize -Totalbytes $K38sizeremaining -KSize "K37"
                    for ($K37 = 1; $K37 -le $K37max.maxplots; $K37++){
                        [OptimizedKPlots]::new($K38count,$K37,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($K38count * $size.KSizeBytes) + ($K37 * $K37max.KSizeBytes))
                        $K36max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K36"

                        for ($K36 = 1;$K36 -le $K36max.maxplots; $K36++){
                            [OptimizedKPlots]::new($K38count,$K37,$K36,$Size.TotalBytes)
                        } #for 36
                    } #for 37
                } #for 38
            } #38
            "K39" {
                for ($K39count = 1; $K39count -le $size.maxplots; $K39count++){

                    [OptimizedKPlots]::new($K39count,0,0,$Size.TotalBytes)

                    $K39sizeremaining = $Size.TotalBytes - ($K39count * $size.KSizeBytes)
                    $K37max = Get-MaxKSize -Totalbytes $K39sizeremaining -KSize "K37"

                    for ($K37 = 1; $K37 -le $K37max.MaxPlots; $K37++){
                        [OptimizedKPlots]::new($K39count,0,$K37,$Size.TotalBytes)
                    } #for 37

                    $K38max = Get-MaxKSize -Totalbytes $K39sizeremaining -KSize "K38"
                    for ($K38 = 1; $K38 -le $K38max.maxplots; $K38++){
                        [OptimizedKPlots]::new($K39count,$K38,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($K39count * $size.KSizeBytes) + ($K38 * $K38max.KSizeBytes))
                        $K37max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K37"

                        for ($K37 = 1;$K37 -le $K37max.maxplots; $K37++){
                            [OptimizedKPlots]::new($K39count,$K38,$K37,$Size.TotalBytes)
                        } #for 37
                    } #for 38
                } #for 39
            } #39
            "K40" {
                for ($K40count = 1; $K40count -le $size.maxplots; $K40count++){

                    [OptimizedKPlots]::new($K40count,0,0,$Size.TotalBytes)

                    $K40sizeremaining = $Size.TotalBytes - ($K40count * $size.KSizeBytes)
                    $K38max = Get-MaxKSize -Totalbytes $K40sizeremaining -KSize "K38"

                    for ($K38 = 1; $K38 -le $K38max.MaxPlots; $K38++){
                        [OptimizedKPlots]::new($K40count,0,$K38,$Size.TotalBytes)
                    } #for 37

                    $K39max = Get-MaxKSize -Totalbytes $K40sizeremaining -KSize "K39"
                    for ($K39 = 1; $K39 -le $K39max.maxplots; $K39++){
                        [OptimizedKPlots]::new($K40count,$K39,0,$Size.TotalBytes)

                        $sizeremaining = $Size.TotalBytes - (($K40count * $size.KSizeBytes) + ($K39 * $K39max.KSizeBytes))
                        $K38max = Get-MaxKSize -TotalBytes $sizeremaining -KSize "K38"

                        for ($K38 = 1;$K38 -le $K38max.maxplots; $K38++){
                            [OptimizedKPlots]::new($K40count,$K39,$K38,$Size.TotalBytes)
                        } #for 38
                    } #for 39
                } #for 40
            } #40
        } #switch
    } #foreach
}
