#!powershell
# https://serverfault.com/a/173689/315697
$(Get-UICulture | Select-Object -ExpandProperty DisplayName).split(' ')[0]
