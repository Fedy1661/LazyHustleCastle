#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; version := "1.0"

; oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
; oWhr.Open("GET", "https://raw.githubusercontent.com/Fedy1661/test/main/version.ini", false)
; oWhr.Send()
; whr.WaitForResponse()
; if oWhr.status == 200{
;     if oWhr.ResponseText != version{
;         MsgBox, 4,, Your version is outdated. Do you want to update LazyHustleCastle?
;         IfMsgBox No
;         {}
;         else {
;             ; UrlDownloadToFile, https://github.com/Fedy1661/GetMyRepo/archive/refs/heads/master.zip, %A_ScriptDir%\master.zip
;             path := A_ScriptDir "\master.zip"
;             psh := ComObjCreate("Shell.Application")
;             psh.Namespace("dest").CopyHere( psh.Namespace(path).items, 4|16)
;         }

;     }
; }

HasVal(haystack, needle) {
    if !(IsObject(haystack)) || (haystack.Length() = 0)
        return 0
    for index, value in haystack
        if (value = needle)
        return index
    return 0
}

class Button {
    __New(pos1,pos2){
        this.pos1 := pos1
        this.pos2 := pos2
        this.center := this._getCenter()
    }
    _getCenter(){
        x := this.pos1["x"] + ((this.pos2["x"] - this.pos1["x"]) / 2)
        y := this.pos2["y"] + ((this.pos1["y"] - this.pos2["y"]) / 2)
        return {x:x,y:y}
    }
    print(){
        MsgBox % this.pos1["x"] this.pos1["y"]
    }
    isExists(){
        PixelGetColor, color1, this.pos1["x"], this.pos1["y"] 
        PixelGetColor, color2, this.pos2["x"], this.pos2["y"]
        return hasVal(this.pos1["colors"], color1) or hasVal(this.pos2["colors"], color2)
    }
    click(){
        MouseClick, left, this.center["x"], this.center["y"], , 0
    }
}

