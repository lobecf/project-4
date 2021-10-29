class CreateCreatedStories < ActiveRecord::Migration[6.1]
  def change
    create_table :created_stories do |t|
      t.string :name
      t.string :main_character
      t.string :options_type
      t.string :settings_type
      t.string :live_type

      t.timestamps
    end
  end
end
