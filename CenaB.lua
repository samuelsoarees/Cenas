  
local composer = require("composer")

local widget = require("widget")

local scene = composer.newScene()

local butao

function scene:create(event)

	local sceneGroup = self.view
	
	butao = widget.newButton({label ="Toque para Musica",x = display.contentWidth/2,y = display.contentHeight/2,shape = "rect" })
	butao:addEventListener("touch", tocaSom)
	
	
	sceneGroup:insert(butao)


end



 
function tocaSom(event)
	
	local mario = audio.loadSound( "mario bross diesMario_Bross_Dies.mp3" )
	
	local toqueMario = audio.play(mario)
	
	
end


scene:addEventListener( "create", scene )
return scene  
  