#!powershell
# https://serverfault.com/a/173689/315697
$native_lang = $(Get-UICulture | Select-Object -ExpandProperty DisplayName).split(' ')[0]

# Thanks https://github.com/RedMadness
$url = 'https://product-details.mozilla.org/1.0/languages.json'
$json = Invoke-WebRequest $url | ConvertFrom-Json
$firefox_lang = echo ($json.psobject.Properties | ? {$_.Value -match "$native_lang"}).Name

$firefox_lang
