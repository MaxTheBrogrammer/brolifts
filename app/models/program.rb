class Program < ApplicationRecord
    has_many :program_group_joins, dependent: :destroy
    has_many :program_groups, through: :program_group_joins

    has_many :program_workouts, dependent: :destroy
    has_many :workouts, through: :program_workouts
    has_many :workout_exercises, through: :workouts

    accepts_nested_attributes_for :program_workouts, :reject_if => proc { |a| 
        a['day_of_week'].blank? },
        :allow_destroy => true

    validates_uniqueness_of :name

end