startAHikeForDiamonds := new Button({x: 346,y: 639,colors: [0xF57000 , 0xFF7500]}, {x: 351,y: 631,colors: [0xF59808, 0xFF9E08]})
startAHikeForFree := new Button({x: 289,y: 644,colors: [0x20B75F , 0x21BE63]}, {x: 453,y: 601,colors: [0x2FCA6C, 0x31D270]})
postTheBest := new Button({x:352,y:389,colors:[0xCBB720,0xD3BE21]},{x:544,y:359,colors:[0xE6DA56,0xEFE35A]})
confirmTheTeam := new Button({x:386,y:665,colors:[0x129D08,0x13A308]},{x:529,y:614,colors:[0x16CE69,0x17D76D]})
warningNotFullTeam := new Button({x:390,y:510,colors:[0x109C08,0x11A208]},{x:523,y:449,colors:[0x17D26E,0x18DB73]})
hikeIsOver := new Button({x:357,y:605,colors:[0x129C08,0x12A308]},{x:520,y:543,colors:[0x17D26E,0x18DB73]})
hikeGetReward := new Button({x: 360,y: 598,colors: [0x0CBB4C , 0x0DC34F]}, {x: 519,y: 547,colors: [0x17D26E, 0x18DB73]})
; new Button({x:,y:,colors:[]},{x:,y:,colors:[]})
goToBattle := new Button({x:781,y:645,colors:[0x22B85F,0x23C063]},{x:929,y:605,colors:[0x2FCA6C,0x31D270]})
isNobodyCanFight := new Button({x: 783,y: 644,colors: [0x6D6D6D , 0x717171]}, {x: 929,y: 604,colors: [0x7C7C7C, 0x818181]})
getRewardFromTheHike := new Button({x: 853,y: 126,colors: [0x00A7ED , 0x00AEF7]}, {x: 961,y: 89,colors: [0x0FBFF5, 0x10C7FF]})
confrimGetRewardFromTheHike := new Button({x: 464,y: 645,colors: [0x0CBB4C , 0x0DC34F]}, {x: 644,y: 594,colors: [0x17D26E, 0x18DB73]})
Ankh := new Button({x:138,y:251,colors:[0x0000FF]},{x:138,y:251,colors:[0x0000FF]})
watchAd := new Button({x: 667,y: 604,colors: [0x1D61DB , 0x1E65E4]}, {x: 839,y: 551,colors: [0x068CE8, 0x0792F1]}) ; rewrite
getReward := new Button({x: 695,y: 582,colors: [0x17D26E , 0x18DB73]}, {x: 825,y: 561,colors: [0x17D26E, 0x18DB73]})
continueInAd := new Button({x: 596,y: 455,colors: [0xF7823E , 0xF7823E]}, {x: 671,y: 429,colors: [0xF7823E, 0xF7823E]})
inviteToDungeon := new Button({x: 479,y: 543,colors: [0x129D08 , 0x13A308]}, {x: 634,y: 479,colors: [0x0CBB4C, 0x0DC34F]})
battleWasEnd := new Button({x:573,y:709,colors:[0x11A208]},{x:715,y:648,colors:[0x18DB73]})
startNewBattle := new Button({x:718,y:617,colors:[0x108B0F]},{x:885,y:556,colors:[0x0DC34F]})
warningExists := new Button({x:388,y:513,colors:[0x107A13,0x1858CE,0x1754C6]},{x:529,y:447,colors:[0x0DC34F,0x0892EF,0x088CE6]})
openChat := new Button({x: 22,y: 349,colors: [0xFFFFFF , 0xFFFFFF]}, {x: 22,y: 349,colors: [0xFFFFFF, 0xFFFFFF]})
map := new Button({x: 31,y: 682,colors: [0xA5F7F9 , 0xA5F7F9]}, {x: 136,y: 626,colors: [0x9CE7FF, 0x9CE7FF]})
invasion := new Button({x: 28,y: 574,colors: [0x3F51FF , 0x3F51FF]}, {x: 88,y: 516,colors: [0x3F51FF, 0x3F51FF]})
invasionPoint := new Button({x: 640,y: 427,colors: [0x4A45A5 , 0x4A45A5]}, {x: 654,y: 403,colors: [0x0F204C, 0x0F204C]})
showInvasionPoint := new Button({x: 464,y: 683,colors: [0x129D08 , 0x13A308]}, {x: 646,y: 623,colors: [0x15CD67, 0x16D56B]})
bayOfGems := new Button({x: 651,y: 631,colors: [0x7EBAE4 , 0x7EBAE4]}, {x: 791,y: 622,colors: [0x200013, 0x200013]})

adTimer := new Button({x: 673,y: 209,colors: [0xFAF8FA , 0xFAF8FA]}, {x: 842,y: 196,colors: [0xFAFAFA, 0xFAFAFA]})
closeAd := new Button({x: 856,y: 205,colors: [0x7A7A7A , 0x7A7A7A]}, {x: 863,y: 195,colors: [0xF7F7F7, 0xF7F7F7]})

quiteFromRewards := new Button({x: 1047,y: 90,colors: [0x0F2EDE , 0x1030E7]}, {x: 1077,y: 63,colors: [0x0F2EDE, 0x1030E7]})

magicActivity := new Button({x: 244,y: 621,colors: [0x232339 , 0x232339]}, {x: 453,y: 278,colors: [0x4EAA94, 0x4EAA94]})

startAHikeFor100Diamonds := new Button({x: 344,y: 639,colors: [0xF5841E , 0xFF891F]}, {x: 348,y: 631,colors: [0xF5F510, 0xFFFF10]})

lastInvasionFightIsOver := new Button({x: 480,y: 705,colors: [0x0F9C08 , 0x10A208]}, {x: 629,y: 643,colors: [0x0EBB4D, 0x0EC350]})
getRewardFromInvasion := new Button({x: 620,y: 672,colors: [0x0F9C08 , 0x10A208]}, {x: 797,y: 608,colors: [0x0CBB4C, 0x0DC34F]})

