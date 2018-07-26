class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.float :totalValue
      t.float :education
      t.float :security
      t.float :healt
      t.float :transport
      t.float :infraestructure
      t.float :other
      t.references :cities, foreign_key: true

      t.timestamps
    end
  end
end
