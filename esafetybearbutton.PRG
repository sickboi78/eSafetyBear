*---------------------------------------------------------------------------*
* Time : 11:42:42    Date : 02/09/2018
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2017 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2017.07.06
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_esafetybearbutton_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_esafetybearbutton_19art1() code
DesktopWidth = GETDESKTOPWIDTH()
DesktopHeight = GETDESKTOPHEIGHT()
if !iswindowdefined( winMain )
DEFINE WINDOW winMain ;
AT 0 ,0 ;
WIDTH 200 ;
HEIGHT 200 ;
ON INIT spawneSafetyBearButton()  ;
ICON "eSafetyBearIcon" ;
TITLE "eSafety Bear Button Tray" ;
MAIN ;
NOSHOW ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {240,240,240} ;
NOTIFYICON "eSafetyBearIcon" 

DEFINE NOTIFY MENU OF winMain
MENUITEM "About" Action aboutMessage()
MENUITEM "Quit" Action MSGINFO( winMain.Release )
END MENU
END WINDOW

ACTIVATE WINDOW winMain
EndIF

Proc spawneSafetyBearButton
if !iswindowdefined( wineSafetyBearButton )
DEFINE WINDOW wineSafetyBearButton ;
AT 30 ,DesktopWidth-90 ;
WIDTH 90 ;
HEIGHT 70 ;
ON MOUSEDRAG moveActiveWindow()  ;
ICON "eSafetyBearIcon" ;
TITLE "eSafety Bear" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {240,240,240} 

@ 0 ,0 IMAGE eSafetyBearButton;
PICTURE "eSafetyBearButton.png";
ON CLICK coverScreen()  ;
WIDTH 70 HEIGHT 70
@ 25 ,70 IMAGE BRBArrows;
PICTURE "moveArrows.png";
STRETCH ;
WIDTH 20 HEIGHT 20
END WINDOW

ACTIVATE WINDOW wineSafetyBearButton
EndIF

Return Nil
Proc coverScreen
if !iswindowdefined( screenCover )
DEFINE WINDOW screenCover ;
AT 0 ,0 ;
WIDTH DesktopWidth ;
HEIGHT DesktopHeight ;
ICON "BRBIcon" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {0,0,0} 

@ 0 ,0 IMAGE BRBCover;
PICTURE "ScreenCover.jpg";
STRETCH ;
WIDTH DesktopWidth HEIGHT DesktopHeight
@ 0 ,10 LABEL WellDone ;
VALUE "Well Done!" ;
WIDTH 500 ;
HEIGHT 100 ;
FONT "Open Sans" SIZE 64  ;
BOLD ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 110 ,10 LABEL Hidden ;
VALUE "I'll keep your screen covered until an adult can come and help you" ;
WIDTH 500 ;
HEIGHT 100 ;
FONT "Open Sans" SIZE 25  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ DesktopHeight-210 ,DesktopWidth-470 LABEL GetTeacher ;
VALUE "I'll always be there to help when you need me." ;
WIDTH 500 ;
HEIGHT 60 ;
FONT "Open Sans" SIZE 20  ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ DesktopHeight-50 ,DesktopWidth-180 BUTTONEX btnClose;
CAPTION "Return to Desktop";
FONTCOLOR {255,255,255};
BACKCOLOR {20,80,20};
ON CLICK screenCover.Release()  ;
WIDTH 170 HEIGHT 40 ;
FONT "Open Sans" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW screenCover
EndIF

Return Nil
Proc aboutMessage
if !iswindowdefined( winAbout )
DEFINE WINDOW winAbout ;
AT 10 ,10 ;
WIDTH 310 ;
HEIGHT 267 ;
ON INIT centerAboutMessage()  ;
ICON "eSafetyBearIcon" ;
TITLE "About" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {240,240,240} 

@ 10,70 HYPERLINK Hyper4eSafetyBear;
VALUE "eSafety Bear" ;
ADDRESS "https://github.com/sickboi78/eSafetyBear";
WIDTH 160 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Open Sans" ;
SIZE 16 ;
BOLD ;
BACKCOLOR {240,240,240} ;
FONTCOLOR {240,40,40} ;
HANDCURSOR 

@ 50 ,36 LABEL CreatedBy ;
VALUE "A program by Richard Lee-Williams (sickboi78)" ;
WIDTH 227 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Open Sans" SIZE 12  ;
BACKCOLOR {240,240,240} ;
CENTERALIGN ;
FONTCOLOR {50,50,50}
@ 84 ,95 LABEL CreatedWith ;
VALUE "Created with:" ;
WIDTH 110 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Open Sans" SIZE 12  ;
BACKCOLOR {240,240,240} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 118,125 HYPERLINK HyperPWCT;
VALUE "PWCT" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 50 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Open Sans" ;
SIZE 12 ;
BACKCOLOR {240,240,240} ;
FONTCOLOR {40,40,120} ;
HANDCURSOR 

@ 152,114 HYPERLINK HyperInkscape;
VALUE "Inkscape" ;
ADDRESS "https://inkscape.org";
WIDTH 72 ;
HEIGHT 30 ;
FONT "Open Sans" ;
SIZE 12 ;
BACKCOLOR {240,240,240} ;
FONTCOLOR {40,40,120} ;
HANDCURSOR 

@ 186,126 HYPERLINK HyperGimp;
VALUE "GIMP" ;
ADDRESS "http://www.gimp.org";
WIDTH 47 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Open Sans" ;
SIZE 12 ;
BACKCOLOR {240,240,240} ;
FONTCOLOR {40,40,120} ;
HANDCURSOR 

END WINDOW

ACTIVATE WINDOW winAbout
EndIF

Return Nil
Proc centerAboutMessage
winAbout.Center ( )
Return Nil
Proc moveActiveWindow
DO postmessage WITH GetActiveWindow(), 161, 2, 0
Return Nil


End Of Resistance

INIT PROCEDURE Init_esafetybearbutton
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","DesktopWidth = Get Desktop Width",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","DesktopHeight = Get Desktop Height",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winMain ) , Title : 'eSafety Bear Button Tray'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action spawneSafetyBearButton()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Notify Menu Of Parent Window : winMain",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Quit' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure spawneSafetyBearButton",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( wineSafetyBearButton ) , Title : 'eSafety Bear'",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEDRAG : Action moveActiveWindow()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",35,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( eSafetyBearButton ) , Image : 'eSafetyBearButton.png'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action coverScreen()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( BRBArrows ) , Image : 'moveArrows.png'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure coverScreen",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( screenCover ) , Title : 'Screen Cover'",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",66,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( BRBCover ) , Image : 'ScreenCover.jpg'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( WellDone ) , Caption : 'Well Done!'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( Hidden ) , Caption : 'I'll keep your screen covered until an adult can come and help you'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( GetTeacher ) , Caption : 'I'll always be there to help when you need me.'",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Return to Desktop'",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action screenCover.Release()",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aboutMessage",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winAbout ) , Title : 'About'",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action centerAboutMessage()",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",125,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper4eSafetyBear )",133,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CreatedBy ) , Caption : 'A program by Richard Lee-Williams (sickboi78)'",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",148,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( CreatedWith ) , Caption : 'Created with:'",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( HyperPWCT )",164,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( HyperInkscape )",176,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( HyperGimp )",187,198)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",201,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure centerAboutMessage",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","winAbout.Center( )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure moveActiveWindow",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure postmessage Parameters GetActiveWindow(), 161, 2, 0",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
Return
*-------------------------------------------------------------------*
