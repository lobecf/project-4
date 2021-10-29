class CreateUserCreatedStories < ActiveRecord::Migration[6.1]
  def change
    create_table :user_created_stories do |t|
      t.belongs_to :users, null: false, foreign_key: true
      t.belongs_to :created_stories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
