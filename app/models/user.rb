class User < ApplicationRecord
  #has_secure_password
  validates :username, presence: true #, unique: true
  # validates :password, presence:true, length: {minimum: 6}

  def to_s
    "<User | '#{username}' >"
  end
end
