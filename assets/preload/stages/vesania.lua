function onCreate() 
makeLuaSprite('simplememteunpilar', 'backgrounds/vesania/pillar bg',-600, -300);
addLuaSprite('simplememteunpilar', false);
scaleObject('simplememteunpilar', 1,1);

if not lowQuality then
  makeAnimatedLuaSprite('satanTrono', 'backgrounds/vesania/satan', 500, -300);
  addAnimationByPrefix('satanTrono', 'idle', 'CAGADA INFERNAL instance 1', 24, true);--40
  scaleObject('satanTrono', 1,1);
  addLuaSprite('satanTrono',false)
  end

  makeLuaSprite('bg', 'backgrounds/vesania/BG',-600, -300);
addLuaSprite('bg', false);
scaleObject('bg', 1,1);

makeAnimatedLuaSprite('FiltroAntiguo', 'grain', 0, 0); 
    addAnimationByPrefix('FiltroAntiguo', 'anim', 'grain', 24, true); 
    playAnim('FiltroAntiguo','anim',true)
    addLuaSprite('FiltroAntiguo', false);
    setObjectCamera('FiltroAntiguo', 'other');
    scaleObject('FiltroAntiguo',2.6,2.6)  

	makeLuaSprite('bgintro', 'backgrounds/iratus/bgintro', -830, -720);
	addLuaSprite('bgintro', false);
	scaleObject('bgintro', 1.2,1.2);
	
	makeLuaSprite('bgSKY.', 'backgrounds/iratus/INFERNO_SKY', -680, -550);
	addLuaSprite('bgSKY', false);
	scaleObject('bgSKY', 1,1);
	setProperty('bgSKY.visible', false);
	
	if not lowQuality then
	makeAnimatedLuaSprite('Esqueletos', 'backgrounds/iratus/SKULLS', -350, 200);
	  addAnimationByPrefix('Esqueletos', 'idle', 'SKULLS', 24, true);
	  scaleObject('Esqueletos', 1,1);
	  addLuaSprite('Esqueletos',false)
	  setProperty('Esqueletos.visible', false);
	  end
	  
	makeLuaSprite('bgROCA', 'backgrounds/iratus/ROCK_BG', -680, 350);
	addLuaSprite('bgROCA', false);
	scaleObject('bgROCA', 1,1);
	

  makeAnimatedLuaSprite('demoniosChiquitos', 'backgrounds/vesania/demons', -165, -165);
  addAnimationByPrefix('demoniosChiquitos', 'idle', 'diablillos instance 1', 24, true);
  scaleObject('demoniosChiquitos', 1,1);
  addLuaSprite('demoniosChiquitos',false) 
  


 
 
	setProperty('gfGroup.visible', false);
	setProperty('Esqueletos.visible', false);
	setProperty('bgintro.visible', false);
	setProperty('bgROCA.visible', false);
	setProperty('bgSKY.visible', false);
	setProperty('camGame.alpha',0);
	setProperty('camHUD.alpha',0);
end

function onStepHit()--Events by Nickobelit and Raimbowcore12 
if curBeat == 16 then 
	doTweenAlpha('holaJuego', 'camGame', 1, 3)
end
if curStep== 128 then
doTweenAlpha('holaHUD', 'camHUD', 1, 0.2)
end
if curBeat == 132 then
	doTweenColor('dadColorblack','dad', '000000', 0.001, linear)
end
if curBeat == 192 then
	doTweenColor('dadColorblack','dad', '000000', 0.001, linear)
end
if curBeat == 196 then
	doTweenColor('dadColorblack','dad', 'FFFFFFF', 0.001, linear)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
end
if curBeat == 260 then
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
end
if curBeat == 480 then
doTweenAlpha('game','camGame', 0 ,0.001)
end
if curBeat == 488 then
	doTweenAlpha('game','camGame', 1 ,0.001)
	setProperty('Esqueletos.visible', true);
	setProperty('bgintro.visible', true);
	setProperty('bgROCA.visible', true);
	setProperty('bgSKY.visible', true);
	setProperty('demoniosChiquitos.visible', false);
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	
end
if curStep == 1295 then
doTweenAlpha('adiosJuego', 'camGame', 0, 1)
doTweenAlpha('adiosHUD', 'camHUD', 0, 1)
end
if curStep == 1410 then
doTweenAlpha('holaJuego', 'camGame', 1, 2)
doTweenAlpha('holaHUD', 'camHUD', 1, 2)
end
if curBeat == 552 then
	setProperty('demoniosChiquitos.visible', true);
	setProperty('Esqueletos.visible', false);
	setProperty('bgintro.visible', false);
	setProperty('bgROCA.visible', false);
	setProperty('bgSKY.visible', false);
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
end
if curBeat == 588 then
	doTweenAlpha('game', 'camGame', 0, 0.001)
	doTweenAlpha('hud', 'camHUD', 0, 0.001)
end
end

	


function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('satanTrono','idle', true)
end
objectPlayAnimation('demoniosChiquitos','idle',false)
end
