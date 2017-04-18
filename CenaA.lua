

local composer = require("composer")

local widget = require("widget")

local scene = composer.newScene()

local butao

function scene:create(event)

	local sceneGroup = self.view
	
	butao = widget.newButton({label ="Aperta aqui",x = display.contentWidth/2,y = display.contentHeight/2,shape = "rect" })
	butao:addEventListener("touch", redireciona)
	
	sceneGroup:insert(butao)
	
end


function redireciona(event)

	composer.gotoScene("CenaB")

end





scene:addEventListener( "create", scene )
return scene