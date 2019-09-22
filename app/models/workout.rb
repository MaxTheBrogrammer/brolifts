class Workout < ApplicationRecord
    belongs_to :program_workout, optional: true
    has_many :workout_exercises, dependent: :destroy

    accepts_nested_attributes_for :workout_exercises, :reject_if => proc { |a| 
        a['set_num'].blank? || a['exercise_order'].blank? },
        :allow_destroy => true

    validates_uniqueness_of :name
    
end
