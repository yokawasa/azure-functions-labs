#変数設定用のスクリプトです。
#各値を書き換えたうえでどっとソース形式 ". ./variables.ps1" で実行してください。

<# 
.SYNOPSIS 
    変数設定用のスクリプト
.NOTES 
    Created:  2019/07/31
.EXAMPLE
    . .\variables.ps1
    ドットソース形式（ dot space script ）で実行すると、現在のスコープに変数が読み込まれます。
#>

$prefix = 'yourName'
$RESOURCE_GROUP = "$prefix-rg"
$REGION = 'japaneast'
$STORAGE_ACCOUNT_NAME = "str$prefix"
$AZFUNC_APP_NAME = "$prefix-func"
$APP_SERVICE_PLAN_NAME = "$prefix-asp"
$WEBAPP_NAME = "$prefix-web"


