class UserCreatedStorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :users
  has_one :created_stories
end
