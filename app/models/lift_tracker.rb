class LiftTracker < ApplicationRecord
  belongs_to :workout
  belongs_to :program
  belongs_to :program_group
end
