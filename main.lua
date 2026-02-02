require 'Libs.simpleScale'
require 'Libs.game'

function love.load()
    GameWindow.setTitle(Title)
    simpleScale.setWindow(WindowWidth, WidthHeight, WindowWidth, WidthHeight, { fullscreen = false, resizable = true });
end

function updateScale()
    simpleScale.updateWindow(WindowWidth, WidthHeight, { fullscreen = fullscreen, resizable = true });
end

function love.resize()

end

function love.update(dt)
    simpleScale.resizeUpdate()
end

function love.draw()
    simpleScale.set()
    
    simpleScale.unSet()
end
