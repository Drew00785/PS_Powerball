Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$winnings = 0
$script:count = 20
$script:totalPlays = 0
$script:stopSimulation = $false

function Main {
	Show-MainForm
}

function AddCounter {
	$script:count += 20
}

function ApplyUnderline {
	$RTB.SelectionFont = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold.value__ -bor [System.Drawing.FontStyle]::Underline.value__))
}

function Format-MatchingNumbers {
	param(
		[array]$winningNumbers,
		[array]$drawNumbers
	)

	$formattedNumbers = @()
	$regularWinningNumbers = $winningNumbers[0..4]
	$powerBallWinningNumber = $winningNumbers[5]

	for ($i = 0; $i -lt 5; $i++) {
		$drawNumber = $drawNumbers[$i]
		if ($regularWinningNumbers -contains $drawNumber) {
			$RTB.SelectionColor = 'Green'
			ApplyUnderline
			$RTB.AppendText($drawNumber)
			$RTB.SelectionColor = 'Black'
			$RTB.SelectionFont = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
			$RTB.AppendText(' ')
		} else {
			$RTB.SelectionFont = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
			$RTB.AppendText($drawNumber + ' ')
		}
	}

	$drawPowerBallNumber = $drawNumbers[5]
	if ($drawPowerBallNumber -eq $powerBallWinningNumber) {
		$RTB.SelectionColor = 'Green'
		ApplyUnderline
		$RTB.AppendText($drawPowerBallNumber)
		$RTB.SelectionColor = 'Black'
		$RTB.SelectionFont = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
		$RTB.AppendText(' ')
	} else {
		$RTB.AppendText($drawPowerBallNumber)
	}
}

function Generate-PowerBallNumbers {
	@(Get-Random -Count 5 -InputObject (1..69) | ForEach-Object { $_.ToString("00") } | Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | ForEach-Object { $_.ToString("00") })
}

$numberOfDraws = 10
$drawsArray = @()

for ($i = 0; $i -lt $numberOfDraws; $i++) {
	$drawsArray +=,@(Generate-PowerBallNumbers)
}

$Draw1_Array = $drawsArray[0]
$Draw2_Array = $drawsArray[1]
$Draw3_Array = $drawsArray[2]
$Draw4_Array = $drawsArray[3]
$Draw5_Array = $drawsArray[4]
$Draw6_Array = $drawsArray[5]
$Draw7_Array = $drawsArray[6]
$Draw8_Array = $drawsArray[7]
$Draw9_Array = $drawsArray[8]
$Draw10_Array = $drawsArray[9]

