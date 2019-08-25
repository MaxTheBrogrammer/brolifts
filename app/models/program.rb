class Program < ApplicationRecord
    has_many :program_group_joins, dependent: :destroy
    has_many :program_groups, through: :program_group_joins

    validates_uniqueness_of :name
end
