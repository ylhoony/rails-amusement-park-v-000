class User < ActiveRecord::Base
  # write associations here
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if nausea > happiness
      return "sad"
    else
      return "happy"
    end
  end


end
