json.extract! personal_record, :id, :user_id, :lift_tracker_id, :created_at, :updated_at
json.url personal_record_url(personal_record, format: :json)
