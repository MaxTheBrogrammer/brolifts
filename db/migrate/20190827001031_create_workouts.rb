class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.boolean :public
      t.string :name
      t.text :description
      t.integer :program_workout_id

      t.timestamps
    end
    add_index :workouts, :name, unique: true
  end
end
