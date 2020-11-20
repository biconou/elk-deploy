$now = Get-Date -Format "yyyy_MM_dd"
$fichierOut = "D:\monitoring\data\metrics_$now.csv"

while (1) {
    $now = Get-Date -Format "yyyy-MM-dd:HH:mm:ss"
    $count = (Get-Process lmxt).count
    $cpu_lmxt_processes=(Get-Counter "\Process(lmxt*)\% Processor Time" | select -expand countersamples).cookedvalue
    $sum = 0
    foreach ($number in $cpu_lmxt_processes) { $sum += $number}
    $sum /= 8
    Add-Content -Path $fichierOut -Value "$now $count $sum"

    Start-Sleep 5
}






