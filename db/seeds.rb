# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  first_name: "Garrett",
  last_name: "Heinlen",
  email: "heinleng@gmail.com",
  password: '123456',
  password_confirmation: '123456'
)

10.times do |index|
  a = App.new(
    title: "App #{index}",
    desc: "Words #{index}" * 100,
    user_id: User.first.id
  )

  app_image = AppImage.new
  file = "public/image.jpg"
  app_image.image = File.open(file)
  app_image.save!

  a.app_images << app_image

  a.save!
end
