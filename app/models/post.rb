class Post < ActiveRecord::Base

  def self.checkPasscode #it might have to be a self
    if @post.passcode != passcode
      # dont save the post
      # send a response of
    else
      @post.save
    end
  end

end
