class CreatePublicServants < ActiveRecord::Migration[5.2]
  def change
    create_table :public_servants do |t|
      t.text :name
      t.text :document
      t.text :position
      t.integer :age
      t.text :period
      t.integer :salary

      t.timestamps
    end
  end
end
