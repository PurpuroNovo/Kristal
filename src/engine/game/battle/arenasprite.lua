---@class ArenaSprite : Object
---@overload fun(...) : ArenaSprite
local ArenaSprite, super = Class(Object)

function ArenaSprite:init(arena, x, y)
    super.init(self, x, y)

    self.arena = arena

    self.width = arena.width
    self.height = arena.height

    self:setScaleOrigin(0.5, 0.5)
    self:setRotationOrigin(0.5, 0.5)

    self.background = true

    self.debug_select = false
end

function ArenaSprite:update()
    self.width = self.arena.width
    self.height = self.arena.height

    super.update(self)
end

function ArenaSprite:draw()
    if self.background then
        love.graphics.setColor(self.arena:getBackgroundColor())
        self:drawBackground()
    end

    super.draw(self)

    local r,g,b,a = self:getDrawColor()
    local arena_r,arena_g,arena_b,arena_a = self.arena:getDrawColor()

    love.graphics.setColor(r * arena_r, g * arena_g, b * arena_b, a * arena_a)
    love.graphics.setLineStyle("rough")
    love.graphics.setLineWidth(self.arena.line_width)
    love.graphics.line(unpack(self.arena.border_line))
end

function ArenaSprite:drawBackground()
    for _,triangle in ipairs(self.arena.triangles) do
        love.graphics.polygon("fill", unpack(triangle))
    end
end

function ArenaSprite:canDeepCopyKey(key)
    return super.canDeepCopyKey(self, key) and key ~= "arena"
end

return ArenaSprite