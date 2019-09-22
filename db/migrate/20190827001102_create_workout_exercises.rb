class CreateWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_exercises do |t|
      t.integer :set_num
      t.integer :num_of_reps
      t.integer :exercise_id
      t.belongs_to :workout, foreign_key: true
      t.integer :weight
      t.integer :exercise_order

      t.timestamps
    end
  end
end
