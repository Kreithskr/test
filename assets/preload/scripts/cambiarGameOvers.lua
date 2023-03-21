local curGameOver = nil
local songsState = 0
function onUpdate()
    if getProperty('boyfriend.curCharacter') == 'bf-retro' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-retro')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'retro'
    end
   if getProperty('boyfriend.curCharacter') == 'bf-dsides' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-dsides')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'dsides'
    end
    if getProperty('boyfriend.curCharacter') == 'bf-portal' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-portal')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'portal'
    end
    if getProperty('boyfriend.curCharacter') == 'mouse-prison' or getProperty('boyfriend.curCharacter') == 'mouse-prison-phase2' or getProperty('boyfriend.curCharacter') == 'mouse-prison-phase3' then
        setPropertyFromClass('GameOverSubstate','characterName','mouse-death')
        setPropertyFromClass('GameOverSubstate','deathSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'prison'
    end
    if getProperty('boyfriend.curCharacter') == 'bf-suicide' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-suicide')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'suicide'
    end
    if getProperty('boyfriend.curCharacter') == 'bf-sus' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-sus')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'sus'
    end
   if getProperty('boyfriend.curCharacter') == 'bf-satan' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-satan')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'satan'
    end
    if getProperty('boyfriend.curCharacter') == 'Gf-retro' then
        setPropertyFromClass('GameOverSubstate','characterName','gf-retro')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'gf-retro'
    end
    if getProperty('boyfriend.curCharacter') == 'leaker1' then
        setPropertyFromClass('GameOverSubstate','characterName','leakersdead')
        setPropertyFromClass('GameOverSubstate','deathSoundName','fnf_loss_sfx')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
        curGameOver = 'leakers'
    end
end