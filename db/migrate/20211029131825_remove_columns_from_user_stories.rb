class RemoveColumnsFromUserStories < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_stories, :main_character, :string
    remove_column :user_stories, :options_type, :string
    remove_column :user_stories, :settings_type, :string
    remove_column :user_stories, :live_type, :string
    remove_column :user_stories, :story_id, :bigint
    remove_column :user_stories, :user_id, :bigint
  end
end
