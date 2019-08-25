class CreateProgramGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :program_groups do |t|
      t.integer :user_id
      t.boolean :public, :default => false
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :program_groups, :name, unique: true
  end
end
