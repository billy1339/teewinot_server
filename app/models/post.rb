class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

# this is meant to bypass the need for users
  def self.checkPasscode(post) #it might have to be a self
    if post.passcode == ENV['PASSCODE']
      post = Post.new(post_params)

      if post.save
        render json: post, status: :created, location: post
      else
        render json: post.errors, status: :unprocessable_entity
      end

    else

    end
  end


end



