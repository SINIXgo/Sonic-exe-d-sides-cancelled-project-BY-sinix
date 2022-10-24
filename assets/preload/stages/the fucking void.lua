function onCreate()

     makeLuaSprite('white','white',-600,-200)
	 addLuaSprite('white',false) 
     setLuaSpriteScrollFactor('white', 1.0, 1.0);

	addLuaSprite('hell', false);
	addLuaSprite('white', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end