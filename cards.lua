local ease = require("ease")

local cards = {}

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

function Lerp(a,b,t) return a * (1-t) + b * t end
function Quadin(a, b, t) return Lerp(a, b, t * t) end

function cards.NewFullDeck()
    return {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
            16,17,18,19,20,21,22,23,24,25,26,27,
            28,29,30,31,32,34,35,36,37,38,39,40,
            41,42,43,44,45,46,47,48,49,50,51,52,
            53,54}
end

function cards.GetCardFromDeck(Deck)
    if Deck == nil then print("Deck == nil") return end
    return table.remove(Deck,1)
end

function cards.NewCard(CardFromDeck)
    local xx, yy = love.mouse.getPosition()
    return {cardid = CardFromDeck, x = 0, y = 0, inhand = false}
end

function cards.DrawCards(Cards, CardsTx, Scale)
    for key, value in pairs(Cards) do
        if value.cardid == 1 then love.graphics.draw(CardsTx.c2, value.x, value.y, 0, Scale, Scale) end
    end
end

function cards.MoveCards(Cards, CardsTx, Scale)
    local width, height = CardsTx.s2:getDimensions()
    width  = math.floor(width * Scale + 0.5)
    height = math.floor(height * Scale + 0.5)

    local mx, my = love.mouse.getPosition()

    for key, value in pairs(Cards) do
        if value.inhand == true then
            if love.mouse.isDown(1) then value.inhand = false end
        else
            if CheckCollision(mx, my, 1, 1, value.x, value.y, width, height) and love.mouse.isDown(1) then
                value.inhand = true
            end
        end
    end

    for key, value in pairs(Cards) do
        if value.inhand == true then
            value.x = Quadin(value.x, mx - width / 2, 0.3)
            value.y = Quadin(value.y, my - height / 2, 0.3)
        end
    end
end

function cards.LoadCards()
    local CardsTx = {
        c2 = love.graphics.newImage("cards_txt/2c.png"),
        s2 = love.graphics.newImage("cards_txt/2s.png"),
        d2 = love.graphics.newImage("cards_txt/2d.png"),
        h2 = love.graphics.newImage("cards_txt/2h.png"),
        c3 = love.graphics.newImage("cards_txt/3c.png"),
        s3 = love.graphics.newImage("cards_txt/3s.png"),
        d3 = love.graphics.newImage("cards_txt/3d.png"),
        h3 = love.graphics.newImage("cards_txt/3h.png"),
        c4 = love.graphics.newImage("cards_txt/4c.png"),
        s4 = love.graphics.newImage("cards_txt/4s.png"),
        d4 = love.graphics.newImage("cards_txt/4d.png"),
        h4 = love.graphics.newImage("cards_txt/4h.png"),
        c5 = love.graphics.newImage("cards_txt/5c.png"),
        s5 = love.graphics.newImage("cards_txt/5s.png"),
        d5 = love.graphics.newImage("cards_txt/5d.png"),
        h5 = love.graphics.newImage("cards_txt/5h.png"),
        c6 = love.graphics.newImage("cards_txt/6c.png"),
        s6 = love.graphics.newImage("cards_txt/6s.png"),
        d6 = love.graphics.newImage("cards_txt/6d.png"),
        h6 = love.graphics.newImage("cards_txt/6h.png"),
        c7 = love.graphics.newImage("cards_txt/7c.png"),
        s7 = love.graphics.newImage("cards_txt/7s.png"),
        d7 = love.graphics.newImage("cards_txt/7d.png"),
        h7 = love.graphics.newImage("cards_txt/7h.png"),
        c8 = love.graphics.newImage("cards_txt/8c.png"),
        s8 = love.graphics.newImage("cards_txt/8s.png"),
        d8 = love.graphics.newImage("cards_txt/8d.png"),
        h8 = love.graphics.newImage("cards_txt/8h.png"),
        c9 = love.graphics.newImage("cards_txt/9c.png"),
        s9 = love.graphics.newImage("cards_txt/9s.png"),
        d9 = love.graphics.newImage("cards_txt/9d.png"),
        h9 = love.graphics.newImage("cards_txt/9h.png"),
        c10 = love.graphics.newImage("cards_txt/10c.png"),
        s10 = love.graphics.newImage("cards_txt/10s.png"),
        d10 = love.graphics.newImage("cards_txt/10d.png"),
        h10 = love.graphics.newImage("cards_txt/10h.png"),
        cj = love.graphics.newImage("cards_txt/jc.png"),
        sj = love.graphics.newImage("cards_txt/js.png"),
        dj = love.graphics.newImage("cards_txt/jd.png"),
        hj = love.graphics.newImage("cards_txt/jh.png"),
        cq = love.graphics.newImage("cards_txt/qc.png"),
        sq = love.graphics.newImage("cards_txt/qs.png"),
        dq = love.graphics.newImage("cards_txt/qd.png"),
        hq = love.graphics.newImage("cards_txt/qh.png"),
        ck = love.graphics.newImage("cards_txt/kc.png"),
        sk = love.graphics.newImage("cards_txt/ks.png"),
        dk = love.graphics.newImage("cards_txt/kd.png"),
        hk = love.graphics.newImage("cards_txt/kh.png"),
        ca = love.graphics.newImage("cards_txt/ac.png"),
        sa = love.graphics.newImage("cards_txt/as.png"),
        da = love.graphics.newImage("cards_txt/ad.png"),
        ha = love.graphics.newImage("cards_txt/ah.png"),
        jjb = love.graphics.newImage("cards_txt/jjb.png"),
        jjr = love.graphics.newImage("cards_txt/jjr.png"),
    }
    return CardsTx
end

return cards
