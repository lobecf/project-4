class UserStorySerializer < ActiveModel::Serializer
  attributes :id, :main_character, :options_type, :settings_type, :live_type
  has_one :story
  has_one :user
end
