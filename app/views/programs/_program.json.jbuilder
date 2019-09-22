json.extract! program, :id, :user_id, :public, :name, :description, :created_at, :updated_at
json.url program_url(program, format: :json)
json.program_workouts_attributes(program.program_workouts) do |program_workouts|
    json.partial! program_workouts
end
