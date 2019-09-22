class ProgramWorkout < ApplicationRecord
  belongs_to :program
  has_one :workout, dependent: :destroy
  has_many :workout_exercises, through: :workout

  accepts_nested_attributes_for :workout, :reject_if => proc { |a| 
    a['name'].blank? },
    :allow_destroy => true
end
