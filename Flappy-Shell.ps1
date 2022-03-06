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
#>
param([Switch]$Trail)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.3] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5VHJhbnNsYXRlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kS2V5KQ0KDQogICAgJEhhc2hLZXkgPSBAew0KICAgICAgICAifn5DdHJsQ35+Ij02Nw0KICAgICAgICAifn5TcGFjZX5+Ij0zMg0KICAgICAgICAifn5FU0NBUEV+fiI9MjcNCiAgICAgICAgIn5+RW50ZXJ+fiI9MTMNCiAgICAgICAgIn5+U2hpZnR+fiI9MTYNCiAgICAgICAgIn5+Q29udHJvbH5+Ij0xNw0KICAgICAgICAifn5BbHR+fiI9MTgNCiAgICAgICAgIn5+QmFja1NwYWNlfn4iPTgNCiAgICAgICAgIn5+RGVsZXRlfn4iPTQ2DQogICAgICAgICJ+fmYxfn4iPTExMg0KICAgICAgICAifn5mMn5+Ij0xMTMNCiAgICAgICAgIn5+ZjN+fiI9MTE0DQogICAgICAgICJ+fmY0fn4iPTExNQ0KICAgICAgICAifn5mNX5+Ij0xMTYNCiAgICAgICAgIn5+ZjZ+fiI9MTE3DQogICAgICAgICJ+fmY3fn4iPTExOA0KICAgICAgICAifn5mOH5+Ij0xMTkNCiAgICAgICAgIn5+Zjl+fiI9MTIwDQogICAgICAgICJ+fmYxMH5+Ij0xMjENCiAgICAgICAgIn5+ZjExfn4iPTEyMg0KICAgICAgICAifn5mMTJ+fiI9MTIzDQogICAgICAgICJ+fk11dGV+fiI9MTczDQogICAgICAgICJ+fkluc2VydH5+Ij00NQ0KICAgICAgICAifn5QYWdlVXB+fiI9MzMNCiAgICAgICAgIn5+UGFnZURvd25+fiI9MzQNCiAgICAgICAgIn5+RU5Efn4iPTM1DQogICAgICAgICJ+fkhPTUV+fiI9MzYNCiAgICAgICAgIn5+dGFifn4iPTkNCiAgICAgICAgIn5+Q2Fwc0xvY2t+fiI9MjANCiAgICAgICAgIn5+TnVtTG9ja35+Ij0xNDQNCiAgICAgICAgIn5+U2Nyb2xsTG9ja35+Ij0xNDUNCiAgICAgICAgIn5+V2luZG93c35+Ij05MQ0KICAgICAgICAifn5MZWZ0fn4iPTM3DQogICAgICAgICJ+flVwfn4iPTM4DQogICAgICAgICJ+flJpZ2h0fn4iPTM5DQogICAgICAgICJ+fkRvd25+fiI9NDANCiAgICAgICAgIn5+S1Awfn4iPTk2DQogICAgICAgICJ+fktQMX5+Ij05Nw0KICAgICAgICAifn5LUDJ+fiI9OTgNCiAgICAgICAgIn5+S1Azfn4iPTk5DQogICAgICAgICJ+fktQNH5+Ij0xMDANCiAgICAgICAgIn5+S1A1fn4iPTEwMQ0KICAgICAgICAifn5LUDZ+fiI9MTAyDQogICAgICAgICJ+fktQN35+Ij0xMDMNCiAgICAgICAgIn5+S1A4fn4iPTEwNA0KICAgICAgICAifn5LUDl+fiI9MTA1DQogICAgfQ0KICAgIGlmIChbaW50XSRDb252ZXJ0ID0gJEhhc2hLZXkuJEtleSkge3JldHVybiAkQ29udmVydH0NCiAgICBUaHJvdyAiSW52YWxpZCBTcGVjaWFsIEtleSBDb252ZXJzaW9uIg0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIFBsYWNlLUFsaWduZWQtVGV4dCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0NlbnRlcicsIFtBbGlhcygiZiIpXVtTeXN0ZW0uQ29uc29sZUNvbG9yXSRGb3JlQ29sPVtDb25zb2xlXTo6Rm9yZUdyb3VuZENvbG9yLCBbQWxpYXMoImIiKV1bU3lzdGVtLkNvbnNvbGVDb2xvcl0kQmFja0NvbD1bQ29uc29sZV06OkJhY2tHcm91bmRDb2xvciwgW2ludF0kT2Zmc2V0PTAsIFtBbGlhcygiTk5MIildW1N3aXRjaF0kTm9OZXdMaW5lKQ0KDQogICAgJFNwYWNlcz0gIiAiKigkVGV4dC5sZW5ndGgtJHRleHQudHJpbVN0YXJ0KCkubGVuZ3RoKQ0KICAgICRUZXh0ICA9IEFsaWduLVRleHQgJFRleHQgJEFsaWduDQogICAgJEZpbmFsID0gJFNwYWNlcyskVGV4dC50cmltU3RhcnQoKQ0KICAgICRDb3VudCA9ICRUZXh0Lkxlbmd0aC0kVGV4dC5UcmltU3RhcnQoKS5MZW5ndGgtJFNwYWNlcy5sZW5ndGgrJE9mZnNldA0KICAgIFtDb25zb2xlXTo6Q3Vyc29yTGVmdCA9ICRDb3VudA0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokTm9OZXdMaW5lIC1mICRGb3JlQ29sIC1iICRCYWNrQ29sICRGaW5hbA0KfQoKZnVuY3Rpb24gS2V5UHJlc3NlZCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kS2V5LCAkU3RvcmU9Il5eXiIpDQoNCiAgICBpZiAoJFN0b3JlIC1lcSAiXl5eIiAtYW5kICRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKX0gZWxzZSB7aWYgKCRTdG9yZSAtZXEgIl5eXiIpIHtyZXR1cm4gJEZhbHNlfX0NCiAgICAkQW5zID0gJEZhbHNlDQogICAgJEtleSB8ICUgew0KICAgICAgICAkU09VUkNFID0gJF8NCiAgICAgICAgdHJ5IHsNCiAgICAgICAgICAgICRBbnMgPSAkQW5zIC1vciAoS2V5UHJlc3NlZENvZGUgJFNPVVJDRSAkU3RvcmUpDQogICAgICAgIH0gY2F0Y2ggew0KICAgICAgICAgICAgRm9yZWFjaCAoJEsgaW4gJFNPVVJDRSkgew0KICAgICAgICAgICAgICAgIFtTdHJpbmddJEsgPSAkSw0KICAgICAgICAgICAgICAgIGlmICgkSy5sZW5ndGggLWd0IDQgLWFuZCAoJEtbMCwxLC0xLC0yXSAtam9pbigiIikpIC1lcSAifn5+fiIpIHsNCiAgICAgICAgICAgICAgICAgICAgJEFucyA9ICRBTlMgLW9yIChLZXlQcmVzc2VkQ29kZSAoS2V5VHJhbnNsYXRlKCRLKSkgJFN0b3JlKQ0KICAgICAgICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgICAgICRBbnMgPSAkQU5TIC1vciAoJEsuY2hhcnMoMCkgLWluICRTdG9yZS5DaGFyYWN0ZXIpDQogICAgICAgICAgICAgICAgfQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KICAgIHJldHVybiAkQW5zDQp9CgpmdW5jdGlvbiBBbGlnbi1UZXh0IHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ1tdXSRUZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdDZW50ZXInKQ0KDQogICAgaWYgKCRUZXh0LmNvdW50IC1ndCAxKSB7DQogICAgICAgICRhbnMgPSBAKCkNCiAgICAgICAgZm9yZWFjaCAoJGxuIGluICRUZXh0KSB7JEFucyArPSBBbGlnbi1UZXh0ICRsbiAkQWxpZ259DQogICAgICAgIHJldHVybiAoJGFucykNCiAgICB9IGVsc2Ugew0KICAgICAgICAkV2luU2l6ZSA9IFtjb25zb2xlXTo6QnVmZmVyV2lkdGgNCiAgICAgICAgaWYgKCgiIiskVGV4dCkuTGVuZ3RoIC1nZSAkV2luU2l6ZSkgew0KICAgICAgICAgICAgJEFwcGVuZGVyID0gQCgiIik7DQogICAgICAgICAgICAkaiA9IDANCiAgICAgICAgICAgIGZvcmVhY2ggKCRwIGluIDAuLigoIiIrJFRleHQpLkxlbmd0aC0xKSl7DQogICAgICAgICAgICAgICAgaWYgKCgkcCsxKSUkd2luc2l6ZSAtZXEgMCkgeyRqKys7JEFwcGVuZGVyICs9ICIifQ0KICAgICAgICAgICAgICAgICMgIiIrJGorIiAtICIrJHANCiAgICAgICAgICAgICAgICAkQXBwZW5kZXJbJGpdICs9ICRUZXh0LmNoYXJzKCRwKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgcmV0dXJuIChBbGlnbi1UZXh0ICRBcHBlbmRlciAkQWxpZ24pDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBpZiAoJEFsaWduIC1lcSAiQ2VudGVyIikgew0KICAgICAgICAgICAgICAgIHJldHVybiAoIiAiKlttYXRoXTo6dHJ1bmNhdGUoKCRXaW5TaXplLSgiIiskVGV4dCkuTGVuZ3RoKS8yKSskVGV4dCkNCiAgICAgICAgICAgIH0gZWxzZWlmICgkQWxpZ24gLWVxICJSaWdodCIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCIgIiooJFdpblNpemUtKCIiKyRUZXh0KS5MZW5ndGgtMSkrJFRleHQpDQogICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgIHJldHVybiAoJFRleHQpDQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQp9CgpmdW5jdGlvbiBLZXlQcmVzc2VkQ29kZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtJbnRdJEtleSwgJFN0b3JlPSJeXl4iKQ0KDQogICAgaWYgKCEkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUgLWFuZCAkU3RvcmUgLWVxICJeXl4iKSB7UmV0dXJuICRGYWxzZX0NCiAgICBpZiAoJFN0b3JlIC1lcSAiXl5eIikgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKX0NCiAgICByZXR1cm4gKCRLZXkgLWluICRTdG9yZS5WaXJ0dWFsS2V5Q29kZSkNCn0KClNldC1BbGlhcyA/OiBJbnZva2UtVGVybmFyeQ==")))
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
    "O"= @{"Shift"=($Win.width*.05);"Y"=1}
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
        ElseIf (KeyPressed "~~right~~" $Store) {$Script:Bird.Pos.X+=++$Script:Bird.O.Shift}
        ElseIf (KeyPressed "~~left~~" $Store)  {$Script:Bird.Pos.X+=--$Script:Bird.O.Shift}
        ElseIf (KeyPressed "-"  $Store) {$Game.Sleep += 2}
        ElseIf (KeyPressed "+"  $Store) {$Game.Sleep -= 2}
        ElseIf (KeyPressed "p"  $Store) {Pause-Screen}
        ElseIf (KeyPressed "123" $Store) {Add-type -as System.windows.forms;$x=[System.windows.forms.Screen]::PrimaryScreen.WorkingArea;Game-Console "Loading Full Screen";cmd /c start /max cmd /k "mode con cols=$([Math]::Ceiling(239/1920*$x.Width)) lines=$([Math]::Ceiling(84/1055*$x.Height))&powershell -ep bypass $PSCommandPath";QUIT}
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
    WriteTo-Pos $Tail -y $Bird.O.Y -x ($Bird.Pos.X-$Bird.O.Shift-1) -fgc $Colors.Bird
    $Bird.O.Shift = 0
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
    Transform-Grid;Transform-Bird
    if ($GameStart -eq 0) {$Game.Rect.Left++;$Host.UI.RawUI.SetBufferContents($Game.Rect,$Pipe.Fill.E);Draw-Pipes} else {Draw-Pipess}
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
