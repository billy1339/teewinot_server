class Post < ActiveRecord::Base

# this is meant to bypass the need for users
  def self.checkPasscode #it might have to be a self
    if @post.passcode != passcode
      # dont save the post
      # send a response of did not work....
    else
      @post.save
    end
  end

end
