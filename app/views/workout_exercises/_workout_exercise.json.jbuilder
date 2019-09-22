json.extract! workout_exercise, :id, :set_num, :num_of_reps, :exercise_id, :weight, :exercise_order, :created_at, :updated_at
json.exercise do
    json.partial! "exercises/exercise", exercise: workout_exercise.exercise
end