class CreateHilos < ActiveRecord::Migration
  def change
    create_table :hilos do |t|
      t.text :texto
      t.integer :usuario_id
      t.integer :estado

      t.timestamps
    end
  end
end