; BOSSES
sadVelikogoDreva := new Button({x: 537,y: 288,colors: [0x27AE84 , 0x27AE84]}, {x: 555,y: 262,colors: [0x043E60, 0x043E60]})
grotNepobedimogo := new Button({x: 548,y: 277,colors: [0x9492DE , 0x9492DE]}, {x: 557,y: 255,colors: [0x00F7F7, 0x00F7F7]})
ozeroChudicha := new Button({x: 544,y: 277,colors: [0x50873C , 0x50873C]}, {x: 566,y: 259,colors: [0x24B8E6, 0x24B8E6]})
pesheraKorotishki := new Button({x: 565,y: 279,colors: [0x1C2CA5 , 0x1C2CA5]}, {x: 579,y: 256,colors: [0xB8AE62, 0xB8AE62]})

dungeonGoHereLeader := new Button({x: 842,y: 619,colors: [0xD86D13 , 0xD86D13]}, {x: 844,y: 611,colors: [0x29DFF7, 0x29DFF7]})

if not WinExist("ahk_exe HC.exe") {
    Run, "mailrugames://play/0.2002058"
} 
Loop{
    If WinExist("ahk_exe HC.exe")
    {
        X := (A_ScreenWidth/2)-(1112/2)
        Y := (A_ScreenHeight/2)-(740/2)
        ; MsgBox, %X% " " %Y%
        WinMove, ahk_exe HC.exe, , X, Y, 1112, 740
        WinActivate, ahk_exe HC.exe
        break
    }
    sleep 1000
}
dungeonGoToBattle := new Button({x: 819,y: 645,colors: [0x119F0A , 0x12A50B]}, {x: 1002,y: 584,colors: [0x17D26E, 0x18DB73]})
dungeonGoToBattleLeader := new Button({x: 872,y: 619,colors: [0xDAC04E , 0xDAC04E]}, {x: 876,y: 613,colors: [0x01AFFE, 0x01AFFE]})
dungeonGoToBattleLeader2 := new Button({x: 832,y: 611,colors: [0x31EEFA , 0x31EEFA]}, {x: 838,y: 606,colors: [0xFFFCD1, 0xFFFCD1]})
dungeonGoToBattleLeader3 := new Button({x: 829,y: 607,colors: [0x31EFF7 , 0x31EFF7]}, {x: 836,y: 605,colors: [0xDB7413, 0xDB7413]})
dungeonGoToBattleLeader4 := new Button({x: 829,y: 610,colors: [0x31EFF7 , 0x31EFF7]}, {x: 836,y: 608,colors: [0xFFFDD3, 0xFFFDD3]})
dungeonGoToBattleLeader5 := new Button({x: 830,y: 606,colors: [0x31EFF7 , 0x31EFF7]}, {x: 837,y: 603,colors: [0xDA9F60, 0xDA9F60]})
dungeonGoHere := new Button({x: 821,y: 646,colors: [0x0F9C08 , 0x10A208]}, {x: 1002,y: 587,colors: [0x17D26E, 0x18DB73]})
dungeonHome := new Button({x: 485,y: 706,colors: [0x0FA419 , 0x10AA1A]}, {x: 627,y: 646,colors: [0x17D26E, 0x18DB73]})
dungeonGetReward := new Button({x: 488,y: 508,colors: [0x0FA516 , 0x10AC17]}, {x: 622,y: 459,colors: [0x0FBB4F, 0x10C352]})
dungeonGetReward2 := new Button({x: 489,y: 569,colors: [0x129D08 , 0x13A308]}, {x: 623,y: 518,colors: [0x0CBB4C, 0x0DC34F]})
dungeonGetReward2 := new Button({x: 489,y: 487,colors: [0x129D08 , 0x13A308]}, {x: 613,y: 435,colors: [0x17D26E, 0x18DB73]})
dungeonImLeader := new Button({x: 376,y: 666,colors: [0x00F6FF , 0x00F6FF]}, {x: 376,y: 657,colors: [0x00F6FF, 0x00F6FF]})
dungeonClosePoint := new Button({x: 1019,y: 145,colors: [0xF5F5F5 , 0xFFFFFF]}, {x: 1031,y: 124,colors: [0x0F2EDE, 0x1030E7]})
dungeonVSBattle := new Button({x: 539,y: 202,colors: [0x0069A7 , 0x0069A7]}, {x: 563,y: 176,colors: [0x04BCFB, 0x04BCFB]})
dungeonInfo := new Button({x: 24,y: 75,colors: [0xBEAB00 , 0xC6B200]}, {x: 46,y: 59,colors: [0xF5F5F5, 0xFFFFFF]})
dungeonInfo2 := new Button({x: 29,y: 79,colors: [0x4D4500 , 0x4D4500]}, {x: 48,y: 58,colors: [0x636261, 0x636261]})
dungeonCloseReward := new Button({x: 1061,y: 73,colors: [0xF5F5F5 , 0xFFFFFF]}, {x: 1070,y: 51,colors: [0x0F2EDE, 0x1030E7]})
dungeonBossPoint := new Button({x: 419,y: 439,colors: [0x0505DC , 0x0505DC]}, {x: 419,y: 439,colors: [0x0505DC, 0x0505DC]})
dungeonRewardChest := new Button({x: 673,y: 168,colors: [0xD2CDA4 , 0xD6CFAB]}, {x: 728,y: 120,colors: [0xE2E0D7, 0xEFEDDF]})
dungeonRewardEfir := new Button({x: 478,y: 167,colors: [0xD0CCA7 , 0xD1C9AE]}, {x: 531,y: 121,colors: [0xD9D7B4, 0xDBD7BD]})
dungeonRewardFragment := new Button({x: 600,y: 159,colors: [0xE3B876 , 0xECC07B]}, {x: 608,y: 135,colors: [0xE3B876, 0xECC07B]})
dungeonTrueComplete := new Button({x: 915,y: 701,colors: [0x0CBB4C , 0x0DC34F]}, {x: 1081,y: 650,colors: [0x17D26E, 0x18DB73]})
dungeonTrueCompleteYes := new Button({x: 391,y: 511,colors: [0x129D08 , 0x13A308]}, {x: 527,y: 448,colors: [0x0CBB4C, 0x0DC34F]})
dungeonCloseInfo := new Button({x: 465,y: 636,colors: [0x0CBB4C , 0x0DC34F]}, {x: 643,y: 584,colors: [0x17D26E, 0x18DB73]})
dungeonSelectingAnEffect := new Button({x: 422,y: 123,colors: [0xCCBD00 , 0xCCBD00]}, {x: 589,y: 107,colors: [0xFFFFFF, 0xFFFFFF]})
dungeonKillMyself := new Button({x: 467,y: 111,colors: [0x222000 , 0x222000]}, {x: 649,y: 115,colors: [0x0E0D00, 0x0E0D00]})
dungeonMyTeam := new Button({x: 575,y: 121,colors: [0x94B9D0 , 0x9AC1D9]}, {x: 904,y: 86,colors: [0x94B9D0, 0x9AC1D9]})
dungeonChooseMenu := new Button({x: 82,y: 663,colors: [0xCBBB00 , 0xCBBB00]}, {x: 1042,y: 123,colors: [0x0F2EDE, 0x1030E7]})
dungeonHomeCastle := new Button({x: 35,y: 685,colors: [0xB5C7CE , 0xB5C7CE]}, {x: 104,y: 590,colors: [0x2124EF, 0x2124EF]})
dungeonInvite := new Button({x: 888,y: 674,colors: [0x22B85F , 0x23C063]}, {x: 1055,y: 636,colors: [0x2FCA6C, 0x31D270]})
toggleInvasion:= true
toggleHike := true
toggleWatchAd := true
toggleDungeon := true

