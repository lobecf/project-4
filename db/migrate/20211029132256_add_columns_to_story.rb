class AddColumnsToStory < ActiveRecord::Migration[6.1]
  def change
    add_column :stories, :main_character, :string
    add_column :stories, :options_type, :string
    add_column :stories, :settings_type, :string
    add_column :stories, :live_type, :string
  end
end
