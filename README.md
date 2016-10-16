# Flappy Shell
> Flappy Bird for PowerShell!! Now you can bring your guilty pleasure game right into your shell!

## Screenshots
>
#### Sample Flight:
![image](https://cloud.githubusercontent.com/assets/5303018/19415444/6ab1c866-933e-11e6-8be5-b89638c79dfe.png)

## Usage
>
```PowerShell
.\Flappy-Shell.ps1 [-Trail]
```
- Will draw a game to match the dimensions of the console window
- `Trail` mode is for debugging to see where the bird has been throughout the duration of the game
- *__Note__: If you've never run PowerShell Scripts before refer to __Setup PowerShell Section__ Below*

## Features
>
- Color Scheming
- Level Making
- High Score
- Obstruction Creation
- Game-Console and Score count
- Attempting Multi-Threaded Model!
- Restore Console Properties upon Close

## Commands
> 
Key Code         | Usage 
---------------- | -----
`q`,`x`,`ESC`    | Quit Game
`↑`,`W`,`num8`   | Flap Wings
`←`,`A`,`num4`   | Move Left [**Cheat Code**]
`→`,`D`,`num6`   | Move Right [**Cheat Code**]
`f12`            | Full Screen
`f5`             | Refresh view [*fast*]

## Set Up PowerShell [If you've never run a script in PowerShell]
> - Open PowerShell with Admin Access
- Run `Set-ExecutionPolicy Bypass`
- This allows scripts to be run in PowerShell
- cd to the *Folder* where you downloaded/cloned [Flappy-Shell.ps1](Flappy-Shell.ps1)
- `./Flappy-Shell.ps1`*`<arguments>`*

