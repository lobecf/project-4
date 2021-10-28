class User < ApplicationRecord
    has_many :user_stories, dependent: :destroy
    has_many :stories, through: :user_stories
    
    has_secure_password
end
