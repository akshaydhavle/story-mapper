class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  # Virtual attribute for authenticating via email or username
  attr_accessor :login

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :login, :password, :password_confirmation, :remember_me

  protected
    # Overridden to allow for username or email login
    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    end
end
