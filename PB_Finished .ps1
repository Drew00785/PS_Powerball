#TODO
#Add Powerball background graphics with all same info but randomized excluding the date / time
#Off by one error?? Is that why the count doesn't work on the first click?

#$Image = [system.drawing.image]::FromFile("$PSScriptRoot\script runner.png") 

function Main {
    (Show-MainForm)
}

$winnings = 0
$script:count = 20
Function AddCounter {
$script:count +=20
}

Function GetWinningNumbers {
$WinArray=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($WinArray -notcontains $whiteballs) {
       $WinArray+=$whiteballs
    }
} Until ($WinArray.Count -eq 5) 
$WinningPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw1=@() 
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw1 -notcontains $whiteballs) {
       $Draw1+=$whiteballs
    }
} Until ($Draw1.Count -eq 5)
$1stPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw2=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw2 -notcontains $whiteballs) {
       $Draw2+=$whiteballs
    }
} Until ($Draw2.Count -eq 5) 
$2ndPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw3=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw3 -notcontains $whiteballs) {
       $Draw3+=$whiteballs
    }
} Until ($Draw3.Count -eq 5) 
$3rdPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw4=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw4 -notcontains $whiteballs) {
       $Draw4+=$whiteballs
    }
} Until ($Draw4.Count -eq 5) 
$4thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw5=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw5 -notcontains $whiteballs) {
       $Draw5+=$whiteballs
    }
} Until ($Draw5.Count -eq 5) 
$5thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw6=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw6 -notcontains $whiteballs) {
       $Draw6+=$whiteballs
    }
} Until ($Draw6.Count -eq 5) 
$6thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw7=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw7 -notcontains $whiteballs) {
       $Draw7+=$whiteballs
    }
} Until ($Draw7.Count -eq 5) 
$7thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw8=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw8 -notcontains $whiteballs) {
       $Draw8+=$whiteballs
    }
} Until ($Draw8.Count -eq 5) 
$8thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw9=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw9 -notcontains $whiteballs) {
       $Draw9+=$whiteballs
    }
} Until ($Draw9.Count -eq 5) 
$9thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

$Draw10=@()
do {
    $whiteballs=(Get-Random -Minimum 1 -Maximum 70).ToString("00")
        if ($Draw10 -notcontains $whiteballs) {
       $Draw10+=$whiteballs
    }
} Until ($Draw10.Count -eq 5) 
$10thPB = (Get-Random -Minimum 1 -Maximum 26).ToString("00")

#THIS IS WHAT COMPARES WINNING NUMBERS VS DRAWN
$MatchArray1=@()
$WinArray |
ForEach-Object {
    if($Draw1 -contains $_)
    {
       $MatchArray1+=$_ 
    }
}

$MatchArray2=@()
$WinArray |
ForEach-Object {
    if($Draw2 -contains $_)
    {
       $MatchArray2+=$_  
    }
}

$MatchArray3=@()
$WinArray |
ForEach-Object {
    if($Draw3 -contains $_)
    {
       $MatchArray3+=$_  
    }
}

$MatchArray4=@()
$WinArray |
ForEach-Object {
    if($Draw4 -contains $_)
    {
       $MatchArray4+=$_  
    }
}

$MatchArray5=@()
$WinArray |
ForEach-Object {
    if($Draw5 -contains $_)
    {
       $MatchArray5+=$_  
    }
}

$MatchArray6=@()
$WinArray |
ForEach-Object {
    if($Draw6 -contains $_)
    {
       $MatchArray6+=$_  
    }
}

$MatchArray7=@()
$WinArray |
ForEach-Object {
    if($Draw7 -contains $_)
    {
       $MatchArray7+=$_  
    }
}

$MatchArray8=@()
$WinArray |
ForEach-Object {
    if($Draw8 -contains $_)
    {
       $MatchArray8+=$_  
    }
}

$MatchArray9=@()
$WinArray |
ForEach-Object {
    if($Draw9 -contains $_)
    {
       $MatchArray9+=$_  
    }
}

