#Old: 6C2B7690-1185-4876-B379-D8C24B30C590
#New: 6C2B7690-1185-4876-B379-D8C24B30C590

#Old: 44390
#New: 44390

$scriptDir = split-path -parent $MyInvocation.MyCommand.Definition

$replacements = @{
    '6C2B7690-1185-4876-B379-D8C24B30C590' = '6C2B7690-1185-4876-B379-D8C24B30C590'
    '44316' = '44390'
    '296C5896-6E40-4685-A844-986ED3B2B365'='19D80B87-317A-4E4F-A806-E983942F33C4'
    '52181' = '52108'
}
$folder = 'C:\temp\dotnet-temp\doreplace\MyWeb'
Push-Location $folder
sayedha removefolders -f bin -f obj -f .vs
Replace-TextInFolder -folder $folder -replacements $replacements 
Pop-Location