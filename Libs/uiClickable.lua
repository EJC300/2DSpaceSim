require 'Libs.game'
UIClickable = Class
    {

        init = function(self, pos, scale)
            self.mousePoint = Vector()
            self.pos = pos
            self.scale = scale
            self.clicked = false
        end




    }

function UIClickable:ReturnClick()
    self.mousePoint =  Vector(Mouse.getX(),Mouse.getY())
    if Mouse.isDown(1) then
        local width = self.scale.x
        local height = self.scale.y
        return Mouse.getX()  >= self.pos.x and Mouse.getX() <= (self.pos.x + width) and Mouse.getY() >= self.pos.x and Mouse.getY() <= self.pos.y + height
    

    end
    self.clicked = false;
end

function UIClickable:DrawIcon()
    
    
end
