class AddColumnsToUserStories < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_stories, :user, null: false, foreign_key: true
    add_reference :user_stories, :story, null: false, foreign_key: true
  end
end
