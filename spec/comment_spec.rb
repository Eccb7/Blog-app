require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'can be created' do
    user = User.create(name: 'Test User') # Create a user with a name
    post = Post.create(title: 'Test Post') # Create a post with a title

    comment = Comment.new(user: user, post: post, text: 'This is a test comment.') # Create a comment associated with the user and post

    expect(comment).to be_valid
  end
end
