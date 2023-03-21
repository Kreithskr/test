--Code by Raimbowcore12,used some other events scripts btw
function onCreate()
	precacheImage('warning')
doTweenAlpha('game', 'camGame', 0, 0.001)
doTweenAlpha('hud', 'camHUD', 0,0.001)
setProperty('boyfriend.visible', false)
	end
function onBeatHit()
if curBeat == 1 then
doTweenAlpha('game', 'camGame', 1, 0.001)
doTweenAlpha('hud', 'camHUD', 1,0.001)
end
if curBeat == 30 then
	setProperty('fondoVecindario.visible', false)
end
if curBeat == 32 then
setProperty('boyfriend.visible', true)
	setProperty('iconP1.visible',true)
	setProperty('iconP2.visible',true)

	setProperty('fondoVecindario.visible', true)

	end
	if curBeat == 68 then
		doTweenColor('badapplexd4', 'dad', 'FFFFFF', 0.01, 'linear')
	end
	if curBeat == 268 then
		doTweenAlpha('game','camGame', 0, 0.5, 'circOut')
	end
	if curBeat == 272 then
		doTweenAlpha('hud', 'camHUD', 0,0.5)
	end

if curBeat == 280 then
	doTweenAlpha('game', 'camGame', 1, 0.001)
	doTweenAlpha('hud', 'camHUD', 1,0.001)
	noteTweenAlpha('bfnote1','4', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote2','5', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote3','6', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote4','7', '0', 0.001, 'linear')
end
if curBeat == 310 then
	noteTweenAlpha('bfnote1','4', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote2','5', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote3','6', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote4','7', '1', 0.5, 'linear')
end
if curBeat == 344 then
	doTweenAlpha('game', 'camGame', 0, 0.9)
end
if curBeat == 346 then
	doTweenAlpha('hud', 'camHUD', 0,0.9)
end
if curBeat == 372 then
	makeAnimatedLuaSprite('satan', 'backgrounds/SATAN_LAUGH_SCREEN', 0, -20)
	addAnimationByPrefix('satan','haha','SATAN LAUGH SCREEN',30, false)
	addLuaSprite('satan', true)
	setObjectCamera('satan', 'other')
	scaleObject('satan', 2, 2)
end
if curBeat == 376 then
	removeLuaSprite('satan', false)
	doTweenAlpha('game', 'camGame', 1, 0.001)
	doTweenAlpha('hud', 'camHUD', 1,0.001)
	noteTweenAlpha('bfnote1','4', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote2','5', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote3','6', '0', 0.001, 'linear')
	noteTweenAlpha('bfnote4','7', '0', 0.001, 'linear')
	doTweenColor('dadColor', 'dad', 'FFFFFF', 0.01, 'linear') --A color fix
end
if curStep == 1505 then
	doTweenColor('dadColor', 'dad', 'FFFFFF', 0.01, 'linear') --some Color fixes
end
if curBeat == 404 then
	noteTweenAlpha('bfnote1','4', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote2','5', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote3','6', '1', 0.5, 'linear')
	noteTweenAlpha('bfnote4','7', '1', 0.5, 'linear')
end
if curBeat == 504 then
	doTweenAlpha('game', 'camGame', 0, 0.001)
	doTweenAlpha('hud', 'camHUD', 0.1,0.001)
end
if curBeat == 506 then
	doTweenAlpha('hud', 'camHUD', 0.2,0.4)
end
if curBeat == 508 then
	noteTweenAlpha('oppnote1','0', '0', 0.4, 'linear')
	noteTweenAlpha('oppnote2','1', '0', 0.4, 'linear')
	noteTweenAlpha('oppnote3','2', '0', 0.4, 'linear')
	noteTweenAlpha('oppnote4','3', '0', 0.1, 'linear')
	noteTweenAlpha('bfnote1','4', '0', 0.4, 'linear')
	noteTweenAlpha('bfnote2','5', '0', 0.4, 'linear')
	noteTweenAlpha('bfnote3','6', '0', 0.4, 'linear')
	noteTweenAlpha('bfnote4','7', '0', 0.4, 'linear')
	doTweenAlpha('hud', 'camHUD', 0,0.3)
end
if curBeat == 512 then
	doTweenAlpha('hud', 'camHUD', 1,0.8)
	noteTweenAlpha('oppnote1','0', '1', 0.8, 'linear')
	noteTweenAlpha('oppnote2','1', '1', 0.8, 'linear')
	noteTweenAlpha('oppnote3','2', '1', 0.8, 'linear')
	noteTweenAlpha('oppnote4','3', '1', 0.8, 'linear')
	noteTweenAlpha('bfnote1','4', '1', 0.8, 'linear')
	noteTweenAlpha('bfnote2','5', '1', 0.8, 'linear')
	noteTweenAlpha('bfnote3','6', '1', 0.8, 'linear')
	noteTweenAlpha('bfnote4','7', '1', 0.8, 'linear')
end
if curBeat == 516 then
	doTweenAlpha('game', 'camGame', 1, 0.001)
	
end
if curBeat == 546 then
	makeAnimatedLuaSprite('satan', 'backgrounds/SATAN_LAUGH_SCREEN', 0, -20)
	addAnimationByPrefix('satan','haha','SATAN LAUGH SCREEN',30, false)
	addLuaSprite('satan', false)
	setObjectCamera('satan', 'hud')
	scaleObject('satan', 2, 2)
end
if curBeat == 548 then
	removeLuaSprite('satan', false)
end
if curBeat == 608 then
	makeAnimatedLuaSprite('satan', 'backgrounds/SATAN_LAUGH_SCREEN', 0, -20)
	addAnimationByPrefix('satan','haha','SATAN LAUGH SCREEN',30, false)
	addLuaSprite('satan', false)
	setObjectCamera('satan', 'hud')
	scaleObject('satan', 2, 2)
end
if curBeat == 612 then
	removeLuaSprite('satan', false)
end
if curBeat == 646 then
	doTweenAlpha('game', 'camGame', 0, 0.01)
end
if curBeat == 650 then
	doTweenAlpha('hud', 'camHUD', 0,0.8)
end
end

--THE END BOIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII