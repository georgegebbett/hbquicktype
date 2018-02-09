#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Variable Declaration

Loop 34 ;this loop declares ini data into sequentially numbered variables
	{
		IniRead, %A_Index%, initest1.ini, All, %A_Index%
	}




;Applicable Amounts

;Here the sequentially numbered variables are translated to human readable ones in a step that is definitely redundant

Under25ESAAmnt = %1%
Under25Amnt = %2%
Over25Amnt = %3%
OverPenAmnt = %4%
Over65Amnt = %5%
LPUnder18ESAAmnt = %6%
LPUnder18Amnt = %7%
LPOver18Amnt = %8%
LPOverPenAmnt = %9%
LPOver65Amnt = %10%
CplUnder18ESAAmnt = %11%
CplUnder18Amnt = %12%
Cpl18Amnt = %13%
CplPenAmnt = %14%
CplOver65Amnt = %15%
Yng14Amnt = %16%
FamPremAmnt = %17%
DisPremAmnt = %18%
DisPremLPAmnt = %19%
DisPremCplAmnt = %20%
DisChPremAmnt = %21%
EnDisPremAmnt = %22%
EnDisPremLPAmnt = %23%
EnDisPremCplAmnt = %24%
EnDisPremChAmnt = %25%
WrkActAmnt = %26%
SupCompAmnt = %27%
CarePremAmnt = %28%
SevDisPremSglAmnt = %29%
SevDisPremDblAmnt = %30%
perStrtDte = %31%
perEndDte = %32%
40PlusHeadCell = %33%
40PlusDetailCell = %34%

FormatTime, perStrtDteFrmt, %perStrtDte%, dd/MM/yyyy ;these lines sort out the dates got from the date time boxes
FormatTime, perEndDteFrmt, %perEndDte%, dd/MM/yyyy

/*

;Other Options



*/

;Menu editing

