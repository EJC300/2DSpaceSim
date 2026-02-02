Lg = love.graphics
GameWindow = love.window
WindowWidth = 800
WindowHeight = 600

MaximizedWindowWidth = 800
MaximizedWindowHeight = 600

function love.load()
  local settings = love.window.setMode(WindowWidth,WindowHeight,{resizable = true,vsync = 0,minwidth = MaximizedWindowWidth,minheight = MaximizedWindowHeight})
 GameWindow = simpleScale.setWindow(WindowWidth,WindowHeight,MaximizedWindowWidth,MaximizedWindowHeight,settings)
end
function love.resize(w,h)
 MaximizedWindowWidth = w
 MaximizedWindowHeight = h
  
end
function love.update(dt)
   
end

function love.draw()
    simpleScale.set()
    Lg.circle("fill",400,300,50)
    simpleScale.unSet()
end

