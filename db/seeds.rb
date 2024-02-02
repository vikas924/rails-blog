# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
  # 30.times do
  #   User.create(name: Faker::Name.name, photo: Faker::Avatar.unique.image, bio: Faker::Lorem.paragraph(sentence_count: 5), posts_counter: 0)
  # end
  
  # 50.times do
  #   Post.create(author:User.find(Faker::Number.between(from: 1, to: 30)), title: Faker::Lorem.word, text: Faker::Lorem.paragraph_by_chars, comments_counter: 0, likes_counter: 0)
  # end
  
  # 200.times do
  #   Comment.create(user:User.find(Faker::Number.between(from: 1, to: 30)), post_id: Faker::Number.between(from: 1, to: 50), text:Faker::Lorem.sentence)
  # end
  
  # 350.times do
  #   Like.create(user:User.find(Faker::Number.between(from: 1, to: 30)), post_id: Faker::Number.between(from: 1, to: 200))
  # end