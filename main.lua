function love.load()
    love.window.setIcon(love.image.newImageData("images/icone.png"))
    love.window.setTitle("Mouvable Window")
    fond = love.graphics.newImage("images/fond.png")
    
    window={}
    window.x=0
    window.y=0
    
    desktop={}
    desktop.largeur, desktop.hauteur = love.window.getDesktopDimensions()
    love.window.setMode(200,200, {borderless=true})
end

function love.update()
    x, y = love.mouse.getPosition( )
    
    if love.keyboard.isDown("right") then
        window.x=window.x+10
        
        if window.x>desktop.largeur-200 then
            window.x=desktop.largeur-200
        end
    elseif love.keyboard.isDown("left") then
        window.x=window.x-10
        
        if window.x<0 then
            window.x=0 
        end
    end
    
    if love.keyboard.isDown("down") then
        window.y=window.y+10
        
        if window.y>desktop.hauteur-200 then
            window.y=desktop.hauteur-200
        end
    elseif love.keyboard.isDown("up") then
        window.y=window.y-10
        
        if window.y<0 then
            window.y=0 
        end
    end
    
    love.window.setPosition(window.x,window.y)
end

function love.draw()
    love.graphics.draw(fond)
end

function love.mousepressed(x, y, button)
    if button == 1 then
       if x>=150 and x<=200 then
            if y>=0 and y<=20 then
                love.window.close()
            end
        end
    end
end