class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates_presence_of :email, :password
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: Regex.email
  validates_confirmation_of :password
  validates_presence_of :password_confirmation, if: :crypted_password_changed?
  
  
  def avatar_url(size)
    Avatar.gravatar(email, size)
  end
  
end
