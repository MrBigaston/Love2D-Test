function love.load()
    text=""
end

function love.draw()
    love.graphics.print(text, 400, 300)
end

function love.keypressed(key, unicode)
    if key=="a" then
        text="AAAAAAAAAAAAAA"
    end
end

function love.keyreleased(key, unicode)
    if key=="a" then
        text="NOT AAAAAAAAAAAAAAAA"
    end
end

function love.focus(f)
    if not f then
        text="APUFOCUS"
    end
end