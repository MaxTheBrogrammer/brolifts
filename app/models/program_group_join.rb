class ProgramGroupJoin < ApplicationRecord
  belongs_to :program_group
  belongs_to :program, dependent: :destroy
end
