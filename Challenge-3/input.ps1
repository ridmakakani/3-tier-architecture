function Get-Value {
    param (
        [Parameter(Mandatory=$true)]
        [Object]$Object,
        [Parameter(Mandatory=$true)]
        [string]$Key
    )

    $value = $Object.$Key
    return $value
}