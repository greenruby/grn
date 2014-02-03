class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, 
    :omniauthable, , :omniauth_providers => [:github]
  has_many :items
  has_many :authorizations

end
