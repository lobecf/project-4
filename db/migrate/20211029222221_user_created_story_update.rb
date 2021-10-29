class UserCreatedStoryUpdate < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_created_stories, :created_stories_id, :created_story_id
  end
end
