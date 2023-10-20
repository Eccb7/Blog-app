require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is not valid without a title' do
    user = User.create(name: 'Jane Smith', posts_counter: 2)
    post = user.posts.new(title: nil, comments_counter: 1, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid with a long title' do
    user = User.create(name: 'Alice Johnson', posts_counter: 3)
    post = user.posts.new(title: 'A' * 251, comments_counter: 1, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is not valid with a negative comments_counter' do
    user = User.create(name: 'Bob Smith', posts_counter: 1)
    post = user.posts.new(title: 'Sample Post', comments_counter: -1, likes_counter: 0)
    expect(post).to_not be_valid
  end

  it 'is valid with zero comments_counter' do
    user = User.create(name: 'Eve Johnson', posts_counter: 4)
    post = user.posts.new(title: 'Sample Post', comments_counter: 0, likes_counter: 2)
    expect(post).to be_valid
  end
end
