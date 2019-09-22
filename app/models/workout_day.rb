class WorkoutDay < ApplicationRecord
  belongs_to :program_group
  belongs_to :program
  belongs_to :workout
end
