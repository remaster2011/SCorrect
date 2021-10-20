#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
insert = 2
email = someone@something.com ; Your email!
name = Zach Feodore ; Your name!
^!s:: ; ctrl + alt + s
Menu Tray, Icon, %A_ScriptDir%\scorrect.ico

Gui -MaximizeBox
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20, Segoe UI Variable Display Semib
Gui Add, Text, x24 y16 w150 h50 +Center, SCorrector
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s11, Segoe UI Variable Display Semib
Gui Add, Text, x32 y56 w139 h26, by remaster2011
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s9, Segoe UI Variable Text Semibold
Gui Add, Text, x32 y120 w325 h211, Hello! I would like to thank you for downloading this program. This app was designed for social apps like discord since it automatically detects internet slang like "idk" and expands it, for example when you type "ttyl" it will expand it to "talk to you later"; unless the internet slang corrector is disabled. This also can be used to "quick type" things like when you type [your preferred "insert" keybind]em (email) it will change that to your email; same for ]na for name. Make sure to check settings and have configurations set up or else your email/name will not be typed and instead a placeholder email/name will be typed doing the quick type function! In future updates there will also be a thing where you can add your own quick type functions.
Gui Font
Gui Font, s9, Segoe UI
Gui Add, Text, x16 y96 w386 h2 0x10
Gui Font
Gui Font, s20, Segoe UI Variable Text Semibold
Gui Add, Text, x456 y16 w150 h50, Changelog:
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font,, Segoe UI Variable Display Semib
Gui Add, Text, x456 y120 w310 h211, `n`n     Version 0.0.2`n`n     * Added new quick type function, ]t to paste your time, ]d to paste your date, and ]td to paste your time and date. `n`n     * Fixed quick type key selection.
Gui Font
Gui Font, s9, Segoe UI
Gui Add, Text, x432 y96 w342 h2 0x10
Gui Font
Gui Font, s20, Segoe UI Variable Display Semib
Gui Add, Text, x832 y16 w150 h50, Settings
Gui Font
Gui Font, s9, Segoe UI
Gui Add, Text, x808 y96 w285 h2 0x10
Gui Font
Gui Font, s14, Segoe UI Variable Display Semib
Gui Add, DropDownList, x1032 y120 w61 gLabel vInsert, ]||>|*|!|@|*|^|`%|&
Gui, Show 
Gui, Submit, NoHide


Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s16, Segoe UI Variable Display Semib
Gui Add, Text, x824 y122 w150 h53, "Insert" Key:
Gui Font
Gui Font, s9, Segoe UI
Gui Add, CheckBox,  x824 y312 w228 h58 gLabel vSlangCorrect +Checked,  Internet Slang Expand
Gui, Show 
Gui, Submit, NoHide


Gui Submit, Nohide
Gui Add, CheckBox,  x824 y256 w228 h58 gLabel vInsertEnabled +Checked,  Quick Type
Gui, Show 
Gui, Submit, NoHide


Label:
Gui, Submit, NoHide

Gui Add, Edit, x824 y184 w264 h21, Put your name here! (for quick type feature)
Gui Add, Edit, x824 y216 w264 h21, Put your email here! (for quick type feature)
Gui Font
Gui Font, s20 cRed
Gui Add, Text, x1088 y216 w23 h23 +0x200 0x00000000, *
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20 cRed
Gui Add, Text, x1088 y184 w23 h23 +0x200 0x00000000, *
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20 cRed
Gui Add, Text, x16 y360 w13 h23 +0x200 0x00000000, *
Gui Font
Gui Font, s9, Segoe UI
Gui Add, Text, x32 y360 w744 h43 0x00000000, This program will NOT sell your personal information! Your name/email is required for the quick type feature (]em for email and ]na for name) but you can disable this feature if you want. If your still concerned about your privacy, this program is                        so you can check the code!
Gui Add, Link, x606 y375 w67 h16 0x00000000, <a href="https://github.com/remaster2011/SCorrect">open source</a>
Gui Add, Text, x416 y8 w2 h314 +0x1 +0x10 0x00000000
Gui Add, Text, x792 y8 w2 h369 +0x1 +0x10

Gui Show, w1154 h453, SCorrect Panel
Return
Return
Return
Return
Return
#if SlangCorrect = 1 ; If the slangcorrect var is 1, it will enable the internet slang corrector.
:*:ty::thank you
:*:idk::i dont know
:*:idm::i dont mind
:*:idr::i dont remember
:*:idc:: i dont care
:*:idrc::i dont really care
:*:atm::at the moment
:*:smh::shaking my head
:*:ig::i guess
:*:yw::your welcome
:*:brb::be right back
:*:btw::by the way
:*:g2g::got to go
:*:gtg::got to go
:*:lmk::let me know
:*:faq::frequently asked questions
:*:ama::ask me anything
:*:imho::in my humble opinion
:*:asap::as soon as possible
:*:ftw::for the win
:*:fyi::for your information
:*:gr8::great
:*:hru::how are you
:*:m8::mate
:*:tltr::too long to read
:*:qap::quick as possible
:*:incydk::in case you didn't know
:*:vbd::very big deal
:*:l8tr::later
:*:2mi::too many information
:*:2nite::tonight
:*:tmrw::tommorow
:*:2mrw::tommorow
:*:2m::tommorow
:*:a/n::author's note
:*:abd::already been done
:*:abp::already been posted
:*:abs::absolutely
:*:alr::alright
:*:sry::sorry
:*:srry::sorry
return
#if Insert = "]"
:*:]em::
SendInput %email%
return
#if Insert = ">"
:*:>em::
SendInput %email%
return
#if Insert = "#"
:*:#em::
SendInput %email%
return
#if Insert = "!"
:*:!em::
SendInput %email%
return
#if Insert = "@"
:*:@em::
SendInput %email%
return
#if Insert = "*"
:*:*em::
SendInput %email%
return
#if Insert = "^"
:*:^em::
SendInput %email%
return
#if Insert = "%"
:*:%em::
SendInput %email%
return
#if Insert = "&"
:*:&em::
SendInput %email%
return
#if Insert = "]"
:*:]na::
SendInput %name%
return
#if Insert = ">"
:*:>na::
SendInput %name%
return
#if Insert = "#"
:*:#na::
SendInput %name%
return
#if Insert = "!"
:*:!na::
SendInput %name%
return
#if Insert = "@"
:*:@na::
SendInput %name%
return
#if Insert = "*"
:*:*n::
SendInput %name%
return
#if Insert = "^"
:*:^na::
SendInput %name%
return
#if Insert = "%"
:*:%na::
SendInput %name%
return
#if Insert = "&"
:*:&na::
SendInput %name%
return
#if Insert = "]"
::]t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = ">"
::>t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "#"
::#t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "!"
::!t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "@"
::@t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "*"
::*t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "^"
::^t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "%"
::%t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "&"
::&t::
FormatTime, Time,, h:mm tt
SendInput %Time%
return
#if Insert = "]"
::]td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = ">"
::>td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "#"
::#td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "!"
::!td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "@"
::@td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "*"
::*td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "^"
::^td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "%"
::%td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "&"
::&td::
FormatTime, TimeDate,, M/d/yyyy h:mm tt
SendInput %TimeDate%
return
#if Insert = "]"
::]d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = ">"
::>d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "#"
::#d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "!"
::!d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "@"
::@d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "*"
::*d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "^"
::^d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "%"
::%d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return
#if Insert = "&"
::&d::
FormatTime, Date,, M/d/yyyy
SendInput %Date%
return