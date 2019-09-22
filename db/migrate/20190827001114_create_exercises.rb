class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_type
      t.string :equipment_type

      t.timestamps
    end
    add_index :exercises, :name, unique: true
  end
end
