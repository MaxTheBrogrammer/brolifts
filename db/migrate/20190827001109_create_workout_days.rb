class CreateWorkoutDays < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_days do |t|
      t.integer :user_id
      t.datetime :work_out_at
      t.belongs_to :program_group, foreign_key: true
      t.belongs_to :program, foreign_key: true
      t.belongs_to :workout, foreign_key: true

      t.timestamps
    end
  end
end
