class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.date :dateAgenda
      t.text :description
      t.text :tags
      t.references :public_servants, foreign_key: true

      t.timestamps
    end
  end
end
