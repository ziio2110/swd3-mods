-- New game datas

GameData = GameData or {}
GameData.NewGame = GameData.NewGame or {}

-- 遊戲起點地圖編號
GameData.NewGame.StartMapID = 81
-- 遊戲起點地圖座標X,Y
GameData.NewGame.StartMapX = 13
GameData.NewGame.StartMapY = 28
-- 遊戲起點主角資料
GameData.NewGame.mainACT = 1
GameData.NewGame.mainQQ = 0
GameData.NewGame.mainDir = 3
GameData.NewGame.mainGUID = 1
-- 遊戲起點劇情function
GameData.NewGame.Script = 'TALK100'

-- 主角初始設定
GameData.NewGameChar = GameData.NewGameChar or {}

-- 賽特
GameData.NewGameChar[1] = {
    Name = 'ItemName1',
    Level=2,
    EXP=15,TotalEXP=20,
    HP=4800,HPMax=4800, MP=5000,MPMax=5000, SP=1000,SPMax=1000,
    STR=100,Stamina=60,WIS=80,SPD=240,Friend=70,AGI=80,
    Luck=2,Dodge=1,GoodEvil=-100,
    AttrFire=-20,AttrIce=-20,
    AI=0,
    ACT=1,
    ItemTempID = 1
}
--妮可
GameData.NewGameChar[2] = {
    Name = 'ItemName2',
    Level=7,
    EXP=90,TotalEXP=90,
    HP=80,HPMax=80, MP=43,MPMax=43, SP=30,SPMax=30,
    STR=20,Stamina=18,WIS=32,SPD=35,Friend=12,AGI=25,
    Luck=2,Dodge=3,GoodEvil=-100,
    AttrLight=2,AttrDark=-4,
    AI=0,
    ACT=2,
    ItemTempID = 2
}
--卡瑪
GameData.NewGameChar[3] = {
    Name = 'ItemName8',
    Level=25,
    EXP=80,TotalEXP=1080,
    HP=700,HPMax=700, MP=385,MPMax=385, SP=210,SPMax=210,
    STR=78,Stamina=65,WIS=100,SPD=42,Friend=30,AGI=41,
    Luck=3,Dodge=5,GoodEvil=0,
    AttrWind=-4,AttrLight=-2,
    AI=0,
    ACT=8,
    ItemTempID = 8
}
--李靖
GameData.NewGameChar[4] = {
    Name = 'ItemName17',
    Level=35,
    EXP=2500,TotalEXP=2500,
    HP=2300,HPMax=2300, MP=420,MPMax=420, SP=400,SPMax=400,
    STR=125,Stamina=90,WIS=100,SPD=40,Friend=35,AGI=46,
    Luck=6,Dodge=4,GoodEvil=100,
    AttrLight=-6,AttrDark=2,
    AI=0,
    ACT=17,
    ItemTempID = 17
}

--角色初始攜帶技能
GameData.NewGameSkill = GameData.NewGameSkill or {}
GameData.NewGameSkill[1]={1634 }
GameData.NewGameSkill[2]={1533 ,1640 }
GameData.NewGameSkill[3]={1521,1519,1520,1534,1574,1590,1542,1543,1645 }
GameData.NewGameSkill[4]={1529,1530,1525,1545,1546,1547,1561,1570,1568,1583,1579,1580,1593,1649 }

-- 角色初始裝備
-- [Weapon]武器 [Head]頭部 [Chest]身體 [Hand]手部 [Foot]腳部 [Acce1]飾品1 [Acce2]飾品2
-- [Guardian1]護駕1 [Guardian2]護駕2 [Sutra1]法寶1 [Sutra2]法寶2
GameData.NewGameEqu = GameData.NewGameEqu or {}
GameData.NewGameEqu[1]={
    Weapon=501,
    Chest=851,
    Foot=906,
}
GameData.NewGameEqu[2]={
    Weapon=521,
    Head=1019,
    Chest=1004,
    Foot=906,
}
GameData.NewGameEqu[3]={
    Weapon=537,
    Head=1024,
    Chest=1007,
    Hand=1043,
    Foot=1033,
}
GameData.NewGameEqu[4]={
    Weapon=554,
    Chest=863,
    Hand=875,
    Foot=918,
    Acce1=996,
}
