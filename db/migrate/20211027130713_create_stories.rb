class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :name
      t.text :body_text
      t.string :images
      t.string :gifs

      t.timestamps
    end
  end
end
