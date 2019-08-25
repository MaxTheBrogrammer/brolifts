class CreateProgramGroupJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :program_group_joins do |t|
      t.belongs_to :program_group, foreign_key: true
      t.belongs_to :program, foreign_key: true
    end
  end
end
