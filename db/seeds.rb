5.times do
    wl = Wishlist.create(
        user_id: 1,
        game_id: rand(1..100),
        title: Faker::Game.title
    )
    lb = Library.create(
        user_id: 1,
        game_id: rand(101..200),
        title: Faker::Game.title
    )
    wl.save
    lb.save
end