$MatchArray10=@()
$WinArray |
ForEach-Object {
    if($Draw10 -contains $_)
    {
       $MatchArray10+=$_  
    }
}

    $TextBox.Text = ""

    $TextBox.ForeColor='Black'
    $TextBox.AppendText("Winning Numbers: " + ($WinArray | Sort-Object) + "   " + $WinningPB)
    $TextBox.AppendText("`r`n")
    $TextBox.AppendText("`r`n")

    #1st DRAW SORTED WITH COLOR
    $SortedNumbers1 = ($Draw1) | Sort-Object
    $Value0Match1 = ($MatchArray1 -Contains $SortedNumbers1[0])
    $Value1Match1 = ($MatchArray1 -Contains $SortedNumbers1[1])
    $Value2Match1 = ($MatchArray1 -Contains $SortedNumbers1[2])
    $Value3Match1 = ($MatchArray1 -Contains $SortedNumbers1[3])
    $Value4Match1 = ($MatchArray1 -Contains $SortedNumbers1[4])

    $TextBox.AppendText("              1st Draw: ")

    

    if ($Value0Match1 -eq 1) {
    $TextBox.SelectionColor = "Green"
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($SortedNumbers1[0])    
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers1[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match1 -eq 1) {
    $TextBox.SelectionColor = "Green"
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($SortedNumbers1[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers1[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match1 -eq 1) {
    $TextBox.SelectionColor = "Green" 
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($SortedNumbers1[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers1[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match1 -eq 1) {
    $TextBox.SelectionColor = "Green"
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($SortedNumbers1[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers1[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match1 -eq 1) {
    $TextBox.SelectionColor = "Green"
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($SortedNumbers1[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers1[4])
    $TextBox.AppendText("   ")
    }

    if ($1stPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    
    #$TextBox.SelectAll()
    $TextBox.SelectionFont = $WinFont

    $TextBox.AppendText($1stPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($1stPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray1.Count -eq 0 -and $WinningPB -ne $1stPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray1.Count -eq 0 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray1.Count -eq 1 -and $WinningPB -ne $1stPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray1.Count -eq 1 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray1.Count -eq 2 -and $WinningPB -ne $1stPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray1.Count -eq 2 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray1.Count -eq 3 -and $WinningPB -ne $1stPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray1.Count -eq 3 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray1.Count -eq 4 -and $WinningPB -ne $1stPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray1.Count -eq 4 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray1.Count -eq 5 -and $WinningPB -ne $1stPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray1.Count -eq 5 -and $WinningPB -eq $1stPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #2nd DRAW SORTED WITH COLOR
    $SortedNumbers2 = ($Draw2) | Sort-Object
    $Value0Match2 = ($MatchArray2 -Contains $SortedNumbers2[0])
    $Value1Match2 = ($MatchArray2 -Contains $SortedNumbers2[1])
    $Value2Match2 = ($MatchArray2 -Contains $SortedNumbers2[2])
    $Value3Match2 = ($MatchArray2 -Contains $SortedNumbers2[3])
    $Value4Match2 = ($MatchArray2 -Contains $SortedNumbers2[4])

    $TextBox.AppendText("             2nd Draw: ")
    if ($Value0Match2 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers2[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers2[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match2 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers2[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers2[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match2 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers2[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers2[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match2 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers2[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers2[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match2 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers2[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers2[4])
    $TextBox.AppendText("   ")
    }

    if ($2ndPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($2ndPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($2ndPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray2.Count -eq 0 -and $WinningPB -ne $2ndPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray2.Count -eq 0 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray2.Count -eq 1 -and $WinningPB -ne $2ndPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray2.Count -eq 1 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray2.Count -eq 2 -and $WinningPB -ne $2ndPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray2.Count -eq 2 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray2.Count -eq 3 -and $WinningPB -ne $2ndPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray2.Count -eq 3 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray2.Count -eq 4 -and $WinningPB -ne $2ndPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray2.Count -eq 4 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray2.Count -eq 5 -and $WinningPB -ne $2ndPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray2.Count -eq 5 -and $WinningPB -eq $2ndPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #3rd DRAW SORTED WITH COLOR
    $SortedNumbers3 = ($Draw3) | Sort-Object
    $Value0Match3 = ($MatchArray3 -Contains $SortedNumbers3[0])
    $Value1Match3 = ($MatchArray3 -Contains $SortedNumbers3[1])
    $Value2Match3 = ($MatchArray3 -Contains $SortedNumbers3[2])
    $Value3Match3 = ($MatchArray3 -Contains $SortedNumbers3[3])
    $Value4Match3 = ($MatchArray3 -Contains $SortedNumbers3[4])

    $TextBox.AppendText("              3rd Draw: ")
    if ($Value0Match3 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers3[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers3[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match3 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers3[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers3[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match3 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers3[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers3[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match3 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers3[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers3[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match3 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers3[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers3[4])
    $TextBox.AppendText("   ")
    }

    if ($3rdPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($3rdPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($3rdPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray3.Count -eq 0 -and $WinningPB -ne $3rdPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray3.Count -eq 0 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray3.Count -eq 1 -and $WinningPB -ne $3rdPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray3.Count -eq 1 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray3.Count -eq 2 -and $WinningPB -ne $3rdPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray3.Count -eq 2 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray3.Count -eq 3 -and $WinningPB -ne $3rdPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray3.Count -eq 3 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray3.Count -eq 4 -and $WinningPB -ne $3rdPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray3.Count -eq 4 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray3.Count -eq 5 -and $WinningPB -ne $3rdPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray3.Count -eq 5 -and $WinningPB -eq $3rdPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #4th DRAW SORTED WITH COLOR
    $SortedNumbers4 = ($Draw4) | Sort-Object
    $Value0Match4 = ($MatchArray4 -Contains $SortedNumbers4[0])
    $Value1Match4 = ($MatchArray4 -Contains $SortedNumbers4[1])
    $Value2Match4 = ($MatchArray4 -Contains $SortedNumbers4[2])
    $Value3Match4 = ($MatchArray4 -Contains $SortedNumbers4[3])
    $Value4Match4 = ($MatchArray4 -Contains $SortedNumbers4[4])

    $TextBox.AppendText("              4th Draw: ")
    if ($Value0Match4 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers4[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers4[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match4 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers4[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers4[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match4 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers4[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers4[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match4 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers4[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers4[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match4 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers4[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers4[4])
    $TextBox.AppendText("   ")
    }

    if ($4thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($4thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($4thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray4.Count -eq 0 -and $WinningPB -ne $4thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray4.Count -eq 0 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("`$4 ” + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray4.Count -eq 1 -and $WinningPB -ne $4thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray4.Count -eq 1 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray4.Count -eq 2 -and $WinningPB -ne $4thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray4.Count -eq 2 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray4.Count -eq 3 -and $WinningPB -ne $4thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray4.Count -eq 3 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray4.Count -eq 4 -and $WinningPB -ne $4thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray4.Count -eq 4 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray4.Count -eq 5 -and $WinningPB -ne $4thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray4.Count -eq 5 -and $WinningPB -eq $4thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #5th DRAW SORTED WITH COLOR
    $SortedNumbers5 = ($Draw5) | Sort-Object
    $Value0Match5 = ($MatchArray5 -Contains $SortedNumbers5[0])
    $Value1Match5 = ($MatchArray5 -Contains $SortedNumbers5[1])
    $Value2Match5 = ($MatchArray5 -Contains $SortedNumbers5[2])
    $Value3Match5 = ($MatchArray5 -Contains $SortedNumbers5[3])
    $Value4Match5 = ($MatchArray5 -Contains $SortedNumbers5[4])

    $TextBox.AppendText("              5th Draw: ")
    if ($Value0Match5 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers5[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers5[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match5 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers5[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers5[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match5 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers5[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers5[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match5 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers5[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers5[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match5 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers5[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers5[4])
    $TextBox.AppendText("   ")
    }

    if ($5thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($5thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($5thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray5.Count -eq 0 -and $WinningPB -ne $5thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray5.Count -eq 0 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray5.Count -eq 1 -and $WinningPB -ne $5thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray5.Count -eq 1 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray5.Count -eq 2 -and $WinningPB -ne $5thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray4.Count -eq 2 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray4.Count -eq 3 -and $WinningPB -ne $5thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray4.Count -eq 3 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray4.Count -eq 4 -and $WinningPB -ne $5thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray4.Count -eq 4 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray4.Count -eq 5 -and $WinningPB -ne $5thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray4.Count -eq 5 -and $WinningPB -eq $5thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    

    #6th DRAW SORTED WITH COLOR
    $SortedNumbers6 = ($Draw6) | Sort-Object
    $Value0Match6 = ($MatchArray6 -Contains $SortedNumbers6[0])
    $Value1Match6 = ($MatchArray6 -Contains $SortedNumbers6[1])
    $Value2Match6 = ($MatchArray6 -Contains $SortedNumbers6[2])
    $Value3Match6 = ($MatchArray6 -Contains $SortedNumbers6[3])
    $Value4Match6 = ($MatchArray6 -Contains $SortedNumbers6[4])

    $TextBox.AppendText("              6th Draw: ")
    if ($Value0Match6 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers6[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers6[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match6 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers6[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers6[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match6 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers6[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers6[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match6 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers6[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers6[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match6 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers6[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers6[4])
    $TextBox.AppendText("   ")
    }

    if ($6thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($6thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($6thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray6.Count -eq 0 -and $WinningPB -ne $6thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray6.Count -eq 0 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray6.Count -eq 1 -and $WinningPB -ne $6thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray6.Count -eq 1 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray6.Count -eq 2 -and $WinningPB -ne $6thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray6.Count -eq 2 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray6.Count -eq 3 -and $WinningPB -ne $6thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray6.Count -eq 3 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray6.Count -eq 4 -and $WinningPB -ne $6thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray6.Count -eq 4 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray6.Count -eq 5 -and $WinningPB -ne $6thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray6.Count -eq 5 -and $WinningPB -eq $6thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #7th DRAW SORTED WITH COLOR
    $SortedNumbers7 = ($Draw7) | Sort-Object
    $Value0Match7 = ($MatchArray7 -Contains $SortedNumbers7[0])
    $Value1Match7 = ($MatchArray7 -Contains $SortedNumbers7[1])
    $Value2Match7 = ($MatchArray7 -Contains $SortedNumbers7[2])
    $Value3Match7 = ($MatchArray7 -Contains $SortedNumbers7[3])
    $Value4Match7 = ($MatchArray7 -Contains $SortedNumbers7[4])

    $TextBox.AppendText("              7th Draw: ")
    if ($Value0Match7 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers7[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers7[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match7 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers7[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers7[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match7 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers7[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers7[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match7 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers7[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers7[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match7 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers7[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers7[4])
    $TextBox.AppendText("   ")
    }

    if ($7thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($7thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($7thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray7.Count -eq 0 -and $WinningPB -ne $7thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray7.Count -eq 0 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray7.Count -eq 1 -and $WinningPB -ne $7thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray7.Count -eq 1 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray7.Count -eq 2 -and $WinningPB -ne $7thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray7.Count -eq 2 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray7.Count -eq 3 -and $WinningPB -ne $7thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray7.Count -eq 3 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray7.Count -eq 4 -and $WinningPB -ne $7thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray7.Count -eq 4 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray7.Count -eq 5 -and $WinningPB -ne $7thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray7.Count -eq 5 -and $WinningPB -eq $7thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #8th DRAW SORTED WITH COLOR
    $SortedNumbers8 = ($Draw8) | Sort-Object
    $Value0Match8 = ($MatchArray8 -Contains $SortedNumbers8[0])
    $Value1Match8 = ($MatchArray8 -Contains $SortedNumbers8[1])
    $Value2Match8 = ($MatchArray8 -Contains $SortedNumbers8[2])
    $Value3Match8 = ($MatchArray8 -Contains $SortedNumbers8[3])
    $Value4Match8 = ($MatchArray8 -Contains $SortedNumbers8[4])

    $TextBox.AppendText("              8th Draw: ")
    if ($Value0Match8 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers8[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers8[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match8 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers8[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers8[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match8 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers8[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers8[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match8 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers8[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers8[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match8 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers8[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers8[4])
    $TextBox.AppendText("   ")
    }

    if ($8thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($8thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($8thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray8.Count -eq 0 -and $WinningPB -ne $8thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray8.Count -eq 0 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray8.Count -eq 1 -and $WinningPB -ne $8thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray8.Count -eq 1 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray8.Count -eq 2 -and $WinningPB -ne $8thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray8.Count -eq 2 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray8.Count -eq 3 -and $WinningPB -ne $8thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray8.Count -eq 3 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray8.Count -eq 4 -and $WinningPB -ne $8thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray8.Count -eq 4 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray8.Count -eq 5 -and $WinningPB -ne $8thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray8.Count -eq 5 -and $WinningPB -eq $8thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #9th DRAW SORTED WITH COLOR
    $SortedNumbers9 = ($Draw9) | Sort-Object
    $Value0Match9 = ($MatchArray9 -Contains $SortedNumbers9[0])
    $Value1Match9 = ($MatchArray9 -Contains $SortedNumbers9[1])
    $Value2Match9 = ($MatchArray9 -Contains $SortedNumbers9[2])
    $Value3Match9 = ($MatchArray9 -Contains $SortedNumbers9[3])
    $Value4Match9 = ($MatchArray9 -Contains $SortedNumbers9[4])

    $TextBox.AppendText("              9th Draw: ")
    if ($Value0Match9 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers9[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers9[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match9 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers9[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers9[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match9 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers9[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers9[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match9 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers9[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers9[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match9 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers9[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers9[4])
    $TextBox.AppendText("   ")
    }

    if ($9thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($9thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($9thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray9.Count -eq 0 -and $WinningPB -ne $9thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray9.Count -eq 0 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray9.Count -eq 1 -and $WinningPB -ne $9thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray9.Count -eq 1 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray9.Count -eq 2 -and $WinningPB -ne $9thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray9.Count -eq 2 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray9.Count -eq 3 -and $WinningPB -ne $9thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray9.Count -eq 3 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray9.Count -eq 4 -and $WinningPB -ne $9thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray9.Count -eq 4 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray9.Count -eq 5 -and $WinningPB -ne $9thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray9.Count -eq 5 -and $WinningPB -eq $9thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")

    #10th DRAW SORTED WITH COLOR
    $SortedNumbers10 = ($Draw10) | Sort-Object
    $Value0Match10 = ($MatchArray10 -Contains $SortedNumbers10[0])
    $Value1Match10 = ($MatchArray10 -Contains $SortedNumbers10[1])
    $Value2Match10 = ($MatchArray10 -Contains $SortedNumbers10[2])
    $Value3Match10 = ($MatchArray10 -Contains $SortedNumbers10[3])
    $Value4Match10 = ($MatchArray10 -Contains $SortedNumbers10[4])

    $TextBox.AppendText("            10th Draw: ")
    if ($Value0Match10 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers10[0]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers10[0])
    $TextBox.AppendText(" ")
    }

    if ($Value1Match10 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers10[1]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers10[1])
    $TextBox.AppendText(" ")
    }

    if ($Value2Match10 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers10[2]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers10[2])
    $TextBox.AppendText(" ")
    }

    if ($Value3Match10 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers10[3]) 
    $TextBox.AppendText(" ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers10[3])
    $TextBox.AppendText(" ")
    }

    if ($Value4Match10 -eq 1) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($SortedNumbers10[4]) 
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($SortedNumbers10[4])
    $TextBox.AppendText("   ")
    }

    if ($10thPB -eq $WinningPB) {
    $TextBox.SelectionColor = "Green"
    $TextBox.AppendText($10thPB)
    $TextBox.AppendText("   ")
    } else {
    $TextBox.SelectionColor = "Black"
    $TextBox.AppendText($10thPB)
    $TextBox.AppendText("   ")
    }

    $TextBox.SelectionColor = "Black"
    If ($MatchArray10.Count -eq 0 -and $WinningPB -ne $10thPB) { $TextBox.AppendText("LOSER - No Matches")}
    Elseif ($MatchArray10.Count -eq 0 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($MatchArray10.Count -eq 1 -and $WinningPB -ne $10thPB) {$TextBox.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($MatchArray10.Count -eq 1 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($MatchArray10.Count -eq 2 -and $WinningPB -ne $10thPB) {$TextBox.AppendText("LOSER - 2 White Balls")}
    Elseif ($MatchArray10.Count -eq 2 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($MatchArray10.Count -eq 3 -and $WinningPB -ne $10thPB) {$TextBox.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($MatchArray10.Count -eq 3 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($MatchArray10.Count -eq 4 -and $WinningPB -ne $10thPB) {$TextBox.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($MatchArray10.Count -eq 4 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($MatchArray10.Count -eq 5 -and $WinningPB -ne $10thPB) {$TextBox.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($MatchArray10.Count -eq 5 -and $WinningPB -eq $10thPB) {$TextBox.AppendText("JACKPOT WINNER")}
    $TextBox.AppendText("`r`n")


    $TextBox.AppendText("`r`n")
    $TextBox.AppendText("Spent = $" + $count + "      Won = $" + $winnings)

}

function Show-MainForm {
    $MainForm = New-Object 'System.Windows.Forms.Form'
    $TextBox = New-Object 'System.Windows.Forms.RichTextBox'
    $button1 = New-Object 'System.Windows.Forms.Button'
    $button_close = New-Object 'System.Windows.Forms.Button'
    $MainForm.ClientSize = '2000, 1000'
    $MainForm.StartPosition = 'CenterScreen'
    $MainForm.AutoSize = $true
    $MainForm.Text = 'RNG Fun'

    #$MainForm.Opacity = 0.7
    #$MainForm.BackgroundImage = [System.Drawing.Image]::FromFile("$env:UserProfile\Desktop\Colorful Morning Sunrise.jpg")

    $TextBox.Location = New-Object System.Drawing.Point(20,20)

    #$CurrentFont = [System.Drawing.Font]::new("Microsoft Sans Serif", 40, [System.Drawing.FontStyle]::Bold)  
    #$script:WinFont = New-Object System.Drawing.Font('Microsoft Sans Serif',40, [System.Drawing.FontStyle]::Underline) 
    #-and [System.Drawing.FontStyle]::Bold) 

 
    #$WinFont.SelectionFont = Font("Tahoma", 40, $TextBox.FontStyle.Underline);

    #$WinFont = [System.Drawing.FontStyle]::Underline
    #$WinFont = New Font($TextBox.Font, 'FontStyle.Underline')
    
    #No Errors with this one but the text size isn't controlled so it's small , not actually underlined either
    #$WinFont = 'FontStyle.Underline'

    #No Errors here, but the size doubles and the everything past the match is still underlined
    #$WinFont = New-Object System.Drawing.Font('Microsoft Sans Serif', 40, [System.Drawing.FontStyle]::Underline)

    
    #$WinFont = New-Object System.Drawing.Font([System.Drawing.FontStyle]::Underline)
    #$WinFont = new Font($TextBox.Font, 'FontStyle.Bold | FontStyle.Underline');


    $WinFont = New-Object System.Drawing.Font('Courier New', '20', 'System.Drawing.FontStyle.Underline')



    #richTextBox1.SelectionFont = new Font(richTextBox1.SelectionFont, FontStyle.Bold);

    #$TextBox.Font = $CurrentFont
    
    #2 DIFFERENT KINDS OF WAYS TO DRAW??
    #$TextBox.Font = [System.Drawing.Font]::new("Microsoft Sans Serif", 40)
    $TextBox.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',40, [System.Drawing.FontStyle]::Bold)
    $TextBox.Multiline = $true
    $TextBox.Width = 1900
    $TextBox.Height = 900
 
    $button1.Location = '20, 940'
    $button1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',12)
    $button1.Size = '120, 40'
    $button1.Text = 'Play'
    $button1.add_Click( {GetWinningNumbers; AddCounter} )

    $button_close.Location = '160, 940'
    $button_close.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',12)
    $button_close.Size = '120, 40'
    $button_close.TabIndex = 0
    $button_close.Text = 'Close'
    $button_close.add_Click( {$MainForm.Close()} )
   
    $MainForm.Controls.AddRange(@($label1,$Textbox,$button1,$button_close))
    GetWinningNumbers
    return $MainForm.ShowDialog()
}

Main | Out-Null