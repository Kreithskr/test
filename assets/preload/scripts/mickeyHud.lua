local targetBar;
local songTimeLength = 0
local songNameMickey = ''
local mickeyTweenObjects = {}
function onCreatePost()
    songNameMickey = songName
    if string.find(songNameMickey,'-',0,true) ~= nil then
        songNameMickey = string.gsub(songNameMickey,'-',' ')
    end
    if songName ~= 'Unknown Suffering' then
        songTimeLength = getProperty('songLength')
    else
        songTimeLength = 121200
        makeLuaSprite('unknownTime',nil,121200,0)
    end
    targetBar = screenWidth - 20

    setProperty('scoreTxt.visible',false)
    setProperty('timeBarBG.x',20)
    setProperty('timeBarBG.scale.x',3.25)
    setProperty('timeBarBG.scale.y',1.4)
    

    setProperty('timeTxt.visible',false)

    setProperty('timeBar.visible',false)

    


    local textMickeySize = 20
    if downscroll == false then
        setProperty('timeBar.y',screenHeight + 10 - (getProperty('timeBarBG.height') * getProperty('timeBarBG.scale.y')))
        makeLuaText('songTimeMickey','0:00 - 0:00',160,screenWidth/2 - 80,getProperty('timeBar.y') - 40)
        makeLuaText('scoreTextMickey','Score: 0',200,25,screenHeight - 150)
        makeLuaText('missesTextMickey','Misses: 0',200,25,screenHeight - 120)
        makeLuaText('acurracyTextMickey','Acurracy: 0',200,25,screenHeight - 90)
        makeLuaText('songNameTextMickey',songNameMickey,300,15,getProperty('timeBar.y') - 35)
        makeLuaText('sickTextMickey','Sick: 0',200,screenWidth - 100,screenHeight - 150)
        makeLuaText('goodTextMickey','Good: 0',200,screenWidth - 100,screenHeight - 120)
        makeLuaText('badTextMickey','Bad: 0',200,screenWidth - 100,screenHeight - 90)
        makeLuaText('shitTextMickey','Shit: 0',200,screenWidth - 100,screenHeight - 60)
    else
        setProperty('timeBar.y',5)
        makeLuaText('songTimeMickey','0:00 - 0:00',160,screenWidth/2 - 80,getProperty('timeBar.y') + 40)
        makeLuaText('scoreTextMickey','Score: 0',200,25,90)
        makeLuaText('missesTextMickey','Misses: 0',200,25,120)
        makeLuaText('acurracyTextMickey','Acurracy: 0',200,25,150)
        makeLuaText('songNameTextMickey',songNameMickey,300,15,getProperty('timeBar.y') + 35)
        makeLuaText('sickTextMickey','Sick: 0',200,screenWidth - 100,60)
        makeLuaText('goodTextMickey','Good: 0',200,screenWidth - 100,90)
        makeLuaText('badTextMickey','Bad: 0',200,screenWidth - 100,120)
        makeLuaText('shitTextMickey','Shit: 0',200,screenWidth - 100,150)
    end
    makeLuaSprite('timePercentMickey',nil,getProperty('timeBarBG.x') - 10,getProperty('timeBarBG.y') + 10)
    makeGraphic('timePercentMickey',targetBar,(getProperty('timeBarBG.height') * getProperty('timeBarBG.scale.y'))/2,'FFFFFF')
    setObjectCamera('timePercentMickey','hud')
    addLuaSprite('timePercentMickey',true)

    setTextAlignment('songTimeMickey','center')
    setObjectCamera('songTimeMickey','hud')
    setTextFont('songTimeMickey','MilkyNice.ttf')
    setTextSize('songTimeMickey',textMickeySize)
    addLuaText('songTimeMickey')



    setTextAlignment('scoreTextMickey','left')
    setObjectCamera('scoreTextMickey','hud')
    setTextFont('scoreTextMickey','MilkyNice.ttf')
    setTextSize('scoreTextMickey',textMickeySize)
    addLuaText('scoreTextMickey')



    setTextAlignment('missesTextMickey','left')
    setObjectCamera('missesTextMickey','hud')
    setTextFont('missesTextMickey','MilkyNice.ttf')
    setProperty('missesTextMickey.antialiasing',false)
    setTextSize('missesTextMickey',textMickeySize)
    addLuaText('missesTextMickey')



    setTextAlignment('acurracyTextMickey','left')
    setObjectCamera('acurracyTextMickey','hud')
    setTextSize('acurracyTextMickey',textMickeySize)
    setTextFont('acurracyTextMickey','MilkyNice.ttf')
    setProperty('acurracyTextMickey.antialiasing',false)
    addLuaText('acurracyTextMickey')
    


    setTextAlignment('songNameTextMickey','left')
    setObjectCamera('songNameTextMickey','hud')
    setTextFont('songNameTextMickey','MilkyNice.ttf')
    setTextSize('songNameTextMickey',25)
    addLuaText('songNameTextMickey')



    setTextAlignment('sickTextMickey','left')
    setObjectCamera('sickTextMickey','hud')
    setTextFont('sickTextMickey','MilkyNice.ttf')
    setTextSize('sickTextMickey',textMickeySize)
    addLuaText('sickTextMickey')
    


    setTextAlignment('goodTextMickey','left')
    setObjectCamera('goodTextMickey','hud')
    setTextFont('goodTextMickey','MilkyNice.ttf')
    setTextSize('goodTextMickey',textMickeySize)
    addLuaText('goodTextMickey')
    


    setTextAlignment('badTextMickey','left')
    setObjectCamera('badTextMickey','hud')
    setTextFont('badTextMickey','MilkyNice.ttf')
    setTextSize('badTextMickey',textMickeySize)
    addLuaText('badTextMickey')



    setTextAlignment('shitTextMickey','left')
    setObjectCamera('shitTextMickey','hud')
    setTextFont('shitTextMickey','MilkyNice.ttf')
    setTextSize('shitTextMickey',textMickeySize)
    addLuaText('shitTextMickey')

    table.insert(mickeyTweenObjects,'timePercentMickey')
    table.insert(mickeyTweenObjects,'songTimeMickey')
    table.insert(mickeyTweenObjects,'songNameTextMickey')
    table.insert(mickeyTweenObjects,'scoreTextMickey')
    table.insert(mickeyTweenObjects,'missesTextMickey')
    table.insert(mickeyTweenObjects,'acurracyTextMickey')
    table.insert(mickeyTweenObjects,'sickTextMickey')
    table.insert(mickeyTweenObjects,'goodTextMickey')
    table.insert(mickeyTweenObjects,'badTextMickey')
    table.insert(mickeyTweenObjects,'shitTextMickey')
