json.array! @program_groups do |program_group|
    json.extract! program_group, :id, :user_id, :public, :name, :description, :created_at, :updated_at
end