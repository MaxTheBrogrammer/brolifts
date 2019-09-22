class CreatePersonalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_records do |t|
      t.integer :user_id
      t.belongs_to :lift_tracker, foreign_key: true

      t.timestamps
    end
  end
end
