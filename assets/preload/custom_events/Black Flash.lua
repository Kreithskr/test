function onEvent(n,v1,v2)


	if n == 'Black Flash' then

	   makeLuaSprite('black', '', 0, 0);
        makeGraphic('black',1280,720,'000000')
	      addLuaSprite('black', true);
	      setLuaSpriteScrollFactor('black',0,0)
	      setProperty('black.scale.x',2)
	      setProperty('black.scale.y',2)
	      setProperty('black.alpha',0)
		setProperty('black.alpha',1)
		doTweenAlpha('flTw','black',0,v1,'linear')
	end



end