function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-needle-die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'needlemouse-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'needlemouse-retry'); --put in mods/music/
end