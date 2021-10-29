class UserCreatedStory < ApplicationRecord
  belongs_to :users
  belongs_to :created_stories
end
