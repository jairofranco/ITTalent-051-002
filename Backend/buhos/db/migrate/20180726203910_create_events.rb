class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :eventDate
      t.text :description
      t.text :theme
      t.text :tags

      t.timestamps
    end
  end
end