function Update-WinningNumbersAndAmount {
    $script:totalPlays++
	$Win_Array = Generate-PowerBallNumbers
	$RTB.Clear()
	$RTB.SelectionFont = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
	$RTB.AppendText("Winning Numbers: " + ($Win_Array -join ' '))
	$RTB.AppendText("`r`n")
	$RTB.AppendText("`r`n")

	for ($i = 0; $i -lt $numberOfDraws; $i++) {
		$drawsArray[$i] = Generate-PowerBallNumbers
		$whiteBallMatches = @(Compare-Object $Win_Array[0..4] $drawsArray[$i][0..4] -IncludeEqual -ExcludeDifferent).Count
		$powerBallMatch = $Win_Array[5] -eq $drawsArray[$i][5]
		$RTB.SelectionColor = "Black"
		
        $RTB.AppendText("Draw {0:D2}: " -f ($i + 1))

		Format-MatchingNumbers -winningNumbers $Win_Array -drawNumbers $drawsArray[$i]
		$displayResult = ""
		switch ($whiteBallMatches) {
			0 {
				if ($powerBallMatch) {
					$displayResult = "`$4 WINNER - Powerball Matched"
					$script:winnings += 4
				} else {
					$displayResult = "LOSER - 0 White Balls Matched"
				}
			}
			1 {
				if ($powerBallMatch) {
					$displayResult = "`$4 WINNER - 1 White Ball + PB"
					$script:winnings += 4
				} else {
					$displayResult = "LOSER - 1 White Ball Matched"
				}
			}
			2 {
				if ($powerBallMatch) {
					$displayResult = "`$7 WINNER - 2 White Balls + PB"
					$script:winnings += 7
				} else {
					$displayResult = "LOSER - 2 White Balls"
				}
			}
			3 {
				if ($powerBallMatch) {
					$displayResult = "`$100 WINNER - 3 White Balls + PB"
					$script:winnings += 100
				} else {
					$displayResult = "`$7 WINNER - 3 White Balls"
					$script:winnings += 7
				}
			}
			4 {
				if ($powerBallMatch) {
					$displayResult = "`$50,000 WINNER - 4 White Balls + PB"
					$script:winnings += 50000
				} else {
					$displayResult = "`$100 WINNER - 4 White Balls"
					$script:winnings += 100
				}
			}
			5 {
				if ($powerBallMatch) {
					$displayResult = "JACKPOT WINNER"
					$script:winnings += 5000000
				} else {
					$displayResult = "`$1,000,000 WINNER - 5 White Balls"
					$script:winnings += 1000000
				}
			}
		}
		if ($displayResult.Contains("LOSER")) {
			$RTB.SelectionColor = 'Red'
		} elseif ($displayResult.Contains("WINNER")) {
			$RTB.SelectionColor = 'Green'
		}
		$RTB.AppendText(" - " + $displayResult)
		$RTB.SelectionColor = 'Black'
		$RTB.AppendText("`r`n")
	}
    $RTB.AppendText("`r`n")
    $RTB.AppendText("Spent = $" + $count.ToString("N0") + "      Won = $" + $winnings.ToString("N0"))
    $RTB.AppendText("`r`n")
    $ROI = (($winnings - $count) / $count) * 100
    $RTB.AppendText("              ROI = " + "{0:N2}" -f $ROI + "%")
    $RTB.AppendText("`r`n")
    $PositiveROI = 100 + $ROI
    $RTB.AppendText("Positive ROI = " + "{0:N2}" -f $PositiveROI + "%")
    $RTB.AppendText("`r`n")
    $RTB.AppendText("Total Plays: " + $totalPlays)
}

