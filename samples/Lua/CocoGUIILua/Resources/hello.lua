-- cclog
cclog = function(...)
    print(string.format(...))
end

-- for CCLuaEngine traceback
function __G__TRACKBACK__(msg)
    cclog("----------------------------------------")
    cclog("LUA ERROR: " .. tostring(msg) .. "\n")
    cclog(debug.traceback())
    cclog("----------------------------------------")
end

local function main()
    -- avoid memory leak
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 5000)

    require "hello2"
    cclog("result is " .. myadd(1, 1))

    ---------------

    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    local origin = CCDirector:sharedDirector():getVisibleOrigin()

     
    -- create farm
    local function createLayerFarm()
		function OnbntEvent(name,Obj)
			
			local widget = tolua.cast( Obj, "UIWidget"); 
			widget:stopAllActions(); 

			local tt = CCTintTo:create(0.5, 0, 255, 0);
			local tt2 = CCTintTo:create(0.5, 255, 255, 255);
			local fo = CCFadeOut:create(0.5);
			local fi = CCFadeIn:create(0.5);
			local arr = CCArray:create()
			arr:addObject(CCMoveTo:create(1.0, ccp(300, 300)))
			arr:addObject(CCScaleTo:create(1, 0.5))
			arr:addObject(CCMoveTo:create(1.0, ccp(127, 96)))
			arr:addObject(CCScaleTo:create(1.0, 1.0))
			arr:addObject(CCRotateTo:create(0.5, 720))
			arr:addObject(CCRotateTo:create(0.5, 0))
			arr:addObject(tt)
			arr:addObject(tt2)
			arr:addObject(fo)
			arr:addObject(fi) 

			local seq = CCSequence:create( arr )
			if seq == nil then
					cclog("seq== nil ")
			else 
				local pAction = tolua.cast( seq, "CCAction"); 
				widget:runAction(pAction)
			end
		end

        local layerFarm = UILayer:create() 
  
		layerFarm:setTouchEnabled(true)
		local pWnd = UIHelper:instance():createWidgetFromJsonFileWithAdapt("cocosgui/CocoGUISample.json",true,true)
		layerFarm:addWidget(pWnd);

		local bnt =layerFarm:getWidgetByName("animationbutton") 
		if bnt ~= nil then
			bnt:addHandleOfControlEvent(OnbntEvent, ScriptEventWidgetReleaseUp)
		end

		return layerFarm
    end

 

    -- play background music, preload effect

    -- uncomment below for the BlackBerry version
    -- local bgMusicPath = CCFileUtils:sharedFileUtils():fullPathForFilename("background.ogg")
    local bgMusicPath = CCFileUtils:sharedFileUtils():fullPathForFilename("background.mp3")
    SimpleAudioEngine:sharedEngine():playBackgroundMusic(bgMusicPath, true)
    local effectPath = CCFileUtils:sharedFileUtils():fullPathForFilename("effect1.wav")
    SimpleAudioEngine:sharedEngine():preloadEffect(effectPath)

    -- run
    local sceneGame = CCScene:create()
    sceneGame:addChild(createLayerFarm()) 
    CCDirector:sharedDirector():runWithScene(sceneGame)
end

xpcall(main, __G__TRACKBACK__)
