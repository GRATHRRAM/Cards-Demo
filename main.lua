local cards = require("cards")
local Scale = 0.3
local txts = {}
local Deck = {}
local Table = {} -- Table = Screen && Table = luatable

function love.load()
    love.window.setTitle("Cards Demo by GRAH")
    love.window.setMode(1200, 720, {vsync = 1})

    txts = cards.LoadCards()
    Deck = cards.NewFullDeck()
    table.insert(Table, cards.NewCard(cards.GetCardFromDeck(Deck)))
end

function love.update(dt)
    cards.MoveCards(Table, txts, Scale)
end

function love.keypressed(key)
    cards.Input(Table, key)
end

function love.draw()
    cards.DrawCards(Table, txts, Scale)
end
