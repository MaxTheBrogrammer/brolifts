json.extract! program_workout, :id, :day_of_week, :created_at, :updated_at
json.workout_attributes do
    json.partial! "workouts/workout", workout: program_workout.workout
end