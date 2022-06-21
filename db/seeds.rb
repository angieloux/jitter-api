


if User.count === 0 
    user1 = User.create(username: 'angela', email: 'angela@test.com', password: '123456', password_confirmation: '123456')
    user2 = User.create(username: 'bob', email: 'bob@test.com', password: '123456', password_confirmation: '123456')
    user3 = User.create(username: 'mary', email: 'mary@test.com', password: '123456', password_confirmation: '123456')
end

if Message.count === 0 
    Message.create(text: "Tempora ipsam perferendis iure accusamus mollitia labore nobis!
    Accusantium in temporibus quod necessitatibus molestiae incidunt. Ratione eum nostrum natus! Sapiente dolor perferendis odit suscipit distinctio quae quos provident, ex aspernatur praesentium atque enim fugit corrupti consectetur in! Vel?", user_id: 1)

    Message.create(text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, commodi? Incidunt qui error cupiditate facilis fugiat, veniam officiis inventore quasi beatae corrupti laborum eius provident impedit iure sequi aut? Cumque?", user_id: 2)

    Message.create(text: "Praesentium, consequatur blanditiis? Explicabo, natus incidunt saepe omnis nulla excepturi accusantium ea minus dolore delectus officia earum voluptates sequi dolorum ipsum magnam aliquam harum iure error numquam. Nisi, suscipit nostrum.", user_id: 3)
end