simplificationMagicActivity:
    if magicActivity.isExists(){
        MsgBox WAKEUP!
    }
return

F1::
    toggleInvasion := !toggleInvasion
    if(toggleInvasion) {
        SetTimer, simplificationInvasion, off
    } else {
        SetTimer, simplificationInvasion, 100
    }
return

F2::
    toggleHike := !toggleHike
    if(toggleHike) {
        SetTimer, simplificationHike, off
    } else {
        SetTimer, simplificationHike, 100
    }
return

F3::
    toggleWatchAd := !toggleWatchAd
    if(toggleWatchAd) {
        SetTimer, simplificationWatchAd, off
    } else {
        SetTimer, simplificationWatchAd, 800
    }
return

F4::
    toggleDungeon := !toggleDungeon
    if(toggleDungeon) {
        SetTimer, simplificationDungeon, off
    } else {
        SetTimer, simplificationDungeon, 250
    }
return

simplificationWatchAd:
    if watchAd.isExists(){
        watchAd.click()
    } else if getReward.isExists(){
        getReward.click()
    } else if continueInAd.isExists(){
        continueInAd.click()
    } if not adTimer.isExists() and closeAd.isExists(){
        closeAd.click()
    }
Return

simplificationHike:
    if startAHikeForDiamonds.isExists() or startAHikeFor100Diamonds.isExists(){
        toggleHike := !toggleHike
        SetTimer, simplificationHike, off
        MsgBox DIAMONDS
    }
    else if quiteFromRewards.isExists(){
        quiteFromRewards.click()
    }
    else if map.isExists(){
        map.click()
    }else if bayOfGems.isExists(){
        bayOfGems.click()
    }
    else if startAHikeForFree.isExists() and not startAHikeFor100Diamonds.isExists(){
        startAHikeForFree.click()
    }
    else if postTheBest.isExists(){
        postTheBest.click()
        sleep, 300
        confirmTheTeam.click()
    } 
    else if warningNotFullTeam.isExists(){
        warningNotFullTeam.click()
    } else if goToBattle.isExists(){
        gotoBattle.click()
    } else if Ankh.isExists(){
        sleep, 500
        ankh.click()
    }else if isNobodyCanFight.isExists(){
        getRewardFromTheHike.click()
    } else if confrimGetRewardFromTheHike.isExists(){
        confrimGetRewardFromTheHike.click()
    } else if hikeGetReward.isExists(){
        hikeGetReward.click()
    }