;Menu, tray, NoStandard
Menu, tray, add, Edit Applicable Amounts, `AppAmntsDialog
Menu, tray, add, 40+ Cell Numbers, CellNoDialog
Menu, tray, add, Period Settings, PeriodSettingDialog
Menu, Tray, Add
Menu, tray, add, Exit, ExitHB


ExitHB(){
	ExitApp, 0
}

AppAmntsDialog() {

	global
	Gui, Add, Edit, x342 y59 w120 h20 vUnder25Amnt , %Under25Amnt%
	Gui, Add, Edit, x342 y89 w120 h20 vOver25Amnt , %Over25Amnt%
	Gui, Add, Edit, x342 y119 w120 h20 vOverPenAmnt , %OverPenAmnt%
	Gui, Add, Edit, x342 y149 w120 h20 vOver65Amnt , %Over65Amnt%
	Gui, Add, Edit, x342 y179 w120 h20 vLPUnder18ESAAmnt , %LPUnder18ESAAmnt%
	Gui, Add, Edit, x342 y209 w120 h20 vLPUnder18Amnt , %LPUnder18Amnt%
	Gui, Add, Edit, x342 y239 w120 h20 vLPOver18Amnt , %LPOver18Amnt%
	Gui, Add, Edit, x342 y269 w120 h20 vLPOverPenAmnt , %LPOverPenAmnt%
	Gui, Add, Edit, x342 y299 w120 h20 vLPOver65Amnt , %LPOver65Amnt%
	Gui, Add, Edit, x342 y329 w120 h20 vCplUnder18ESAAmnt , %CplUnder18ESAAmnt%
	Gui, Add, Edit, x342 y359 w120 h20 vCplUnder18Amnt , %CplUnder18Amnt%
	Gui, Add, Edit, x342 y389 w120 h20 vCpl18Amnt , %Cpl18Amnt%
	Gui, Add, Edit, x342 y419 w120 h20 vCplPenAmnt , %CplPenAmnt%
	Gui, Add, Edit, x342 y449 w120 h20 vCplOver65Amnt , %CplOver65Amnt%
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
	Gui, Add, Edit, x342 y29 w120 h20 vUnder25ESAAmnt , %Under25ESAAmnt%
	Gui, Add, Text, x502 y29 w220 h20 , Young Person birth to 14
	Gui, Add, Edit, x772 y29 w120 h20 vYng14Amnt , %Yng14Amnt%
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
	Gui, Add, Edit, x772 y59 w120 h20 vFamPremAmnt , %FamPremAmnt%
	Gui, Add, Edit, x772 y89 w120 h20 vDisPremAmnt , %DisPremAmnt%
	Gui, Add, Edit, x772 y119 w120 h20 vDisPremLPAmnt , %DisPremLPAmnt%
	Gui, Add, Edit, x772 y149 w120 h20 vDisPremCplAmnt , %DisPremCplAmnt%
	Gui, Add, Edit, x772 y179 w120 h20 vDisChPremAmnt , %DisChPremAmnt%
	Gui, Add, Edit, x772 y209 w120 h20 vEnDisPremAmnt , %EnDisPremAmnt%
	Gui, Add, Edit, x772 y239 w120 h20 vEnDisPremLPAmnt , %EnDisPremLPAmnt%
	Gui, Add, Edit, x772 y269 w120 h20 vEnDisPremCplAmnt , %EnDisPremCplAmnt%
	Gui, Add, Edit, x772 y299 w120 h20 vEnDisPremChAmnt , %EnDisPremChAmnt%
	Gui, Add, Edit, x772 y329 w120 h20 vWrkActAmnt , %WrkActAmnt%
	Gui, Add, Edit, x772 y359 w120 h20 vSupCompAmnt , %SupCompAmnt%
	Gui, Add, Edit, x772 y389 w120 h20 vCarePremAmnt , %CarePremAmnt%
	Gui, Add, Edit, x772 y419 w120 h20 vSevDisPremSglAmnt , %SevDisPremSglAmnt%
	Gui, Add, Edit, x772 y449 w120 h20 vSevDisPremDblAmnt , %SevDisPremDblAmnt%
	Gui, Add, Button, x792 y499 w100 h30 , OK
	Gui, Add, Button, x672 y499 w100 h30 , Cancel
	GuiControl, Focus, OK
	; Generated using SmartGUI Creator 4.0
	Gui, Show, x7 y310 h548 w916, Applicable Amounts

Return
}

CellNoDialog() {

	global

	Gui, Add, Text, x22 y19 w70 h20 , Headline Cell
	Gui, Add, Text, x22 y59 w70 h20 , Detail Cell
	Gui, Add, Edit, x112 y19 w70 h20 v40PlusHeadCell , %40PlusHeadCell%
	Gui, Add, Edit, x112 y59 w70 h20 v40PlusDetailCell , %40PlusDetailCell%
	Gui, Add, Button, x22 y89 w70 h30 , Cancel
	Gui, Add, Button, x112 y89 w70 h30 , OK
	; Generated using SmartGUI Creator 4.0
	GuiControl, Focus, OK
	Gui, Show, x212 y197 h137 w221, Cells

Return
}

PeriodSettingDialog() {

	global

	Gui, Add, Text, x22 y19 w130 h20 , Period Start Date
	Gui, Add, Text, x22 y49 w130 h20 , Period End Date
	Gui, Add, DateTime, x192 y19 w110 h20 Choose%perStrtDte% vperStrtDte
	Gui, Add, DateTime, x192 y49 w110 h20 Choose%perEndDte% vperEndDte
	Gui, Add, Button, x232 y79 w70 h30 , OK
	Gui, Add, Button, x152 y79 w70 h30 , Cancel
	; Generated using SmartGUI Creator 4.0
	Gui, Show, x377 y215 h125 w332, Period Dates
Return
}




ButtonOK: ;this can happen every time a dialog is submitted idec - when the dialog closes the human readable variables are sent into the sequentially numbered ones which in turn are sent
		  ;to the ini file
Gui, Submit
Gui, Destroy

1 = %Under25ESAAmnt%
2 = %Under25Amnt%
3 = %Over25Amnt%
4 = %OverPenAmnt%
5 = %Over65Amnt%
6 = %LPUnder18ESAAmnt%
7 = %LPUnder18Amnt%
8 = %LPOver18Amnt%
9 = %LPOverPenAmnt%
10 = %LPOver65Amnt%
11 = %CplUnder18ESAAmnt%
12 = %CplUnder18Amnt%
13 = %Cpl18Amnt%
14 = %CplPenAmnt%
15 = %CplOver65Amnt%
16 = %Yng14Amnt%
17 = %FamPremAmnt%
18 = %DisPremAmnt%
19 = %DisPremLPAmnt%
20 = %DisPremCplAmnt%
21 = %DisChPremAmnt%
22 = %EnDisPremAmnt%
23 = %EnDisPremLPAmnt%
24 = %EnDisPremCplAmnt%
25 = %EnDisPremChAmnt%
26 = %WrkActAmnt%
27 = %SupCompAmnt%
28 = %CarePremAmnt%
29 = %SevDisPremSglAmnt%
30 = %SevDisPremDblAmnt%
31 = %perStrtDte%
32 = %perEndDte%
33 = %40PlusHeadCell%
34 = %40PlusDetailCell%

IniWrite, 
(
1 = %1%
2 = %2%
3 = %3%
4 = %4%
5 = %5%
6 = %6%
7 = %7%
8 = %8%
9 = %9%
10 = %10%
11 = %11%
12 = %12%
13 = %13%
14 = %14%
15 = %15%
16 = %16%
17 = %17%
18 = %18%
19 = %19%
20 = %20%
21 = %21%
22 = %22%
23 = %23%
24 = %24%
25 = %25%
26 = %26%
27 = %27%
28 = %28%
29 = %29%
30 = %30%
31 = %31%
32 = %32%
33 = %33%
34 = %34%
), initest1.ini, All
Return

GuiClose:
ButtonCancel:
Gui, Destroy
Return

;Passported

::ClmntRecGC::Claimant in receipt of Guarantee Credit
::ClmntRecIS::Claimant in receipt of Income Support
::ClmntRecJSA::Claimant in receipt of JSA(IB)
::ClmntRecESA::Claimant in receipt of ESA(IR)


;Rent liability

::rnt::rent
::tenAgr::Tenancy Agreement
::rntChat::Rent liability for the period taken directly from council benefit system and checked against prime supporting documents in Document Imaging System.
::OHMSrnt::HRA rents are imported directly from OHMS system, claimant's rent account number sighted in council benefit system
::lndld::landlord
::RntInc::Rent Increase Notice
::LHACap::capped at LHA rate of


;Deductions

::nonDepDed::Non-Dependant Deduction

;Income

::ErnIn::Earned Income
::ErnDis::Earnings Disregard
::AddErnDis::Additional Earnings Disregard
::CCC::Childcare Costs
::CTC::Child Tax Credit
::WTC::Working Tax Credit
::AnyOI::Any Other Income
::SlfErn::Self Employed Earnings
::aggAtl::Agreed to ATLAS transaction ref
::aggPslp::Evidenced in payslip dated
::aggChldCre::Agreed to childcare cost form dated
::aggBnk::Agreed with bank statement dated
::ChldMain::Child maintenance
::StPen::State pension
::WTCDis::Working Tax Credit Disregard


;Applicable amounts

::Under25ESA::
	send, Single claimant aged under 25 on main phase ESA
	send, {tab}
	send, %Under25ESAAmnt%
	send, {enter}
Return

::Under25::
	send, Single claimant aged under 25
	send, {tab}
	send, %Under25Amnt%
	send, {enter}
Return

::Over25::
	send, Single claimant aged between 25 & pension
	send, {tab}
	send, %Over25Amnt%
	send, {enter}
Return

::OverPen::
	send, Single claimant aged over pension & under 65
	send, {tab}
	send, %OverPenAmnt%
	send, {enter}
Return

::Over65::
	send, Single claimant aged over 65
	send, {tab}
	send, %Over65Amnt%
	send, {enter}
Return

::LPUnder18ESA::
	send, Lone Parent aged under 18 on main phase ESA
	send, {tab}
	send, %LPUnder18ESAAmnt%
	send, {enter}
Return

::LPUnder18::
	send, Lone Parent aged under 18
	send, {tab}
	send, %LPUnder18Amnt%
	send, {enter}
Return

::LPOver18::
	send, Lone Parent aged between 18 & pension
	send, {tab}
	send, %LPOver18Amnt%
	send, {enter}
Return

::LPOverPen::
	send, Lone Parent aged over pension & under 65
	send, {tab}
	send, %LPOverPenAmnt%
	send, {enter}
Return

::LPOver65::
	send, Lone Parent aged over 65
	send, {tab}
	send, %LPOver65Amnt%
	send, {enter}
Return

::CplUnder18ESA::
	send, Couple both under 18 - Claimant on main phase ESA
	send, {tab}
	send, %CplUnder18ESAAmnt%
	send, {enter}
Return

::CplUnder18::
	send, Couple both under 18
	send, {tab}
	send, %CplUnder18Amnt%
	send, {enter}
Return

::Cpl18::
	send, Couple with at least one person between 18 & Pension
	send, {tab}
	send, %Cpl18Amnt%
	send, {enter}
Return

::CplPen::
	send, Couple with at least one person aged over pension & under 65
	send, {tab}
	send, %CplPenAmnt%
	send, {enter}
Return

::CplOver65::
	send, Couple with at least one person aged over 65
	send, {tab}
	send, %CplOver65Amnt%
	send, {enter}
Return

::Yng14::
	Sleep, 50
	InputBox, yngNo, How many under 14?
	Yng14AmntFinal := yngNo * Yng14Amnt
	send, Young Person birth to 14
	send, {tab}
	send, %Yng14AmntFinal%
	send, {enter}
Return

::FamPrem::
	send, Family Premium
	send, {tab}
	send, %FamPremAmnt%
	send, {enter}
Return

::DisPrem::
	send, Disability Premium (Single Claimant)
	send, {tab}
	send, %DisPremAmnt%
	send, {enter}
Return

::DisPremLP::
	send, Disability Premium (Lone Parent)
	send, {tab}
	send, %DisPremLPAmnt%
	send, {enter}
Return

::DisPremCpl::
	send, Disability Premium (Couple)
	send, {tab}
	send, %DisPremCplAmnt%
	send, {enter}
Return

::DisChPrem::
	send, Disabled Child Premium
	send, {tab}
	send, %DisChPremAmnt%
	send, {enter}
Return

::EnDisPrem::
	send, Enhanced Disability Premium (Single Claimant)
	send, {tab}
	send, %EnDisPremAmnt%
	send, {enter}
Return

::EnDisPremLP::
	send, Enhanced Disability Premium (Lone Parent)
	send, {tab}
	send, %EnDisPremLPAmnt%
	send, {enter}
Return

::EnDisPremCpl::
	send, Enhanced Disability Premium (Couple)
	send, {tab}
	send, %EnDisPremCplAmnt%
	send, {enter}
Return

::EnDisPremCh::
	send, Enhanced Disability Premium (Child/Young Person)
	send, {tab}
	send, %EnDisPremChAmnt%
	send, {enter}
Return

::WrkAct::
	send, Work Related Activity Component
	send, {tab}
	send, %WrkActAmnt%
	send, {enter}
Return

::SupComp::
	send, Support Component
	send, {tab}
	send, %SupCompAmnt%
	send, {enter}
Return

::CarePrem::
	send, Carer Premium
	send, {tab}
	send, %CarePremAmnt%
	send, {enter}
Return

::SevDisPremSgl::
	send, Severe Disability Premium (Single Rate)
	send, {tab}
	send, %SevDisPremSglAmnt%
	send, {enter}
Return

::SevDisPremDbl::
	send, Severe Disability Premium (Double Rate)
	send, {tab}
	send, %SevDisPremDblAmnt%
	send, {enter}
Return

::mod2app::Agreed to module 2 appendix


;Auditor Confirmations

::audConfRnt::Auditor recalculated and confirms correct amount for rent used in calculation.
::audConfInc::Auditor recalculated and confirms amount and period are correct.
::audConfPen::Auditor recalculated and confirms amount correct. Pension provided by 
::audConfCCC::Auditor recalculated and confirms amount correct. Childcarer Ofsted no.
::audConf::Auditor recalculated and confirms correct.


;General abbreviations

::EvSn::Evidence seen
::ss::spreadsheet
::clmnt::Claimant
::aggTo::agreed to
::docSys::Document Imaging System
::tstAbv::Testing completed immediately above.
::sys::System
::dtd::dated
::rcpt::receipt

:*:40+++::
	Send, This case has been selected for 40`+ testing due to the incorrect calculation of earned income in cell 094.
	Send, !{Enter}
	send, The client has performed additional testing and has identified Earned Income in this case as being correctly calculated.
	Send, !{Enter}
	send, We have selected the case for reperformance and found no further errors.
