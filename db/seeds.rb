# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserResolution.destroy_all
User.destroy_all
Resolution.destroy_all


user1 = User.create(name: "Iuliia", user_name: "Ula1208")
user2 = User.create(name: "Austin", user_name: "Aust123")
user3 = User.create(name: "Alice", user_name: "Ali098")
user4 = User.create(name: "Matt", user_name: "Mat456")

res1 = Resolution.create(style: "Outdoor", description: "Hiking", image: "https://www.rei.com/adventures/assets/adventures/images/trip/core/latinamerica/pal_hero", location: "Denver")
res2 = Resolution.create(style: "Outdoor", description: "Fishing", image: "https://www.michigan.org/sites/default/files/teasers/Fly-Fishing-Au-Sable-River-Grayling-2_0.jpg", location: "Boulder")
res3 = Resolution.create(style: "Outdoor", description: "Snowboard", image: "https://i.pinimg.com/originals/9a/d5/72/9ad57218d804ed73bbe66a694a3b8224.jpg", location: "Keystone")

res4 = Resolution.create(style: "Indoor", description: "Archery", image: "https://worldarchery.org/sites/default/files/styles/manual_crop_16_9/public/page/image/archery_web.jpg?itok=EP-1kTyE&c=42aab2c8019a0badf60dfe63e9e50f7f", location: "Golden")
res5 = Resolution.create(style: "Indoor", description: "Ping Pong", image: "https://s25468.pcdn.co/wp-content/uploads/2019/10/tennis.jpg", location: "Castle Rock")
res6 = Resolution.create(style: "Indoor", description: "Bowling", image: "https://www.denverpost.com/wp-content/uploads/2016/04/20130116__20130118_C1_AE18PUNCHBOWLp3.jpg?w=600", location: "Denver")

UserResolution.create(user: user1, resolution:res5)
UserResolution.create(user: user2, resolution:res1)
UserResolution.create(user: user3, resolution:res4)
UserResolution.create(user: user4, resolution:res3)
UserResolution.create(user: user3, resolution:res6)
UserResolution.create(user: user2, resolution:res3)
UserResolution.create(user: user1, resolution:res1)