Return

simplificationInvasion:
    PixelSearch, Px, Py, 0, 0, 1112, 740, 0x4A45A5, 0, fast
    if(Px > 0 and Py > 0){
        MouseClick, Left, Px, Py
        SetTimer, simplificationInvasion, 100

    }
    else if battleWasEnd.isExists()
    {
        battleWasEnd.click()
    }
    else if startNewBattle.isExists()
    {
        startNewBattle.click()
    }
    else if warningExists.isExists()
    {
        warningExists.click()
    } else if map.isExists(){
        map.click()
    } else if showInvasionPoint.isExists(){
        showInvasionPoint.click()
        SetTimer, simplificationInvasion, 500

    }
    else if invasion.isExists(){
        invasion.click()
    } else if lastInvasionFightIsOver.isExists(){
        lastInvasionFightIsOver.click()
    } else if getRewardFromInvasion.isExists(){
        getRewardFromInvasion.click()
        SetTimer, simplificationInvasion, Off

    }

return

simplificationDungeon:
    if not dungeonSelectingAnEffect.isExists() or dungeonKillMyself.isExists()
    { 
        reverse := false
        if dungeonVSBattle.isExists() or dungeonKillMyself.isExists(){
            PixelSearch, Px, Py, 1016, 405, 93, 567, 0x85F76E,0, fast ; Alive hero
            reverse := true
        } else {
            ; {x: 223,y: 527,colors: [0xDCFED3 , 0xDCFED3]}, {x: 989,y: 506,colors: [0xE7FFDE, 0xE7FFDE]}
            ; {x: 718,y: 520,colors: [0xFFFFFF , 0xFFFFFF]}, {x: 717,y: 520,colors: [0xFFFFFF, 0xFFFFFF]}
            PixelSearch, Px, Py, 93, 567, 1016, 405, 0x85F76E,0, fast ; Alive hero
            ; PixelSearch, Px, Py, 215, 530, 996, 508, 0xFFFFFF,0, fast ; Alive hero
        }

        PixelSearch, P2x, P2y, 93, 392, 1009, 160, 0x76AF60,0, fast ; FreeSpaceForHero
        PixelSearch, P3x, P3y, 93, 392, 1009, 160, 0x31D270,0, fast ;ReadyButton
        PixelSearch, P6x, P6y, 93, 392, 1009, 160, 0x2FCA6C,0, fast ;ReadyButton
        PixelSearch, P7x, P7y, 93, 392, 1009, 160, 0x2035F3,0, fast ;CancelButton
        PixelSearch, P8x, P8y, 93, 392, 1009, 160, 0x2137FD,0, fast ;CancelButton
        isThereAFreeSpaceForHero := P2x > 0 and P2y > 0
        isThereAReadyButton := (P3x > 0 and P3y > 0) or (P6x > 0 and P6y > 0)
        isThereACancelButton := (P7x > 0 and P7y > 0) or (P8x > 0 and P8y > 0)
        isThereAnAliveHero := Px > 0 and Py > 0
        if ((!isThereAFreeSpaceForHero and isThereAReadyButton) or (!isThereAnAliveHero and isThereAFreeSpaceForHero and isThereAReadyButton)){
            MouseClick, Left, P3x, P3y
            MouseClick, Left, P6x, P6y
            sleep 300
            return
        }else if (isThereAFreeSpaceForHero and isThereAnAliveHero ){
            if isThereACancelButton {
                MouseClick, Left, P7x, P7y
                MouseClick, Left, P8x, P8y
                sleep 300
            } else {
                if reverse {
                    MouseClick Left, Px-20, Py-50, , , D
                } else {
                    MouseClick Left, Px+20, Py-50, , , D
                }
                sleep 200
                MouseMove, P2x, P2y
                sleep 200
                Click up
                sleep 50
            }
            return
        } 
    }
    PixelSearch, P5x, P5y, 0, 0, 1112, 740, 0x5A5400,0, fast ; Идем сюда
    ; {x: 576,y: 496,colors: [0x293BD1 , 0x293BD1]}, {x: 576,y: 496,colors: [0x293BD1, 0x293BD1]}
    PixelSearch, P4x, P4y, 0, 0, 1112, 740, 0x293BCE, 0, fast ; Dungeion Point
    PixelSearch, P9x, P9y, 0, 0, 1112, 740, 0x293BD1, 0, fast ; Dungeion Point
    IsThereADungeonPoint := P4x > 0 and P4y > 0
    if(IsThereADungeonPoint and dungeonImLeader.isExists() and dungeonHomeCastle.isExists()){
        MouseClick, Left, P4x, P4y-5
        ; SetTimer, simplificationDungeon, 100
    } else if(P9x > 0 and P9y > 0 and dungeonImLeader.isExists()){
        MouseClick, Left, P9x, P9y-5
        ; SetTimer, simplificationDungeon, 100
    } 
    else if (P5x > 0 and P5y > 0 and not dungeonImLeader.isExists() and not dungeonChooseMenu.isExists() and dungeonHomeCastle.isExists() ){
        MouseClick, Left, P5x+50, P5y+50
        sleep 1000
        PixelSearch, Px, Py, 0, 0, 1112, 740, 0x5A5400,0, fast ; Идем сюда
        if(P5x == Px and P5y == Py){
            MouseClick, Left, P5x-50, P5y+50

        }
        ; sleep 100
        ; MouseClick, Left, P5x-50, P5y+50
    } else if dungeonGoHere.isExists() and dungeonGoHereLeader.isExists() {
        dungeonGoHere.click()
    }
    else if dungeonGoToBattle.isExists() {
        ; {x: 818,y: 648,colors: [0x5D9606 , 0x5D9906]}, {x: 1006,y: 580,colors: [0x6DBB27, 0x6EBE28]}
        ; {x: 817,y: 633,colors: [0x129C08 , 0x13A308]}, {x: 1001,y: 569,colors: [0x17D26E, 0x18DB73]}
        ; {x: 837,y: 606,colors: [0xE5DC5E , 0xE5DC5E]}, {x: 837,y: 606,colors: [0xE5DC5E, 0xE5DC5E]}
        ; {x: 838,y: 607,colors: [0xCB6105 , 0xCB6105]}, {x: 838,y: 607,colors: [0xCB6105, 0xCB6105]}
        ; {x: 876,y: 619,colors: [0xFBC52B , 0xFBC52B]}, {x: 876,y: 619,colors: [0xFBC52B, 0xFBC52B]}
        ; {x: 840,y: 598,colors: [0x04B2FE , 0x04B2FE]}, {x: 840,y: 598,colors: [0x04B2FE, 0x04B2FE]}
        ; 0x9EF7FB
        ; {x: 845,y: 605,colors: [0x00AFFF , 0x00AFFF]}, {x: 845,y: 605,colors: [0x00AFFF, 0x00AFFF]}
        PixelSearch, Px, Py, 817, 633, 1001, 569, 0x00AFFF, 0, fast 
        PixelSearch, P2x, P2y, 817, 633, 1001, 569, 0x9EF7FB, 0, fast 
        PixelSearch, P3x, P3y, 817, 633, 1001, 569, 0xD48F3E, 0, fast 
        dungeonLeader := Px > 0 and Py > 0 or P2x > 0 and P2y > 0 or P3x > 0 and P3y > 0
        if dungeonLeader{
            dungeonGoToBattle.click() 
        } else {
            Send, {ESC}
        }
    } else if dungeonHome.isExists() {
        dungeonHome.click()
    }else if dungeonGetReward.isExists() {
        dungeonGetReward.click()
    }else if dungeonGetReward2.isExists() {
        dungeonGetReward2.click()
    } else if dungeonRewardChest.isExists() {
        dungeonRewardChest.click()
        MsgBox 100
    } else if dungeonCloseInfo.isExists() {
        dungeonCloseInfo.click()
    } else if dungeonMyTeam.isExists(){
        dungeonMyTeam.click()
    } else if dungeonTrueComplete.isExists() {
        dungeonTrueComplete.click()
        sleep 2000
        if dungeonTrueCompleteYes.isExists(){
            dungeonTrueCompleteYes.click()
        }
    } else if dungeonInvite.isExists(){
        dungeonInvite.click()
    }

