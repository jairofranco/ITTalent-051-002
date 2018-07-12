class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nambre
      t.string :nombre_usuario
      t.string :password
      t.string :correo
      t.string :telefono
      t.integer :id_rol
      t.integer :id_ciudad

      t.timestamps
    end
  end
end
