require 'rails_helper'

RSpec.feature 'Post Index', type: :feature do
  let(:user) { User.create(name: 'Tom', bio: 'Teacher from Mexico.') }
  let!(:post) { Post.create(author: user, title: "first post's title") }

  before do
    user.update(photo: 'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png')
    Comment.create(user:, post:, text: 'hello Tom')
    Comment.create(user:, post:, text: 'Thank You Tom')
    Comment.create(user:, post:, text: 'Good afternoon Tom')
    Like.create(user:, post:)
  end

  scenario "see user's profile picture, username, number of posts, interactions, etc." do
    visit user_posts_path(user)
    expect(page).to have_selector('img[src="https://www.kasandbox.org/programming-images/avatars/leaf-blue.png"]')
    expect(page).to have_content('Tom')
    expect(page).to have_content('Number of posts: 1')
    expect(page).to have_content("first post's title")
    expect(page).to have_content('hello Tom')
    expect(page).to have_content('Comments: 3')
    expect(page).to have_content('Likes: 1')
  end

  scenario "When I click on a post, it redirects me to that post's show page and I can see first comment." do
    visit user_posts_path(user)

    second = all('.card-body a')[1]

    second.click

    expect(page).to have_content('hello Tom')

    expect(current_path).to eq user_post_path(user, post)
  end
end
