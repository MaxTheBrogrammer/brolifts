class CreateLiftTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :lift_trackers do |t|
      t.datetime :lifted_at
      t.integer :user_id
      t.text :notes
      t.integer :set_num
      t.integer :num_of_reps
      t.integer :exercise_id
      t.belongs_to :workout, foreign_key: true
      t.belongs_to :program, foreign_key: true
      t.belongs_to :program_group, foreign_key: true
      t.integer :weight

      t.timestamps
    end
  end
end
