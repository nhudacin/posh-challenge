<#
    .SYNOPSIS
    Indexes a directory

    .DESCRIPTION
    This function will index a directory and return a list of files and their content hash.

    .EXAMPLE
#>

function Invoke-FileIndex {
  [CmdletBinding()]
  param(
  )

  Write-Output "Hello. This will be a file index operation"
}