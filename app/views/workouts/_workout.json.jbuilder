json.extract! workout, :id, :user_id, :public, :name, :description, :program_workout_id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
json.workout_exercises_attributes(workout.workout_exercises) do |workout_exercise|
    json.partial! workout_exercise
end