Return

:*::---::
	IfWinExist, Calculator
		WinActivate
	Else
		Run, C:\Windows\System32\calc.exe
Return




::sub030::
	send, Case listing derived from sub 030 report used to compile claim.
	send, {enter}
	send, Case listing derived from sub 030 report used to compile claim.
Return

:*:***::
::perDte::
	FormatTime, perStrtDteFrmt, %perStrtDte%, dd/MM/yyyy ;these lines sort out the dates got from the date time boxes
	FormatTime, perEndDteFrmt, %perEndDte%, dd/MM/yyyy
	send, %perStrtDteFrmt%
	send, {tab}
	send, %perEndDteFrmt%
	send, {enter}
	send, %perEndDteFrmt%
	send, +{tab}
	send, %perStrtDteFrmt%
	Send, {Enter}
Return

::clno::
	send, %40PlusHeadCell%
	send, {enter}
	send, %40PlusDetailCell%
Return




^`:: ;Goto previous pink sheet
	send, ^q
	sleep, 500
	send, {Up}
	send, ^q
Return

^1:: ;Goto next pink sheet
	send, ^q
	sleep, 500
	send, {Down}
	send, ^q
Return

:*:**-::
Sleep, 50
^2:: ;40+ Pass Filler-Inner
	x = 0
	InputBox, Amnt, Value, Please enter HB amount paid, , 100, 150
	if ErrorLevel
		MsgBox, Cancelled
	else
	{
		send, %Amnt%
		sleep, 50
		send, {Enter}
		sleep, 100
		IfWinActive, Reminder
		{
			WinClose
			sleep, 50
			send, {Enter}
			sleep, 50
		}
		send, {Up}
		send, ^q
		sleep, 1000
		While x < 34
		{
			send, {enter}
			++x
		}
		x=0
		While x < 5 
		{
			send, {Right}
			++x
		}
		send, {Up}
		send, {Up}
		send, 0
		send, {Enter}
		send, 0
		send, {Enter}
		send, %Amnt%
		send, {Enter}
		send, ^q
		sleep, 1000
		send, {Enter}
		sleep, 100
		x = 0
		send, %Amnt%
		sleep, 50
		send, {Enter}
		sleep, 50
		IfWinActive, Reminder
		{
			Winclose
			sleep, 50
			send, {Enter}
			sleep, 50
		}
		send, {Up}
		send, ^q
		sleep, 1000
		While x < 34
		{
			send, {enter}
			++x
		}
		x=0
		While x < 5 
		{
			send, {Right}
			++x
		}
		send, {Up}
		send, {Up}
		send, 0
		send, {Enter}
		send, 0
		send, {Enter}
		send, %Amnt%
		send, {Enter}
		send, ^q
		sleep, 500
		send, {Enter}
	}
Return

/* Getting rid of this for now

^3::
	InputBox, NumPrds, How many periods?
	While NumPrds > 0
	{
		InputBox, StartDate, Start Date
		InputBox, EndDate, End Date
		InputBox, Amount, Amount
		send, %StartDate%
		send, {Space}
		send, -
		send, {Space}
		send, %EndDate%
		send, {Space}
		send, -
		send, {Space}
		send, %Amount%
		send, {Space}
		send, -
		send, !{Enter}
		NumPrds--
	}
Return

*/

^4:: ;Adds mod2apps
	InputBox, NumMod2, How many mod2apps?
	While NumMod2 > 0
	{
		send, Agreed to module 2 appendix for 16/17
		send, {Enter}
		NumMod2--
	}
Return

!^4:: ;Adds any string
	InputBox, StrText, String?
	InputBox, NumMod2, How many %StrText%?
	
	While NumMod2 > 0
	{
		send, %StrText%
		send, {Enter}
		NumMod2--
	}
Return

^5:: ;Sums and adds pension amounts
	InputBox, NumPen, How many pension amounts?
	PenSum := 0
	While NumPen > 0
	{
		InputBox, PenIn, Pension amount?
		PenSum := PenSum + PenIn
		NumPen--
	}
	send, %PenSum%
Return

^6:: ;Works out amounts from weekly amount
	InputBox, WeekAmnt, Weekly amount?
	YearAmnt := Round(WeekAmnt * 52, 2)
	MonthAmnt := Round(YearAmnt / 12, 2)
	4WeekAmnt := Round(WeekAmnt * 4, 2)
	MsgContent = 
	( LTrim
	Weekly Amount: £%WeekAmnt%
	4 Weekly Amount: £%4WeekAmnt%
	Monthly Amount: £%MonthAmnt%
	Yearly Amount: £%YearAmnt%
	)
	MsgBox, %MsgContent%
Return

^7:: ;Works out amounts from monthly amounts
	InputBox, MonthAmnt, Monthly amount?
	MonthAmnt := Round(MonthAmnt, 2)
	YearAmnt := Round(MonthAmnt * 12, 2)
	WeekAmnt := Round((MonthAmnt * 12)/52, 2)
	4WeekAmnt := Round((MonthAmnt * 12)/13, 2)
	MsgContent = 
	( LTrim
	Weekly Amount: £%WeekAmnt%
	4 Weekly Amount: £%4WeekAmnt%
	Monthly Amount: £%MonthAmnt%
	Yearly Amount: £%YearAmnt%
	)
	MsgBox, %MsgContent%
Return

::rnderr::
	Sleep, 50
	InputBox, weekNo, How many weeks of rounding error?
	Send, %weekNo% weeks of 1p rounding error = %weekNo%p rounding error
Return

^d:: ;deletes q3 row
	Click right
	Send, {Up}
	Send, {Up}
	Send, {Enter}
	Send, {Enter}
Return

/*

^q:: ;marks q3 row as Pass
	Click 2
	Send, {Down}
	Send, {Down}
	Send, {Down}
	Send, {Enter}
Return

*/