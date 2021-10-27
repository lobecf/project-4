class CreateUserStories < ActiveRecord::Migration[6.1]
  def change
    create_table :user_stories do |t|
      t.string :main_character
      t.string :options_type
      t.string :settings_type
      t.string :live_type
      t.belongs_to :story, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
