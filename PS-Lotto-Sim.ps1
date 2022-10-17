$winnings = 0
$script:count = 20

Function Main {
    (Show-MainForm)
}

Function AddCounter {
$script:count +=20
}

Function GetNumbers {
    $Win_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" | Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw1_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw2_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw3_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw4_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw5_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw6_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw7_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw8_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw9_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")
    $Draw10_Array=@(Get-Random -Count 5 -InputObject(1..69) | % tostring "00" |Sort-Object) + (Get-Random -Minimum 1 -Maximum 26 | % tostring "00")

    $Match1 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw1_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match1 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw1_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match2 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw2_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match2 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw2_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match3 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw3_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match3 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw3_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match4 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw4_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match4 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw4_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match5 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw5_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match5 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw5_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match6 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw6_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match6 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw6_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match7 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw7_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match7 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw7_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match8 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw8_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match8 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw8_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match9 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw9_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match9 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw9_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $Match10 = Compare-Object -ReferenceObject $Win_Array[0..4] -DifferenceObject $Draw10_Array[0..4] -IncludeEqual -ExcludeDifferent -PassThru 
    $PB_Match10 = Compare-Object -ReferenceObject $Win_Array[-1] -DifferenceObject $Draw10_Array[-1] -IncludeEqual -ExcludeDifferent -PassThru

    $RTB.SelectAll()
    $RTB.SelectedText = ""
    $RTB.AppendText("Winning Numbers: " + $Win_Array)
    $RTB.AppendText("`r`n")
    $RTB.AppendText("`r`n")

    #DRAW 1
    $RTB.AppendText("              1st Draw: ") 
    $Draw1_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }
    
    $Draw1_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 1 Matches
    If ($Match1.Count -eq 0 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match1.Count -eq 0 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match1.Count -eq 1 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match1.Count -eq 1 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match1.Count -eq 2 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match1.Count -eq 2 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match1.Count -eq 3 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match1.Count -eq 3 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match1.Count -eq 4 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match1.Count -eq 4 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match1.Count -eq 5 -and $PB_Match1.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match1.Count -eq 5 -and $PB_Match1.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 2
    $RTB.AppendText("`r`n")
    $RTB.AppendText("             2nd Draw: ")
    $Draw2_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw2_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 2 Matches
    If ($Match2.Count -eq 0 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match2.Count -eq 0 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match2.Count -eq 1 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match2.Count -eq 1 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match2.Count -eq 2 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match2.Count -eq 2 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match2.Count -eq 3 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match2.Count -eq 3 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match2.Count -eq 4 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match2.Count -eq 4 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match2.Count -eq 5 -and $PB_Match2.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match2.Count -eq 5 -and $PB_Match2.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER")+ ($script:winnings+=5000000)}

    #DRAW 3
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              3rd Draw: ")
    $Draw3_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw3_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 3 Matches
    If ($Match3.Count -eq 0 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match3.Count -eq 0 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match3.Count -eq 1 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match3.Count -eq 1 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match3.Count -eq 2 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match3.Count -eq 2 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match3.Count -eq 3 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match3.Count -eq 3 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match3.Count -eq 4 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match3.Count -eq 4 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match3.Count -eq 5 -and $PB_Match3.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match3.Count -eq 5 -and $PB_Match3.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 4
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              4th Draw: ")
    $Draw4_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw4_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 4 Matches
    If ($Match4.Count -eq 0 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match4.Count -eq 0 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match4.Count -eq 1 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match4.Count -eq 1 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match4.Count -eq 2 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match4.Count -eq 2 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match4.Count -eq 3 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match4.Count -eq 3 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match4.Count -eq 4 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match4.Count -eq 4 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match4.Count -eq 5 -and $PB_Match4.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match4.Count -eq 5 -and $PB_Match4.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 5
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              5th Draw: ")
    $Draw5_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw5_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 5 Matches
    If ($Match5.Count -eq 0 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match5.Count -eq 0 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match5.Count -eq 1 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match5.Count -eq 1 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match5.Count -eq 2 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match5.Count -eq 2 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match5.Count -eq 3 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match5.Count -eq 3 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match5.Count -eq 4 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match5.Count -eq 4 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match5.Count -eq 5 -and $PB_Match5.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match5.Count -eq 5 -and $PB_Match5.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 6
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              6th Draw: ")
    $Draw6_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw6_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 6 Matches
    If ($Match6.Count -eq 0 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match6.Count -eq 0 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match6.Count -eq 1 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match6.Count -eq 1 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match6.Count -eq 2 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match6.Count -eq 2 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match6.Count -eq 3 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match6.Count -eq 3 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match6.Count -eq 4 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match6.Count -eq 4 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match6.Count -eq 5 -and $PB_Match6.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match6.Count -eq 5 -and $PB_Match6.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 7
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              7th Draw: ")
    $Draw7_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw7_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 7 Matches
    If ($Match7.Count -eq 0 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match7.Count -eq 0 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match7.Count -eq 1 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match7.Count -eq 1 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match7.Count -eq 2 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match7.Count -eq 2 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match7.Count -eq 3 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match7.Count -eq 3 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match7.Count -eq 4 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match7.Count -eq 4 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match7.Count -eq 5 -and $PB_Match7.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match7.Count -eq 5 -and $PB_Match7.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 8
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              8th Draw: ")
    $Draw8_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw8_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 8 Matches
    If ($Match8.Count -eq 0 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match8.Count -eq 0 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match8.Count -eq 1 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match8.Count -eq 1 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match8.Count -eq 2 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match8.Count -eq 2 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match8.Count -eq 3 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match8.Count -eq 3 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match8.Count -eq 4 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match8.Count -eq 4 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match8.Count -eq 5 -and $PB_Match8.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match8.Count -eq 5 -and $PB_Match8.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 9
    $RTB.AppendText("`r`n")
    $RTB.AppendText("              9th Draw: ")
    $Draw9_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw9_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 9 Matches
    If ($Match9.Count -eq 0 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match9.Count -eq 0 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match9.Count -eq 1 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match9.Count -eq 1 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match9.Count -eq 2 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match9.Count -eq 2 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match9.Count -eq 3 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match9.Count -eq 3 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match9.Count -eq 4 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match9.Count -eq 4 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match9.Count -eq 5 -and $PB_Match9.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match9.Count -eq 5 -and $PB_Match9.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    #DRAW 10
    $RTB.AppendText("`r`n")
    $RTB.AppendText("            10th Draw: ")
    $Draw10_Array[0..4] | ForEach-Object {
    if ($Win_Array[0..4] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    $Draw10_Array[-1] | ForEach-Object {
    if ($Win_Array[-1] -contains $_) {
        $RTB.SelectionColor = "Green"
        $oldFont = $RTB.Selectionfont
        $RTB.SelectionFont = New-Object System.Drawing.Font('Microsoft Sans Serif',20,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))
        $RTB.AppendText($_)
        $RTB.SelectionFont = New-Object System.Drawing.Font($oldFont, [System.Drawing.Fontstyle]::Bold)
        $RTB.AppendText(" ")
    } else {
        $RTB.SelectionColor = "Black"
        $RTB.AppendText($_)
        $RTB.AppendText(" ")
        }
    }

    #DRAW 10 Matches
    If ($Match10.Count -eq 0 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - No Matches")}
    Elseif ($Match10.Count -eq 0 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - Powerball Matched") + ($script:winnings+=4)}
    Elseif ($Match10.Count -eq 1 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 1 White Ball Matched")}
    Elseif ($Match10.Count -eq 1 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$4 " + "WINNER - 1 White Ball + PB") + ($script:winnings+=4)}
    Elseif ($Match10.Count -eq 2 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Red"; $RTB.AppendText("LOSER - 2 White Balls")}
    Elseif ($Match10.Count -eq 2 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 2 White Balls + PB") + ($script:winnings+=7)}
    Elseif ($Match10.Count -eq 3 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$7 " + "WINNER - 3 White Balls") + ($script:winnings+=7)}
    Elseif ($Match10.Count -eq 3 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 3 White Balls + PB") + ($script:winnings+=100)}
    Elseif ($Match10.Count -eq 4 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$100 " + "WINNER - 4 White Balls") + ($script:winnings+=100)}
    Elseif ($Match10.Count -eq 4 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$50,000 " + "WINNER - 4 White Balls + PB") + ($script:winnings+=50000)}
    Elseif ($Match10.Count -eq 5 -and $PB_Match10.Count -eq 0) {$RTB.SelectionColor = "Green"; $RTB.AppendText("`$1,000,000 " + "WINNER - 5 White Balls") + ($script:winnings+=1000000)}
    Elseif ($Match10.Count -eq 5 -and $PB_Match10.Count -eq 1) {$RTB.SelectionColor = "Green"; $RTB.AppendText("JACKPOT WINNER") + ($script:winnings+=5000000)}

    $RTB.AppendText("`r`n")
    $RTB.AppendText("`r`n")
    $RTB.AppendText("Spent = $" + $count + "      Won = $" + $winnings)
}

Function Show-MainForm {
    $Form = New-Object System.Windows.Forms.Form
    $Form.Size = New-Object System.Drawing.Size(1900,1300)
    $Form.text = "Lottery Simulator"

    $RTB = New-Object System.Windows.Forms.RichTextBox
    $RTB.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",40,[System.Drawing.FontStyle]::Bold)
    $RTB.Location = New-Object System.Drawing.Size(10,100)
    $RTB.Size = New-Object System.Drawing.Size(1800,900)
    $RTB.MultiLine = $True
    $RTB.ScrollBars = "Vertical"    

    GetNumbers
    AddCounter

    $Label = New-Object System.Windows.Forms.Label
    $Label.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",25,[System.Drawing.FontStyle]::Bold)
    $Label.Text = "Powershell Lottery Simulator"
    $Label.Location  = New-Object System.Drawing.Point(10,10)
    $Label.AutoSize = $true

    $PlayButton = New-Object System.Windows.Forms.Button
    $PlayButton.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
    $PlayButton.Location = New-Object System.Drawing.Size(50,1050)
    $PlayButton.Size = New-Object System.Drawing.Size(150,80)
    $PlayButton.Text = "Play"
    $PlayButton.Add_Click({ GetNumbers ; AddCounter })
    
    $CloseButton = New-Object System.Windows.Forms.Button
    $CloseButton.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",15,[System.Drawing.FontStyle]::Bold)
    $CloseButton.Location = New-Object System.Drawing.Size(250,1050)
    $CloseButton.Size = New-Object System.Drawing.Size(150,80)
    $CloseButton.Text = "Close"
    $CloseButton.Add_Click({ $Form.Close() })

    $Form.Controls.AddRange(@($RTB, $Label, $PlayButton, $CloseButton))
    $Form.ShowDialog()
}

Main | Out-Null