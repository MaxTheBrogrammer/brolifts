class ProgramGroup < ApplicationRecord
    has_many :program_group_joins, dependent: :destroy
    has_many :programs, through: :program_group_joins
    has_many :program_workouts, through: :programs
    has_many :workouts, through: :program_workouts
    has_many :workout_exercises, through: :workouts

    accepts_nested_attributes_for :programs, :reject_if => proc { |a| 
        a['name'].blank? },
        :allow_destroy => true

    validates_uniqueness_of :name

end
