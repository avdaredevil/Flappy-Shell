<#
|====================================================================================>|
   Flappy Shell [Flappy Bird PwShell] by APoorv Verma [AP] on 5/9/2015
|====================================================================================>|
      $) Color Scheming               
      $) Level Making              /\
      $) High Score               /  \ 
      $) Obstruction Creation         |
      $) Game-Console and Score count \
      $) Attempting Multi-Threaded Model!
      $) Restore Console Properties upon Close
|====================================================================================>|
AP-COMPILE-FLAGS(KeyTranslate,KeyPressedCode)#>
param([Switch]$Trail, [String]$MapFile='/*\', [Switch]$LoadDefaultSave)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5UHJlc3NlZENvZGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bSW50XSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICghJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlIC1hbmQgJFN0b3JlIC1lcSAiXl5eIikge1JldHVybiAkRmFsc2V9DQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9DQogICAgcmV0dXJuICgkS2V5IC1pbiAkU3RvcmUuVmlydHVhbEtleUNvZGUpDQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gQWxpZ24tVGV4dCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kVGV4dCwgW1ZhbGlkYXRlU2V0KCJDZW50ZXIiLCJSaWdodCIsIkxlZnQiKV1bU3RyaW5nXSRBbGlnbj0nQ2VudGVyJykNCg0KICAgIGlmICgkVGV4dC5jb3VudCAtZ3QgMSkgew0KICAgICAgICAkYW5zID0gQCgpDQogICAgICAgIGZvcmVhY2ggKCRsbiBpbiAkVGV4dCkgeyRBbnMgKz0gQWxpZ24tVGV4dCAkbG4gJEFsaWdufQ0KICAgICAgICByZXR1cm4gKCRhbnMpDQogICAgfSBlbHNlIHsNCiAgICAgICAgJFdpblNpemUgPSAkKEdldC1Ib3N0KS5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoDQogICAgICAgIGlmICgoIiIrJFRleHQpLkxlbmd0aCAtZ2UgJFdpblNpemUpIHsNCiAgICAgICAgICAgICRBcHBlbmRlciA9IEAoIiIpOw0KICAgICAgICAgICAgJGogPSAwDQogICAgICAgICAgICBmb3JlYWNoICgkcCBpbiAwLi4oKCIiKyRUZXh0KS5MZW5ndGgtMSkpew0KICAgICAgICAgICAgICAgIGlmICgoJHArMSklJHdpbnNpemUgLWVxIDApIHskaisrOyRBcHBlbmRlciArPSAiIn0NCiMgICAgICAgICAgICAgICAgIiIrJGorIiAtICIrJHANCiAgICAgICAgICAgICAgICAkQXBwZW5kZXJbJGpdICs9ICRUZXh0LmNoYXJzKCRwKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgcmV0dXJuIChBbGlnbi1UZXh0ICRBcHBlbmRlciAkQWxpZ24pDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBpZiAoJEFsaWduIC1lcSAiQ2VudGVyIikgew0KICAgICAgICAgICAgICAgIHJldHVybiAoIiAiKlttYXRoXTo6dHJ1bmNhdGUoKCRXaW5TaXplLSgiIiskVGV4dCkuTGVuZ3RoKS8yKSskVGV4dCkNCiAgICAgICAgICAgIH0gZWxzZWlmICgkQWxpZ24gLWVxICJSaWdodCIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCIgIiooJFdpblNpemUtKCIiKyRUZXh0KS5MZW5ndGgtMSkrJFRleHQpDQogICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgIHJldHVybiAoJFRleHQpDQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQp9CgpmdW5jdGlvbiBQYXVzZSB7cGFyYW0oW1N0cmluZ10kUGF1c2VRID0gIlByZXNzIGFueSBrZXkgdG8gY29udGludWUgLiAuIC4gIikNCg0KICAgIFdyaXRlLUhvc3QgLW5vTmV3bGluZSAkUGF1c2VRDQogICAgJG51bGwgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJOb0VjaG8sIEluY2x1ZGVLZXl1cCIpDQogICAgV3JpdGUtSG9zdCAiIg0KfQoKZnVuY3Rpb24gS2V5UHJlc3NlZCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kS2V5LCAkU3RvcmU9Il5eXiIpDQoNCiAgICBpZiAoJFN0b3JlIC1lcSAiXl5eIiAtYW5kICRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKX0gZWxzZSB7aWYgKCRTdG9yZSAtZXEgIl5eXiIpIHtyZXR1cm4gJEZhbHNlfX0NCiAgICAkQW5zID0gJEZhbHNlDQogICAgJEtleSB8ICUgew0KICAgICAgICAkU09VUkNFID0gJF8NCiAgICAgICAgdHJ5IHsNCiAgICAgICAgICAgICRBbnMgPSAkQW5zIC1vciAoS2V5UHJlc3NlZENvZGUgJFNPVVJDRSAkU3RvcmUpDQogICAgICAgIH0gY2F0Y2ggew0KICAgICAgICAgICAgRm9yZWFjaCAoJEsgaW4gJFNPVVJDRSkgew0KICAgICAgICAgICAgICAgIFtTdHJpbmddJEsgPSAkSw0KICAgICAgICAgICAgICAgIGlmICgkSy5sZW5ndGggLWd0IDQgLWFuZCAoJEtbMCwxLC0xLC0yXSAtam9pbigiIikpIC1lcSAifn5+fiIpIHsNCiAgICAgICAgICAgICAgICAgICAgJEFucyA9ICRBTlMgLW9yIChLZXlQcmVzc2VkQ29kZSAoS2V5VHJhbnNsYXRlKCRLKSkgJFN0b3JlKQ0KICAgICAgICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgICAgICRBbnMgPSAkQU5TIC1vciAoJEsuY2hhcnMoMCkgLWluICRTdG9yZS5DaGFyYWN0ZXIpDQogICAgICAgICAgICAgICAgfQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KICAgIHJldHVybiAkQW5zDQp9CgpmdW5jdGlvbiBQbGFjZS1BbGlnbmVkLVRleHQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nXSRUZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdDZW50ZXInLCBbQWxpYXMoImYiKV1bU3lzdGVtLkNvbnNvbGVDb2xvcl0kRm9yZUNvbD1bQ29uc29sZV06OkZvcmVHcm91bmRDb2xvciwgW0FsaWFzKCJiIildW1N5c3RlbS5Db25zb2xlQ29sb3JdJEJhY2tDb2w9W0NvbnNvbGVdOjpCYWNrR3JvdW5kQ29sb3IsIFtpbnRdJE9mZnNldD0wLCBbQWxpYXMoIk5OTCIpXVtTd2l0Y2hdJE5vTmV3TGluZSkNCg0KICAgICRUZXh0ICA9IEFsaWduLVRleHQgJFRleHQgJEFsaWduDQogICAgJENvdW50ID0gJFRleHQuTGVuZ3RoLSRUZXh0LlRyaW1TdGFydCgpLkxlbmd0aCskT2Zmc2V0DQogICAgW0NvbnNvbGVdOjpDdXJzb3JMZWZ0ID0gJENvdW50DQogICAgaWYgKCROb05ld0xpbmUpIHsNCiAgICAgICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lIC1mICRGb3JlQ29sIC1iICRCYWNrQ29sICRUZXh0LlRyaW1TdGFydCgpDQogICAgfSBlbHNlIHsNCiAgICAgICAgV3JpdGUtSG9zdCAtZiAkRm9yZUNvbCAtYiAkQmFja0NvbCAkVGV4dC5UcmltU3RhcnQoKQ0KICAgIH0NCn0KCmZ1bmN0aW9uIEtleVRyYW5zbGF0ZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJEtleSkNCg0KICAgICRIYXNoS2V5ID0gQCgNCiAgICAgICAgKCJ+flNwYWNlfn4iLDMyKSwNCiAgICAgICAgKCJ+fkVTQ0FQRX5+IiwyNyksDQogICAgICAgICgifn5FbnRlcn5+IiwxMyksDQogICAgICAgICgifn5TaGlmdH5+IiwxNiksDQogICAgICAgICgifn5Db250cm9sfn4iLDE3KSwNCiAgICAgICAgKCJ+fkFsdH5+IiwxOCksDQogICAgICAgICgifn5CYWNrU3BhY2V+fiIsOCksDQogICAgICAgICgifn5EZWxldGV+fiIsNDYpLA0KICAgICAgICAoIn5+ZjF+fiIsMTEyKSwNCiAgICAgICAgKCJ+fmYyfn4iLDExMyksDQogICAgICAgICgifn5mM35+IiwxMTQpLA0KICAgICAgICAoIn5+ZjR+fiIsMTE1KSwNCiAgICAgICAgKCJ+fmY1fn4iLDExNiksDQogICAgICAgICgifn5mNn5+IiwxMTcpLA0KICAgICAgICAoIn5+Zjd+fiIsMTE4KSwNCiAgICAgICAgKCJ+fmY4fn4iLDExOSksDQogICAgICAgICgifn5mOX5+IiwxMjApLA0KICAgICAgICAoIn5+ZjEwfn4iLDEyMSksDQogICAgICAgICgifn5mMTF+fiIsMTIyKSwNCiAgICAgICAgKCJ+fmYxMn5+IiwxMjMpLA0KICAgICAgICAoIn5+TXV0ZX5+IiwxNzMpLA0KICAgICAgICAoIn5+SW5zZXJ0fn4iLDQ1KSwNCiAgICAgICAgKCJ+flBhZ2VVcH5+IiwzMyksDQogICAgICAgICgifn5QYWdlRG93bn5+IiwzNCksDQogICAgICAgICgifn5FTkR+fiIsMzUpLA0KICAgICAgICAoIn5+SE9NRX5+IiwzNiksDQogICAgICAgICgifn50YWJ+fiIsOSksDQogICAgICAgICgifn5DYXBzTG9ja35+IiwyMCksDQogICAgICAgICgifn5OdW1Mb2Nrfn4iLDE0NCksDQogICAgICAgICgifn5XaW5kb3dzfn4iLDkxKSwNCiAgICAgICAgKCJ+fkxlZnR+fiIsMzcpLA0KICAgICAgICAoIn5+VXB+fiIsMzgpLA0KICAgICAgICAoIn5+UmlnaHR+fiIsMzkpLA0KICAgICAgICAoIn5+RG93bn5+Iiw0MCksDQogICAgICAgICgifn5LUDB+fiIsOTYpLA0KICAgICAgICAoIn5+S1Axfn4iLDk3KSwNCiAgICAgICAgKCJ+fktQMn5+Iiw5OCksDQogICAgICAgICgifn5LUDN+fiIsOTkpLA0KICAgICAgICAoIn5+S1A5fn4iLDEwMCksDQogICAgICAgICgifn5LUDV+fiIsMTAxKSwNCiAgICAgICAgKCJ+fktQNn5+IiwxMDIpLA0KICAgICAgICAoIn5+S1A3fn4iLDEwMyksDQogICAgICAgICgifn5LUDh+fiIsMTA0KSwNCiAgICAgICAgKCJ+fktQOX5+IiwxMDUpDQogICAgKQ0KICAgIHRyeSB7DQogICAgICAgIFtpbnRdJENvbnZlcnQgPSAoJEhhc2hLZXkgLW1hdGNoICRLZXkpWzBdWzFdDQogICAgfSBjYXRjaCB7fQ0KICAgIGlmICgkQ29udmVydCAtZXEgJE51bGwpIHtUaHJvdyAiSW52YWxpZCBTcGVjaWFsIEtleSBDb252ZXJzaW9uIn0NCiAgICByZXR1cm4gJENvbnZlcnQNCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc3RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzdGhydSkge3JldHVybiAkU3RhdH0NCn0KClNldC1BbGlhcyA/OiBJbnZva2UtVGVybmFyeQ==")))
# ========================================END=OF=COMPILER===========================================================|
$Win = @{"Height"=([Console]::WindowHeight-2);"Width"=[Console]::WindowWidth}
$Bkp = @{
    "Title" = [Console]::Title
    "BkCol" = [Console]::BackgroundColor}
$Colors = @{
    "Pipe" = "DarkGreen"
    "Bird" = "Yellow"
    "Wall" = "DarkRed"}
$Widths = @{
    "Pipe" = @{"W"=9;"H"=6}
    "Distance" = 24}
$Jump = @(3,2,1,0,0,-1,-1,-2,-2,-2,-2,-3,-4,-4,-5,-6)
$Game = @{
    "Sleep"=75
    "Y"=@{}
    "Rect"=New-Object System.Management.Automation.Host.Rectangle
    "Line"=@()}
$Pipe=@{
    "Body"=@{
        "Rect"=New-Object System.Management.Automation.Host.Rectangle
        "Fill"=New-Object System.Management.Automation.Host.BufferCell}
    "Cap"=@{"Rect"=New-Object System.Management.Automation.Host.Rectangle}
    "GAP"=@{
        "Rect"=New-Object System.Management.Automation.Host.Rectangle
        "Fill"=New-Object System.Management.Automation.Host.BufferCell}
    "Fill"=@{
        "E"=New-Object System.Management.Automation.Host.BufferCell
        "L"=New-Object System.Management.Automation.Host.BufferCell
        "R"=New-Object System.Management.Automation.Host.BufferCell}
    "Slice"=@{"Rect"=New-Object System.Management.Automation.Host.Rectangle}
}
$Bird = @{
    "Points"=0
    "Pos"= New-Object System.Management.Automation.Host.Coordinates ($Win.width*.05),($Win.Height/2)
    "O"= New-Object System.Management.Automation.Host.Coordinates ($Win.width*.05),1
    "JumpIndex"=1}
$Maps=@{
    "Space"=" "
    "Bird"="♥"
    "Wall"="█"
    "RPipe"="▌"
    "LPipe"="▐"}
$BkCol = "Black"#[Console]::BackgroundColor
$GC = @{
    "Colors" = @{
        "Main"="DarkGreen"
        "Bck"="Red"
        "Score"="DarkGreen"}
    "ScoreBoard"=New-Object System.Management.Automation.Host.Rectangle
    "CleanSlate"=New-Object System.Management.Automation.Host.BufferCell}
# -------------
$Tail = ?:($Trail){"."}{" "}
$GameStart = [int]($Win.Width*.3);[int]$Lev = $GameStart-.25*$Widths.Distance
$Wall=$WFill=@()
[Console]::BackgroundColor = $BkCol
[Console]::Title = "Flappy Shell By APoorv Verma [AP]"
# -------------
function Init-Board {
    $cs = $GC.Colors;$h=$Win.Height-1;$w=$Win.Width-2
    $GC.ScoreBoard.Left++;$GC.ScoreBoard.Right=$w
    $GC.CleanSlate.BackgroundColor = $cs.Bck;$GC.CleanSlate.ForegroundColor = $cs.Main;$GC.CleanSlate.Character = " "
    0..3 | % {
        $Script:Wall  += New-Object System.Management.Automation.Host.Rectangle
        $Script:WFill += New-Object System.Management.Automation.Host.BufferCell
        if ($_%2 -eq 0) {$Wall[$_].Bottom = $h} else {$Wall[$_].Left++;$Wall[$_].Right = $Win.Width-2}
    }
    "Left","Right" | % {$Wall[2].$_   = $w+1}
    "Top","Bottom" | % {$Wall[3].$_   = $h}
    "Top","Bottom" | % {$GC.ScoreBoard.$_= $h+1}
    0,2 | % {$WFill[$_].Character = "█"} #475
    $WFill[1].Character = "▀"
    $WFill[3].Character = "▄"
    0..3 | % {$WFill[$_].ForegroundColor = $Colors.Wall;$WFill[$_].BackgroundColor = $BkCol}
    # -------------
    $Pipe.Body.Rect.Top=$Pipe.Slice.Rect.Top=1;$Pipe.Body.Rect.Bottom=$Pipe.Slice.Rect.Bottom=$h-1
    $Pipe.Body.Fill.Character=$Maps.Wall
    $Pipe.Fill.E.Character=" ";$Pipe.Fill.L.Character=$Maps.LPipe;$Pipe.Fill.R.Character=$Maps.RPipe
    $Pipe.Fill.L.ForegroundColor=$Pipe.Fill.R.ForegroundColor=$Pipe.Body.Fill.ForegroundColor=$Colors.Pipe
    # -------------
    $Script:Game.Line = 1..$w | % {@{"Char"=" ";"Y"=0}}
    $j=$True;foreach ($i in 0..($w-1)) {
        if ($i%$Widths.Distance -ge $Widths.Pipe.W) {$j=$true;continue}
        $Game.Line[$i].Char = $Maps.Wall
        $Game.Line[$i].Y = ?:($j){Get-Random -min 2 -max ($h-1-$Widths.Pipe.H)}{$Game.Line[$i-1].Y}
        $j=$false
    }
    $Game.Rect.Left=$Game.Rect.Top++;
    $Game.Rect.Right=$w;$Game.Rect.Bottom=$h-1
    $Game.FSlice = New-Object "System.Management.Automation.Host.Rectangle" 1,1,1,($h-1)
    $Game.SSlice = "2,1,$($w-1),$($h-1),1,1"
    $Game.ESlice = New-Object System.Management.Automation.Host.Coordinates $w,1
    [Console]::CursorVisible = $False;cls
}
# -------------
function Game-Console ([String]$Text = "Flappy Shell By APoorv Verma") {
    $SB = $GC.ScoreBoard;
    [Console]::CursorTop  = $SB.Top
    [Console]::CursorLeft = $SB.Left
    $Host.UI.RawUI.SetBufferContents($SB,$GC.CleanSlate)
    $Score = " SCORE : $($Bird.Points)"
    $Area = $SB.Right-$SB.Left+$Score.Length
    if ($Text.length -gt $Area) {$Text = $Text.substring(0,$Area-3)+"..."}
    Write-Host -NoNewLine -f $GC.Colors.Score -b $GC.Colors.Bck (Align-Text $Text).substring([Math]::Floor($Score.Length/2))
    Place-Aligned-Text -NNL $Maps.Wall -Align "Right" -ForeCol $Colors.Wall -BackCol $GC.Colors.Bck -offset (-$Score.Length-1)
    Place-Aligned-Text $Score -Align "Right" -ForeCol $GC.Colors.Score -BackCol $GC.Colors.Bck -offset -1
}
function WriteTo-Pos ([string] $str, [int] $x = 0, [int] $y = 0,[ConsoleColor] $bgc = [console]::BackgroundColor,[ConsoleColor] $fgc = [Console]::ForegroundColor) {
    $CTY = [console]::CursorTop
    $WTY = [console]::WindowTop       
    try {[console]::setcursorposition($x,$WTY+$y)
    Write-Host -Object $str -BackgroundColor $bgc -ForegroundColor $fgc -NoNewline} catch {Draw-Walls}
}
function QUIT {
    [Console]::CursorTop       = $Win.height+3
    [Console]::CursorLeft      = 0
    [Console]::CursorVisible   = $true
    [Console]::Title           = $Bkp.Title
    [Console]::BackGroundColor = $Bkp.BkCol
    $Host.UI.RawUI.FlushInputBuffer();exit
}
function Keys-Check {
    while ($Host.UI.RawUI.KeyAvailable) {
        $Store = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeydown,IncludeKeyUp")
        if (!$Store.KeyDown) {Continue}
        If (KeyPressed "q","x","~~Escape~~" $Store) {Game-Console ". . . QUIT Signal . . .";QUIT}
        ElseIf (KeyPressed "~~up~~","~~space~~" $Store) {$Script:Bird.JumpIndex=[int][bool]($Script:Bird.JumpIndex-gt1)}
        ElseIf (KeyPressed "~~right~~" $Store) {$Script:Bird.O.X = $Script:Bird.Pos.X++}
        ElseIf (KeyPressed "~~left~~" $Store)  {$Script:Bird.O.X = $Script:Bird.Pos.X--}
        ElseIf (KeyPressed "-"  $Store) {$Game.Sleep += 2}
        ElseIf (KeyPressed "+"  $Store) {$Game.Sleep -= 2}
        ElseIf (KeyPressed "p"  $Store) {Pause-Screen}
        ElseIf (KeyPressed "123" $Store) {Add-type -as System.windows.forms;Game-Console "Loading Full Screen";cmd /c start /max cmd /k "mode con cols=$([Math]::Ceiling(239/1920*[System.windows.forms.Screen]::PrimaryScreen.Bounds.Width)) lines=$([Math]::Floor(84/1080*[System.windows.forms.Screen]::PrimaryScreen.Bounds.Height)-1)&powershell -ep bypass $PSCommandPath";QUIT}
        ElseIf (KeyPressed "116" $Store) {f5}
    }
}
function Pause-Screen {
    $TargetView = ""
    $BKP = $Host.UI.RawUI.GetBufferContents($ScoreBoard)
    $Host.UI.RawUI.ScrollBufferContents($ScoreBoard,$cds, $rt, $SBFiller)
    $Host.UI.RawUI.FlushInputBuffer()
}
function Draw-Walls {
    0..3 | % {$Host.UI.RawUI.SetBufferContents($Wall[$_],$WFill[$_])}
    $OWall = $Wall[0,2,3]
    "Top","Bottom" | % {$prp = $_;0..2 | % {$OWall[$_].$prp += 2}}
    0..2 | % {$Host.UI.RawUI.SetBufferContents($OWall[$_],$WFill[(?:($_ -eq 2){0}{0})])}
    "Top","Bottom" | % {$prp = $_;0..2 | % {$OWall[$_].$prp -= 2}}
}
function Transform-Bird {$J = $(if($Jump[$Bird.JumpIndex]-eq$null){$Jump[-1]}else{$Jump[$Bird.JumpIndex++]});$Bird.Pos.Y = ($Bird.O.Y = $Bird.Pos.Y) - $J}
function Transform-Grid {$a,$Script:Game.Line = $Script:Game.Line;$Script:Game.Line+=$a}
function Ready-Steady-Po {
    Game-Console ". . . READY . . ."
    Draw-Bird
    Start-sleep -s 1
    Game-Console ". . . STEADY . . ."
    Start-sleep -s 1
    Game-Console ". . . ! GO ! . . ."
}
function f5 {
    $OP = ?:([console]::WindowHeight -gt 3){-1}{1}
    [console]::WindowHeight += $OP
    [console]::WindowHeight -= $OP
}
function Draw-Bird {
    WriteTo-Pos $Maps.Bird -y $Bird.Pos.Y -x $Bird.Pos.X -fgc $Colors.Bird
    WriteTo-Pos $Tail -y $Bird.O.Y -x ($Bird.Pos.X-1) -fgc $Colors.Bird
}
function Draw-Pipes {#$GameStart -lt 0 -and 
    $last = -100;$g = $GameStart
#    $Host.UI.RawUI.SetBufferContents($Game.Rect,$Pipe.Fill.E)
    0..($Game.Line.Length-1) | ? {$g-- -lt 0 -and $Game.Line[$_].Char -ne " " -and ($_-$last-$Widths.Pipe.W) -ge 0} | % {$last=$_
        $Pipe.Body.Rect.Left = ($Pipe.GAP.Rect.Left=$Pipe.cap.Rect.Left=$Pipe.Slice.Rect.Right=$Pipe.Slice.Rect.Left=$_+1)+1
        $Host.UI.RawUI.SetBufferContents($Pipe.Slice.Rect,$Pipe.Fill.L)
        $Pipe.Body.Rect.Right = ($Pipe.GAP.Rect.Right=$Pipe.cap.Rect.Right=$Pipe.Slice.Rect.Right=$Pipe.Slice.Rect.Left=$_+$Widths.Pipe.W)-1
        $Host.UI.RawUI.SetBufferContents($Pipe.Slice.Rect,$Pipe.Fill.R)
        $Host.UI.RawUI.SetBufferContents($Pipe.Body.Rect,$Pipe.Body.Fill)
        $Pipe.Slice.Rect.Left=++$Pipe.Slice.Rect.Right
        $Host.UI.RawUI.SetBufferContents($Pipe.Slice.Rect,$Pipe.Fill.E)
        $Pipe.GAP.Rect.Top=($Pipe.Cap.Rect.Bottom=$Pipe.Cap.Rect.Top=$Game.Line[$_].Y)+1
        $Host.UI.RawUI.SetBufferContents($Pipe.Cap.Rect,$Pipe.Body.Fill)
        $Pipe.GAP.Rect.Bottom=($Pipe.Cap.Rect.Bottom=$Pipe.Cap.Rect.Top=$Game.Line[$_].Y+$Widths.Pipe.H+1)-1
        $Host.UI.RawUI.SetBufferContents($Pipe.Cap.Rect,$Pipe.Body.Fill)
        $Host.UI.RawUI.SetBufferContents($Pipe.GAP.Rect,$Pipe.Fill.E)
    }
}
function Draw-Pipess {
    $Buffer = $host.ui.rawui.GetBufferContents($Game.FSlice)
    iex "[Console]::MoveBufferArea($($Game.SSlice))"
    $Host.UI.RawUI.SetBufferContents($Game.ESlice,$Buffer)
}
Init-Board
Game-Console
Draw-Walls
Draw-Pipes
Draw-Bird
Ready-Steady-Po
while ($true) {
    Transform-Grid
    Transform-Bird
    if (-$GameStart+30 -eq $Lev) {$Host.UI.RawUI.SetBufferContents($Game.Rect,$Pipe.Fill.E);Draw-Pipes} else {Draw-Pipess}
    Draw-Bird
    Keys-Check
    If ($GameStart-- -lt 0 -and $Game.Line[$Bird.Pos.X-1].Char -eq $Maps.Wall) {
        $BP = $Bird.Pos.Y-$Game.Line[$Bird.Pos.X-1].Y
        If ($BP -le $Widths.Pipe.H -and $BP -gt 0) {
            $Bird.Points++
            Game-Console
        } else {
            Game-Console "Birdie bumped its head to a pipe, You Lost!"
            QUIT
        }
    } elseIf ($Bird.Pos.Y -ge ($Win.Height-2) -or $Bird.Pos.Y -lt 1) {Game-Console "Birdie hit the walls, You Lost!";QUIT}
    start-sleep -m $Game.Sleep
}
