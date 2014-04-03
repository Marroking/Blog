class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :pa
      t.string :num_control

      t.timestamps
    end
  end
end
