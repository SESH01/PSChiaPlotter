function Get-MaxKSize {
    [CmdletBinding()]
    param(
        [ValidateSet("K32","K33","K34","K35","K36","K37","K38","K39","K40")]
        [string[]]$KSize = ("K32","K33","K34","K35","K36","K37","K38","K39","K40"),

        [Parameter(Mandatory)]
        [int64]$TotalBytes
    )

    foreach ($size in $KSize){
        [MaximizedKSize]::new($size,$TotalBytes)
    } #foreach
}
