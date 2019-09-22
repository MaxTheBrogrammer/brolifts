class CreateProgramWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :program_workouts do |t|
      t.belongs_to :program, foreign_key: true
      t.string :day_of_week

      t.timestamps
    end
  end
end
