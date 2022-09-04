local OutlineFX, super = Class(FXBase)

function OutlineFX:init(color, settings, priority)
    super:init(self, priority or 0)

    settings = settings or {}

    self.color = color or {1, 1, 1, 1}
    self.thickness = settings["thickness"] or 1
    self.amount = settings["amount"] or 1
    self.cutout = settings["cutout"]

    self.cutout_shader = Kristal.Shaders["Mask"]
end

function OutlineFX:setColor(r, g, b, a)
    self.color = {r, g, b, a}
end

function OutlineFX:getColor()
    return self.color[1], self.color[2], self.color[3]
end

function OutlineFX:isActive()
    return super:isActive(self) and self.amount > 0
end

function OutlineFX:draw(texture)
    local last_shader = love.graphics.getShader()

    local object = self.parent

    local mult_x = self.thickness
    local mult_y = self.thickness

    local hierarchy = object:getHierarchy()

    for _, parent in ipairs(hierarchy) do
        mult_x = mult_x * parent.scale_x
        mult_y = mult_y * parent.scale_y
    end

    local outline = Draw.pushCanvas(texture:getWidth(), texture:getHeight())

    if self.cutout then


        love.graphics.setColorMask(false)
        love.graphics.setStencilMode("replace", "always", 1)

        love.graphics.setShader(self.cutout_shader)
        Draw.drawCanvas(texture)
        love.graphics.setShader()

        love.graphics.setStencilMode("keep", "less", 1)
        love.graphics.setColorMask(true)
    end

    local shader = Kristal.Shaders["AddColor"]
    love.graphics.setShader(shader)

    shader:send("inputcolor", {self:getColor()})
    shader:send("amount", self.amount)

    -- Left
    love.graphics.translate(-1 * mult_x, 0)
    Draw.drawCanvas(texture)
    -- Right
    love.graphics.translate(2 * mult_x, 0)
    Draw.drawCanvas(texture)
    -- Up
    love.graphics.translate(-1 * mult_x, -1 * mult_y)
    Draw.drawCanvas(texture)
    -- Down
    love.graphics.translate(0, 2 * mult_y)
    Draw.drawCanvas(texture)

    -- Center
    if self.cutout then
        love.graphics.translate(0, -1 * mult_y)
        love.graphics.setShader(last_shader)
        Draw.drawCanvas(texture)
        love.graphics.setStencilMode()
    end

    Draw.popCanvas()


    love.graphics.setColor(1, 1, 1, self.color[4])
    Draw.drawCanvas(outline)
    love.graphics.setColor(1, 1, 1, 1)

    -- Center
    if not self.cutout then
        love.graphics.setShader(last_shader)
        Draw.drawCanvas(texture)
    end
end

return OutlineFX