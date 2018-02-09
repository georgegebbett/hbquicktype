Gui, Add, Edit, x342 y59 w120 h20 , `%Under25Amnt`%
Gui, Add, Edit, x342 y89 w120 h20 , `%Over25Amnt`%
Gui, Add, Edit, x342 y119 w120 h20 , `%OverPenAmnt`%
Gui, Add, Edit, x342 y149 w120 h20 , `%Over65Amnt`%
Gui, Add, Edit, x342 y179 w120 h20 , `%LPUnder18ESAAmnt`%
Gui, Add, Edit, x342 y209 w120 h20 , `%LPUnder18Amnt`%
Gui, Add, Edit, x342 y239 w120 h20 , `%LPOver18Amnt`%
Gui, Add, Edit, x342 y269 w120 h20 , `%LPOverPenAmnt`%
Gui, Add, Edit, x342 y299 w120 h20 , `%LPOver65Amnt`%
Gui, Add, Edit, x342 y329 w120 h20 , `%CplUnder18ESAAmnt`%
Gui, Add, Edit, x342 y359 w120 h20 , `%CplUnder18Amnt`%
Gui, Add, Edit, x342 y389 w120 h20 , `%Cpl18Amnt`%
Gui, Add, Edit, x342 y419 w120 h20 , `%CplPenAmnt`%
Gui, Add, Edit, x342 y449 w120 h20 , `%CplOver65Amnt`%
Gui, Add, Text, x32 y29 w250 h20 , Single claimant aged under 25 on main phase ESA
Gui, Add, Text, x32 y59 w220 h20 , Single claimant aged under 25
Gui, Add, Text, x32 y89 w220 h20 , Single claimant aged between 25 && pension
Gui, Add, Text, x32 y119 w220 h20 , Single claimant aged over pension && under 65
Gui, Add, Text, x32 y149 w220 h20 , Single claimant aged over 65
Gui, Add, Text, x32 y179 w240 h20 , Lone Parent aged under 18 on main phase ESA
Gui, Add, Text, x32 y209 w220 h20 , Lone Parent aged under 18
Gui, Add, Text, x32 y239 w220 h20 , Lone Parent aged between 18 && pension
Gui, Add, Text, x32 y269 w220 h20 , Lone Parent aged over pension && under 65
Gui, Add, Text, x32 y299 w220 h20 , Lone Parent aged over 65
Gui, Add, Text, x32 y329 w250 h20 , Couple both under 18 - Claimant on main phase ESA
Gui, Add, Text, x32 y359 w220 h20 , Couple both under 18
Gui, Add, Text, x32 y389 w260 h20 , Couple with at least one person between 18 && Pension
Gui, Add, Text, x32 y419 w300 h20 , Couple with at least one person aged over pension && under 65
Gui, Add, Text, x32 y449 w220 h20 , Couple with at least one person aged over 65
Gui, Add, Edit, x342 y29 w120 h20 , `%Under25ESAAmnt`%
Gui, Add, Text, x502 y29 w220 h20 , Young Person birth to 14
Gui, Add, Edit, x772 y29 w120 h20 , `%Yng14Amnt`%
Gui, Add, Text, x502 y59 w220 h20 , Family Premium
Gui, Add, Text, x502 y89 w220 h20 , Disability Premium (Single Claimant)
Gui, Add, Text, x502 y119 w220 h20 , Disability Premium (Lone Parent)
Gui, Add, Text, x502 y149 w220 h20 , Disability Premium (Couple)
Gui, Add, Text, x502 y179 w240 h20 , Disabled Child Premium
Gui, Add, Text, x502 y209 w220 h20 , Enhanced Disability Premium (Single Claimant)
Gui, Add, Text, x502 y239 w220 h20 , Enhanced Disability Premium (Lone Parent)
Gui, Add, Text, x502 y269 w220 h20 , Enhanced Disability Premium (Couple)
Gui, Add, Text, x502 y299 w250 h20 , Enhanced Disability Premium (Child/Young Person)
Gui, Add, Text, x502 y329 w250 h20 , Work Related Activity Component
Gui, Add, Text, x502 y359 w220 h20 , Support Component
Gui, Add, Text, x502 y389 w170 h20 , Carer Premium
Gui, Add, Text, x502 y419 w240 h20 , Severe Disability Premium (Single Rate)
Gui, Add, Text, x502 y449 w220 h20 , Severe Disability Premium (Double Rate)
Gui, Add, Edit, x772 y59 w120 h20 , `%FamPremAmnt`%
Gui, Add, Edit, x772 y89 w120 h20 , `%DisPremAmnt`%
Gui, Add, Edit, x772 y119 w120 h20 , `%DisPremLPAmnt`%
Gui, Add, Edit, x772 y149 w120 h20 , `%DisPremCplAmnt`%
Gui, Add, Edit, x772 y179 w120 h20 , `%DisChPremAmnt`%
Gui, Add, Edit, x772 y209 w120 h20 , `%EnDisPremAmnt`%
Gui, Add, Edit, x772 y239 w120 h20 , `%EnDisPremLPAmnt`%
Gui, Add, Edit, x772 y269 w120 h20 , `%EnDisPremCplAmnt`%
Gui, Add, Edit, x772 y299 w120 h20 , `%EnDisPremChAmnt`%
Gui, Add, Edit, x772 y329 w120 h20 , `%WrkActAmnt`%
Gui, Add, Edit, x772 y359 w120 h20 , `%SupCompAmnt`%
Gui, Add, Edit, x772 y389 w120 h20 , `%CarePremAmnt`%
Gui, Add, Edit, x772 y419 w120 h20 , `%SevDisPremSglAmnt`%
Gui, Add, Edit, x772 y449 w120 h20 , `%SevDisPremDblAmnt`%
Gui, Add, Button, x792 y499 w100 h30 , OK
Gui, Add, Button, x672 y499 w100 h30 , Cancel
; Generated using SmartGUI Creator 4.0
Gui, Show, x7 y310 h548 w916, New GUI Window
Return

GuiClose:
ExitApp