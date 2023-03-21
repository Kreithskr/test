function onCreate()
if not lowQuality then
    makeLuaSprite('back', 'Backgrounds/hellhole/back',-620,-280)
    scaleObject('back', 1.2,1.2);
    addLuaSprite('back', false)
    end

    makeLuaSprite('inferno1', 'Backgrounds/hellhole/infernogroundp1',-620,-280)
    scaleObject('inferno1', 1.2,1.2);
    addLuaSprite('inferno1', false)
    
    makeLuaSprite('inferno2', 'Backgrounds/hellhole/infernogroundp2',-620,-280)
    scaleObject('inferno2', 1.2,1.2);
    addLuaSprite('inferno2', false)

    setProperty('gfGroup.visible', false);  
    
   makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)
	

	makeAnimatedLuaSprite('FiltroAntiguo', 'grain', 0, 0); 
    addAnimationByPrefix('FiltroAntiguo', 'anim', 'grain', 24, true); 
    playAnim('FiltroAntiguo','anim',true)
    addLuaSprite('FiltroAntiguo', false);
    setObjectCamera('FiltroAntiguo', 'other');
    scaleObject('FiltroAntiguo',2.6,2.6)  
	
	setObjectOrder('inferno2', true)
	setObjectOrder('gfGroup', false)
	setObjectOrder('inferno1', false)
	setObjectOrder('back', false)
end


function onStepHit()
if curBeat == 96 then
	makeLuaSprite('White', '', 0, 0);
   makeGraphic('White', 2000, 2000, 'FFFFFF');
   setProperty('White.alpha', 0);
   addLuaSprite('White', true);
   scaleObject('White', 15, 15);
   doTweenAlpha('whiteflash', 'White', 1, 1)
   screenCenter('White')
		doTweenAlpha('flash', 'White', 1, 1)
end
if curBeat == 100 then
	doTweenAlpha('flash', 'White', 0, 1)
end
	if curStep == 400 then
addLuaScript('custom_events/MickeyTiemblaPantalla')
end

if curBeat == 325 then
	doTweenAlpha('hud', 'camHUD',0, 0.5)
end
if curBeat == 326 then
	setProperty('gfGroup.visible', true)
end
if curBeat == 332 then
	doTweenAlpha('game', 'camGame', 0, 0.001)
end
if curBeat == 360 then
	doTweenAlpha('hud', 'camHUD',1, 0.5)
end
if curBeat == 364 then
	doTweenAlpha('game', 'camGame', 1, 0.001)
	
end
if curStep == 2190 then
	setProperty('gfGroup.visible', false)
end
if curBeat == 612 then
	doTweenAlpha('game', 'camGame', 0, 0.001)
	doTweenAlpha('hud', 'camHUD',0, 0.5)
end
if curBeat == 614 then
	doTweenAlpha('hud', 'camHUD',1, 0.5)
	setProperty('inferno2.visible',false)
	setProperty('scoreTextMickey.visible', false)
	setProperty('missesTextMickey.visible', false)
	setProperty('acurracyTextMickey.visible',false)
	setProperty('songNameTextMickey.visible',false)
	setProperty('sickTextMickey.visible',false)
	setProperty('goodTextMickey.visible',false)
	setProperty('badTextMickey.visible',false)
	setProperty('shitTextMickey.visible',false)
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
end
if curBeat == 616 then
	doTweenAlpha('game', 'camGame', 1, 0.001)
end
if curStep == 2966 then
	doTweenColor('dadcolor', 'dad', '000000',0.001, 'linear')
end
if curBeat == 744 then
	doTweenColor('dadcolor', 'dad', 'FFFFFF',0.001, 'linear')
	setProperty('scoreTextMickey.visible', true)
	setProperty('missesTextMickey.visible', true)
	setProperty('acurracyTextMickey.visible',true)
	setProperty('songNameTextMickey.visible',true)
	setProperty('sickTextMickey.visible',true)
	setProperty('goodTextMickey.visible',true)
	setProperty('badTextMickey.visible',true)
	setProperty('shitTextMickey.visible',true)
	setProperty('iconP1.visible',true)
	setProperty('iconP2.visible',true)
end
if curBeat == 936 then
	doTweenAlpha('game', 'camGame', 0, 0.001)
	
end
end
