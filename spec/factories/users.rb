FactoryBot.define do
  factory :user do
    email { 'test@example.com' }
    password { 'password' }
    confirmation_token { Devise.friendly_token }
    confirmed_at { Time.now }
    name { 'Tom' }
    photo { 'https://cdn.pixabay.com/photo/2020/05/11/15/38/tom-5158824_1280.png' }
    bio { 'This is a bio for a random user.' }
  end
end
