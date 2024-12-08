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
    if Deck.Deck == nil then print("Deck == nil") return end
    return table.remove(Deck.Deck,1)
end

function cards.GetNewDeck()
    return {Deck = cards.NewFullDeck(), x = 0 , y = 0}
end

function cards.NewCard(CardFromDeck)
    local xx, yy = love.mouse.getPosition()
    return {cardid = CardFromDeck, x = xx, y = yy, inhand = false}
end

function cards.ShuffleDeck(Deck, Times)
    
end

function cards.DrawCards(Cards, CardsTx, Scale)
    for key, value in pairs(Cards) do
        if value.cardid == 1 then love.graphics.draw(CardsTx.c2, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 2 then love.graphics.draw(CardsTx.s2, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 3 then love.graphics.draw(CardsTx.d2, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 4 then love.graphics.draw(CardsTx.h2, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 5 then love.graphics.draw(CardsTx.c3, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 6 then love.graphics.draw(CardsTx.s3, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 7 then love.graphics.draw(CardsTx.d3, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 8 then love.graphics.draw(CardsTx.h3, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 9 then love.graphics.draw(CardsTx.c4, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 10 then love.graphics.draw(CardsTx.s4, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 11 then love.graphics.draw(CardsTx.d4, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 12 then love.graphics.draw(CardsTx.h4, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 13 then love.graphics.draw(CardsTx.c5, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 14 then love.graphics.draw(CardsTx.s5, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 15 then love.graphics.draw(CardsTx.d5, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 16 then love.graphics.draw(CardsTx.h5, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 17 then love.graphics.draw(CardsTx.c6, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 18 then love.graphics.draw(CardsTx.s6, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 19 then love.graphics.draw(CardsTx.d6, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 20 then love.graphics.draw(CardsTx.h6, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 21 then love.graphics.draw(CardsTx.c7, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 22 then love.graphics.draw(CardsTx.s7, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 23 then love.graphics.draw(CardsTx.d7, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 24 then love.graphics.draw(CardsTx.h7, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 25 then love.graphics.draw(CardsTx.c8, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 26 then love.graphics.draw(CardsTx.s8, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 27 then love.graphics.draw(CardsTx.d8, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 28 then love.graphics.draw(CardsTx.h8, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 29 then love.graphics.draw(CardsTx.c9, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 30 then love.graphics.draw(CardsTx.s9, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 31 then love.graphics.draw(CardsTx.d9, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 32 then love.graphics.draw(CardsTx.h9, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 33 then love.graphics.draw(CardsTx.c10, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 34 then love.graphics.draw(CardsTx.s10, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 35 then love.graphics.draw(CardsTx.d10, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 36 then love.graphics.draw(CardsTx.h10, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 37 then love.graphics.draw(CardsTx.cj, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 38 then love.graphics.draw(CardsTx.sj, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 39 then love.graphics.draw(CardsTx.dj, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 40 then love.graphics.draw(CardsTx.hj, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 41 then love.graphics.draw(CardsTx.cq, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 42 then love.graphics.draw(CardsTx.sq, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 43 then love.graphics.draw(CardsTx.dq, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 44 then love.graphics.draw(CardsTx.hq, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 45 then love.graphics.draw(CardsTx.ck, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 46 then love.graphics.draw(CardsTx.sk, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 47 then love.graphics.draw(CardsTx.dk, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 48 then love.graphics.draw(CardsTx.hk, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 49 then love.graphics.draw(CardsTx.ca, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 50 then love.graphics.draw(CardsTx.sa, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 51 then love.graphics.draw(CardsTx.da, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 52 then love.graphics.draw(CardsTx.ha, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 53 then love.graphics.draw(CardsTx.jjb, value.x, value.y, 0, Scale, Scale) end
        if value.cardid == 54 then love.graphics.draw(CardsTx.jjr, value.x, value.y, 0, Scale, Scale) end
    end
end

function cards.MoveCards(Cards, CardsTx, Scale)
    local width, height = CardsTx.s2:getDimensions()
    width  = math.floor(width * Scale + 0.5)
    height = math.floor(height * Scale + 0.5)

    local mx, my = love.mouse.getPosition()

    local anyinhand = false
    for k, value in pairs(Cards) do
        if value.inhand == true then anyinhand = true break end
    end

    if not anyinhand then
        for k, value in pairs(Cards) do
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

function cards.UpdateDeck(Deck, Table, CardsTx, Scale, timer, rtimer)
     local width, height = CardsTx.s2:getDimensions()
    width  = math.floor(width * Scale + 0.5)
    height = math.floor(height * Scale + 0.5)

    local mx, my = love.mouse.getPosition()

    if CheckCollision(mx, my, 1, 1, Deck.x, Deck.y, width, height) and love.mouse.isDown(1) and timer < 0 then
        table.insert(Table, cards.NewCard(cards.GetCardFromDeck(Deck)))
        timer = rtimer
    end
end

function cards.Input(Cards, key)
    for k, value in pairs(Cards) do
        if key == "escape" or key == "space" then value.inhand = false end
    end
end

function cards.LoadCards()
    local CardsTx = {
        back = love.graphics.newImage("cards_txt/back.png"),
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
