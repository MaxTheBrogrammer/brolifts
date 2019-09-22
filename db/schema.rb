# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_27_001313) do

  create_table "exercises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "muscle_type"
    t.string "equipment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_exercises_on_name", unique: true
  end

  create_table "lift_trackers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "lifted_at"
    t.integer "user_id"
    t.text "notes"
    t.integer "set_num"
    t.integer "num_of_reps"
    t.integer "exercise_id"
    t.bigint "workout_id"
    t.bigint "program_id"
    t.bigint "program_group_id"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_group_id"], name: "index_lift_trackers_on_program_group_id"
    t.index ["program_id"], name: "index_lift_trackers_on_program_id"
    t.index ["workout_id"], name: "index_lift_trackers_on_workout_id"
  end

  create_table "personal_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.bigint "lift_tracker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lift_tracker_id"], name: "index_personal_records_on_lift_tracker_id"
  end

  create_table "program_group_joins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "program_group_id"
    t.bigint "program_id"
    t.index ["program_group_id"], name: "index_program_group_joins_on_program_group_id"
    t.index ["program_id"], name: "index_program_group_joins_on_program_id"
  end

  create_table "program_groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "public", default: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_program_groups_on_name", unique: true
  end

  create_table "program_workouts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "program_id"
    t.string "day_of_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_program_workouts_on_program_id"
  end

  create_table "programs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "public", default: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_programs_on_name", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "email"
    t.string "image_url"
    t.string "google_token"
    t.string "google_refresh_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_days", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "work_out_at"
    t.bigint "program_group_id"
    t.bigint "program_id"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_group_id"], name: "index_workout_days_on_program_group_id"
    t.index ["program_id"], name: "index_workout_days_on_program_id"
    t.index ["workout_id"], name: "index_workout_days_on_workout_id"
  end

  create_table "workout_exercises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "set_num"
    t.integer "num_of_reps"
    t.integer "exercise_id"
    t.bigint "workout_id"
    t.integer "weight"
    t.integer "exercise_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_workout_exercises_on_workout_id"
  end

  create_table "workouts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "public"
    t.string "name"
    t.text "description"
    t.integer "program_workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_workouts_on_name", unique: true
  end

  add_foreign_key "lift_trackers", "program_groups"
  add_foreign_key "lift_trackers", "programs"
  add_foreign_key "lift_trackers", "workouts"
  add_foreign_key "personal_records", "lift_trackers"
  add_foreign_key "program_group_joins", "program_groups"
  add_foreign_key "program_group_joins", "programs"
  add_foreign_key "program_workouts", "programs"
  add_foreign_key "workout_days", "program_groups"
  add_foreign_key "workout_days", "programs"
  add_foreign_key "workout_days", "workouts"
  add_foreign_key "workout_exercises", "workouts"
end
