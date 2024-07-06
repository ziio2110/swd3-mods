-- 觸發事件
OnEvent = OnEvent or {}
OnEventValue = OnEventValue or {}
-- 系統啟動觸發
OnEvent.SysInit = OnEvent.SysInit or {}
-- 遊戲開始觸發
OnEvent.GameStart = OnEvent.GameStart or {}
-- 地圖載入前觸發
OnEvent.MapLoading = OnEvent.MapLoading or {}
-- 地圖載入後觸發
OnEvent.MapLoaded = OnEvent.MapLoaded or {}
-- 選單系統繪製後
OnEvent.DrawMenuAfter = OnEvent.DrawMenuAfter or {}

-- 系統初始化
function OnEvent.SysInit.main()
    log("SysInit init : main")
end
OnEvent.SysInit[1] = function ()
    log("SysInit init test : 1")
end
OnEvent.SysInit[2] = function ()
    log("SysInit init test : 2")
end

function SysInitTEST()
    local where = GetWhere(2)
    log("SysInitTEST where test : "..where)
end

OnEvent.SysInit[3] = function ()
    log("SysInit init test : 3")
    local where = GetWhere()
    log("where test : "..where)
    SysInitTEST()
end

-- 遊戲開始觸發
function OnEvent.GameStart.main()
    GameFunc.FlagOff(23) -- 可以進入煉妖壺 off
    GameFunc.FlagOff(73) -- 煉妖功能 off
    GameFunc.FlagOn(30) -- Player 1 on
    GameFunc.FlagOff(31) -- Player 2 off
    GameFunc.FlagOff(32) -- Player 3 off
    GameFunc.FlagOff(33) -- Player 4 off

    GameFunc.FlagOff(21) -- 角色奇術選單的 "武術","醫術" off

    GameFunc.PlayerGolds = 9999999 -- 初始金錢

    -- 給主角一開始的道具
    ItemFunc.AddItem(621,999) -- 藥草
    ItemFunc.AddItem(730,1) -- 中國陶器
    ItemFunc.AddItem(792,1) -- 神魔異事錄

end

-- 進入大地圖則切換小角色圖
function OnEvent.MapLoading.main(ToMapID,x,y,ACT,QQ,DIR,Flag)
    if GameData.MapDetail[ToMapID].isBigMap==true then
        OnEventValue.ACT=96 --小型賽特

        --在中東大地圖上 就換成騎駱駝
        if  ToMapID==6 or       -- 兩合流域
            ToMapID==8 or       -- 西域
            ToMapID==200 then   -- 敘利亞地圖
            if GameFunc.PlayerItemCount(402) > 0 then --檢查是否有駱駝
                OnEventValue.ACT=95 --回傳 小型賽特 騎駱駝
            end
        end
    end
end
function OnEvent.MapLoaded.main()
    log("OnEvent.MapLoaded.test1")
    --log ("player x,y="..tostring(char[1].baseX)..","..tostring(char[1].baseY))
    --log ("Function.CheckEqu(123)="..tostring(res))

end

-- 選單繪製後，顯示滑鼠座標
function OnEvent.DrawMenuAfter.main()
    if Setting.ShowMenuMousePos then
        local str = string.format("%d %d",InputFunc.MouseX,InputFunc.MouseY)
        local fcolor = DrawFunc.Color(192,80,87,190) -- 文字顏色 白色
        local bcolor = DrawFunc.Color(46,32,18,190) -- 字影色 Alpha為0=透明
        StringFunc.DrawString(str,32,450, 0, fcolor, bcolor ,1)
    end
end

-- 按了取消
OnEvent.CancelClick = OnEvent.CancelClick or {}
function OnEvent.CancelClick.main()

end
