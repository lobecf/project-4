class StorySerializer < ActiveModel::Serializer
  attributes :id, :name, :body_text, :images, :gifs
end