return

F12::Reload
F9::
    a1 := dungeonSelectingAnEffect.isExists()
    a2 := dungeonVSBattle.isExists()
    a3 := dungeonKillMyself.isExists()
    a4 := dungeonGoToBattleLeader.isExists()
    MsgBox, %a1% " " %a2% " " %a3%
    ; oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    ; oWhr.Open("GET", "https://raw.githubusercontent.com/Fedy1661/test/main/version.ini", false)
    ; oWhr.Send()
    ; MsgBox, % oWhr.ResponseText
return
F7::
    Loop {
        PixelSearch, Px, Py, 0, 0, 1112, 740, 0x37FF94, 0, fast
        PixelGetColor, color, 888, Py
        PixelGetColor, color2, 888, 550
        if(color == 0x31D270){
            MouseClick, left, 888, %Py%
        }else if (color2 == 0x7C7C7C or color2 == 0x818181){
            break
        } else if inviteToDungeon.isExists(){
            inviteToDungeon.click()
        }
        Loop, 200{
            Send {WheelDown}
        }
        sleep 1000
    }
Return
^!z:: ; Control+Alt+Z POS1
    MouseGetPos, MouseX, MouseY ; определяем координаты мыши 
    PixelGetColor, color, %MouseX%, %MouseY% ; 
    X1 := MouseX
    Y1 := MouseY
    COLOR1 := color
return
^!x:: ; Control+Alt+Z POS2
    MouseGetPos, MouseX, MouseY ; определяем координаты мыши 
    PixelGetColor, color, %MouseX%, %MouseY% ; 
    X2 := MouseX
    Y2 := MouseY
    COLOR2 := color
return
^!c:: ; Control+Alt+Z POS_TNE_END
    PixelGetColor, color3, %X1%, %Y1% ; 
    PixelGetColor, color4, %X2%, %Y2% ; 
    clipboard := "{x: " X1 ",y: " Y1 ",colors: [" COLOR1 " , " COLOR3 "]}, {x: " X2 ",y: " Y2 ",colors: [" COLOR2 ", " COLOR4 "]}"
    MsgBox % clipboard
return

F8::
    ; PixelSearch, Ix, Iy, 0, 0, 1112, 740,0xE4966B, 10, fast
    ImageSearch, Ix, Iy, 0, 0, 1112, 740, *60 D:\Screenshot_2.jpg
    if ErrorLevel = 2
        MsgBox Cannot
    else if ErrorLevel = 1
        MsgBox Not found
    else
        MsgBox Was found at x=%FoundX%, y=%FoundY%.
    MouseMove, Ix, Iy
return