json.extract! program_group, :id, :user_id, :public, :name, :description, :created_at, :updated_at
json.url program_group_url(program_group, format: :json)



json.programs_attributes(program_group.programs) do |program|
    json.partial! program
end