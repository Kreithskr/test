function onCreate()   
   makeLuaSprite('fondoVecindario', 'backgrounds/Destruido', -500, -300);
   addLuaSprite('fondoVecindario', false);
   setCharacterX('boyfriend', 750);
   setCharacterY('boyfriend', 0);
   setProperty('gfGroup.visible', false);
   makeAnimatedLuaSprite('FiltroAntiguo', 'grain', 0, 0); 
    addAnimationByPrefix('FiltroAntiguo', 'anim', 'grain', 24, true); 
    playAnim('FiltroAntiguo','anim',true)
    addLuaSprite('FiltroAntiguo', false);
    setObjectCamera('FiltroAntiguo', 'other');
    scaleObject('FiltroAntiguo',2.6,2.6)
end