end
function onStepHit()
    if songName == 'Unknown Suffering' then
        if curStep < 1632 then
            setProperty('unknownTime.x',songTimeLength)
        elseif curStep == 1632 then
            doTweenX('changeTimeUnknow','unknownTime',getProperty('songLength'),7,'expoInOut')
        end
    end
end

function onUpdate()
    if songName == 'Unknown Suffering' then
        if curStep >= 1615 and curStep < 1737 then
            songTimeLength = getProperty('unknownTime.x')
            setProperty('timePercentMickey.alpha',1)
            setProperty('songTimeMickey.alpha',1)
            table.remove(mickeyTweenObjects,1)
            table.insert(mickeyTweenObjects,1,nil)
            table.remove(mickeyTweenObjects,2)
            table.insert(mickeyTweenObjects,2,nil)
        end
        if curStep == 1737 then
            songTimeLength = getProperty('songLength')
            table.remove(mickeyTweenObjects,1)
            table.insert(mickeyTweenObjects,1,'timePercentMickey')
            table.remove(mickeyTweenObjects,2)
            table.insert(mickeyTweenObjects,2,'songTimeMickey')
        end
    else
        songTimeLength = getProperty('songLength')
    end

    if getSongPosition() >= songTimeLength then
        songTimeLength = getSongPosition()
    end
    setTextString('songTimeMickey',math.floor(getSongPosition()/60000)..':'..math.floor((getSongPosition()/10000) % 6)..math.floor((getSongPosition()/1000) % 10)..' - '..math.floor(songTimeLength/60000)..':'..math.floor((songTimeLength/10000) % 6)..math.floor((songTimeLength/1000) % 10))
    setTextString('scoreTextMickey','Score: '..getProperty('songScore'))
    setTextString('missesTextMickey','Misses: '..getProperty('songMisses'))
    setTextString('acurracyTextMickey','Acurracy: '..math.floor(getProperty('ratingPercent') * 10000)/100)

    setTextString('sickTextMickey','Sick: '..getProperty('sicks'))
    setTextString('goodTextMickey','Good: '..getProperty('goods'))
    setTextString('badTextMickey','Bad: '..getProperty('bads'))
    setTextString('shitTextMickey','Shit: '..getProperty('shits'))

    setProperty('timePercentMickey.scale.x',getSongPosition()/songTimeLength)
   setProperty('timePercentMickey.x',(getProperty('timeBarBG.x') - 1060) + (getSongPosition()/songTimeLength) * (targetBar/2))
   setProperty('timePercentMickey.y',getProperty('timeBarBG.y') + 4)
end