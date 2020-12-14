class User < ActiveRecord::Base
    extend Devise::Models

    devise :database_authenticatable, :registerable,
           :validatable
  
    has_many :videos
  
    validates :username, :email, uniqueness: true
  
    include DeviseTokenAuth::Concerns::User
  end
  