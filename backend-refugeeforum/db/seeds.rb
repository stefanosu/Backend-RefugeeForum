# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username:'Stefanos', password:'abc123')
User.create(username:'Mike', password:'123abc')
User.create(username:'Mus', password:'knicks')
User.create(username:'Amman', password:'brazil')
User.create(username:'Bear', password:'mosby')
User.create(username:'Brian', password:'marvel')



Channel.create(title:'Tech', user_id:1)
Channel.create(title:'Food', user_id:2)
Channel.create(title:'Basketball', user_id:3)
Channel.create(title:'Sports', user_id:2)
Channel.create(title:'Politics', user_id:4)
Channel.create(title:'Poetry', user_id:5)


Post.create(title: 'Almost done', text:'first_post', url:'digitalocean.com', channel_id: 1)
Post.create(title: 'Eritrean Food', text:'Shiro', url:'massawa.com', channel_id: 2)
Post.create(title: 'Sports ', text:'Soccor', url:'espn.com', channel_id: 3)
Post.create(title: 'Tradgey', text:'Mahmoud Darwish', url:'poetry.com', channel_id:5)
Post.create(title: '2020Race', text:'', url:'nytimes.com', channel_id:4)


Comment.create(text:'JS is weird',post_id:2, user_id:1)
Comment.create(text:'Knicks...',post_id:3, user_id:3)
Comment.create(text:'Bernie Pandas',post_id:1 , user_id:2)
Comment.create(text:'Water',post_id: 1 , user_id:2)
Comment.create(text:'food is good',post_id: 4 , user_id:4)