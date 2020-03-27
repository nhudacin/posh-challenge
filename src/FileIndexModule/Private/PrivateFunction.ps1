<#
  .SYNOPSIS
    This is a private function
#>

function PrivateFunction {
  [CmdletBinding()]
  param(
    
  )

  Write-Output "This is a private function. Will not be viewable to anything outside of this module"
}