function Show-MainForm {

    $primaryScreen = [System.Windows.Forms.Screen]::PrimaryScreen
    $screenWidth = $primaryScreen.WorkingArea.Width
    $screenHeight = $primaryScreen.WorkingArea.Height

    $scaleFactorWidth = $screenWidth / 1920  # Assuming 1920x1080 as base resolution
    $scaleFactorHeight = $screenHeight / 1080
    $scaleFactorFont = ($scaleFactorWidth + $scaleFactorHeight) / 2

    $Form = New-Object System.Windows.Forms.Form
    $Form.Size = New-Object System.Drawing.Size ([int](1000 * $scaleFactorWidth), [int](800 * $scaleFactorHeight))
    $Form.text = "Lottery Simulator"

    $RTB = New-Object System.Windows.Forms.RichTextBox
    $RTB.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif", [int](15 * $scaleFactorFont), [System.Drawing.FontStyle]::Bold)
    $RTB.Location = New-Object System.Drawing.Size ([int](20 * $scaleFactorWidth), [int](20 * $scaleFactorHeight))
    $RTB.Size = New-Object System.Drawing.Size ([int](900 * $scaleFactorWidth), [int](500 * $scaleFactorHeight))
    $RTB.MultiLine = $True
    $RTB.ScrollBars = "Vertical"

    $PlayButton = New-Object System.Windows.Forms.Button
    $PlayButton.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif", [int](15 * $scaleFactorFont), [System.Drawing.FontStyle]::Bold)
    $PlayButton.Location = New-Object System.Drawing.Size ([int](20 * $scaleFactorWidth), [int](600 * $scaleFactorHeight))
    $PlayButton.Size = New-Object System.Drawing.Size ([int](150 * $scaleFactorWidth), [int](80 * $scaleFactorHeight))
    $PlayButton.text = "Play"
    $PlayButton.Add_Click({
        Update-WinningNumbersAndAmount
        AddCounter
    })

    $PlayUntilJackpotButton = New-Object System.Windows.Forms.Button
    $PlayUntilJackpotButton.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif", [int](10 * $scaleFactorFont), [System.Drawing.FontStyle]::Bold)
    $PlayUntilJackpotButton.Location = New-Object System.Drawing.Size ([int](200 * $scaleFactorWidth), [int](600 * $scaleFactorHeight))
    $PlayUntilJackpotButton.Size = New-Object System.Drawing.Size ([int](300 * $scaleFactorWidth), [int](80 * $scaleFactorHeight))
    $PlayUntilJackpotButton.text = "Play Until Jackpot or Million"
    $PlayUntilJackpotButton.Add_Click({ PlayUntilJackpotOrMillion })

    $PlayCountLabel = New-Object System.Windows.Forms.Label
	$PlayCountLabel.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
    $PlayCountLabel.Location = New-Object System.Drawing.Size(450,1050)
    $PlayCountLabel.Size = New-Object System.Drawing.Size(300,80)
    $PlayCountLabel.Text = "Total Plays: 0"

	$ElapsedTimeLabel = New-Object System.Windows.Forms.Label
	$ElapsedTimeLabel.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
	$ElapsedTimeLabel.Location = New-Object System.Drawing.Size (20,550)
	$ElapsedTimeLabel.Size = New-Object System.Drawing.Size (350,80)
	$ElapsedTimeLabel.text = "Elapsed Time: 00:00:00"

	$simulationTimer = New-Object System.Windows.Forms.Timer
	# 1 Second Interval
	#$simulationTimer.Interval = 1000
	# Half Second Interval
	#$simulationTimer.Interval = 500
	# Quarter Second Interval
	$simulationTimer.Interval = 250

	$stopWatch = New-Object System.Diagnostics.Stopwatch

	function PlayUntilJackpotOrMillion {
		$script:stopSimulation = $false
		$stopWatch.Start()
		$simulationTimer.Start()
	}
	$simulationTimer.Add_Tick({
			if ($script:stopSimulation) {
				$simulationTimer.Stop()
				$stopWatch.Stop()
			} else {
				Update-WinningNumbersAndAmount
				AddCounter
				$ElapsedTimeLabel.text = "Elapsed Time: " + $stopWatch.Elapsed.ToString("hh\:mm\:ss")

				if ($displayResult -eq "JACKPOT WINNER" -or $displayResult -eq "`$1,000,000 WINNER - 5 White Balls") {
					$simulationTimer.Stop()
					$stopWatch.Stop()
				}
			}
		})

    $StopButton = New-Object System.Windows.Forms.Button
    $StopButton.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif", [int](15 * $scaleFactorFont), [System.Drawing.FontStyle]::Bold)
    $StopButton.Location = New-Object System.Drawing.Size ([int](600 * $scaleFactorWidth), [int](600 * $scaleFactorHeight))
    $StopButton.Size = New-Object System.Drawing.Size ([int](150 * $scaleFactorWidth), [int](80 * $scaleFactorHeight))
    $StopButton.text = "Stop"
	$StopButton.Add_Click({ $script:stopSimulation = $true })

    $CloseButton = New-Object System.Windows.Forms.Button
    $CloseButton.Font = New-Object System.Drawing.Font ("Microsoft Sans Serif", [int](15 * $scaleFactorFont), [System.Drawing.FontStyle]::Bold)
    $CloseButton.Location = New-Object System.Drawing.Size ([int](750 * $scaleFactorWidth), [int](600 * $scaleFactorHeight))
    $CloseButton.Size = New-Object System.Drawing.Size ([int](150 * $scaleFactorWidth), [int](80 * $scaleFactorHeight))
    $CloseButton.text = "Close"
	$CloseButton.Add_Click({ $Form.Close() })

	$Form.Controls.AddRange(@($RTB,$Label,$PlayButton,$CloseButton,$PlayUntilJackpotButton,$PlayCountLabel,$ElapsedTimeLabel,$StopButton))
	Update-WinningNumbersAndAmount
	AddCounter
	$Form.ShowDialog()
	$Form.Add_FormClosing({ $script:stopSimulation = $true })
}

Show-MainForm
