class UserCreatedStory < ApplicationRecord
  belongs_to :user
  belongs_to :created_story
end
