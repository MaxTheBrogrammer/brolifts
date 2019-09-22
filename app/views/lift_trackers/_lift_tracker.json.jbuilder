json.extract! lift_tracker, :id, :lifted_at, :user_id, :notes, :set_num, :num_of_reps, :exercise_id, :workout_id, :program_id, :program_group_id, :weight, :created_at, :updated_at
json.url lift_tracker_url(lift_tracker, format: :json)
