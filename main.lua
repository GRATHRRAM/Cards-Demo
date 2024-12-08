local cards = require("cards")
local Scale = 0.3
local txts = {}
local Deck = {}
local Table = {} -- Table = Screen && Table = luatable

local GPET = 0.2
local RestoreGPET = 0.2

function love.load()
    love.window.setTitle("Cards Demo by GRAH")
    love.window.setMode(1200, 720, {vsync = 1})

    txts = cards.LoadCards()
    Deck = cards.GetNewDeck()
end

function love.update(dt)
    cards.MoveCards(Table, txts, Scale)
    cards.UpdateDeck(Deck, Table, txts, Scale, GPET)

    GPET = GPET - dt
end

function love.keypressed(key)
    cards.Input(Table, key)
end

function love.draw()
    if Deck.Deck == nil then love.graphics.draw(txts.back, 50,50, 0, Scale, Scale) end
    cards.DrawCards(Table, txts, Scale)
end
