class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
 # method from bcrypt gem
 has_secure_password
 before_save {self.email = email.downcase}

end
