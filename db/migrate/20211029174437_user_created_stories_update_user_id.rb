class UserCreatedStoriesUpdateUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_created_stories, :users_id, :user_id
  end
end
