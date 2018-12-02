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

ActiveRecord::Schema.define(version: 20181201230307) do

  create_table "checkups", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "file_number"
    t.integer  "age"
    t.decimal  "weight_before_surgery"
    t.decimal  "height"
    t.decimal  "body_mass_before_surgery"
    t.integer  "classification_of_body_mass"
    t.decimal  "perfect_weight"
    t.decimal  "extra_weight"
    t.string   "type_of_surgery"
    t.text     "associated_diseases"
    t.text     "change_in_associated_diseases"
    t.decimal  "current_weight"
    t.decimal  "percentage_of_lost_weight"
    t.integer  "duration_of_surgery"
    t.integer  "user_id"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "sex"
    t.string   "married"
    t.string   "children"
    t.string   "work"
    t.string   "pregnancy"
    t.string   "use_of_vitamins"
    t.string   "forgetfulness"
    t.string   "anxiety"
    t.string   "skin"
    t.string   "nails"
    t.string   "hair_loss"
    t.string   "sagging"
    t.string   "cosmetic_surgery"
    t.string   "nausea"
    t.string   "resurrection"
    t.string   "dizziness"
    t.string   "Cholecystectomy"
    t.string   "reproduction_after_operation"
    t.string   "regrets_the_surgery"
    t.string   "recommended"
    t.text     "notes"
    t.string   "blood_pressure_before_surgery"
    t.string   "blood_pressure_after_surgery"
    t.string   "diabetes_before_surgery"
    t.string   "diabetes_after_surgery"
    t.string   "arthritis_before_surgery"
    t.string   "arthritis_after_surgery"
    t.string   "sleep_apnea_before_surgery"
    t.string   "sleep_apnea_after_surgery"
    t.string   "asthma_before_surgery"
    t.string   "asthma_after_surgery"
    t.string   "thyroid_disorders_before_surgery"
    t.string   "thyroid_disorders_after_surgery"
    t.string   "increase_in_body_fat_before_surgery"
    t.string   "increase_in_body_fat_after_surgery"
    t.string   "psychological_disorders_before_surgery"
    t.string   "psychological_disorders_after_surgery"
    t.string   "lack_of_fertility_before_surgery"
    t.string   "lack_of_fertility_after_surgery"
    t.string   "varicose_inferior_varicose_veins_before_surgery"
    t.string   "varicose_inferior_varicose_veins_after_surgery"
    t.string   "incontinence_before_surgery"
    t.string   "incontinence_after_surgery"
    t.string   "menstruation_before_surgery"
    t.string   "menstruation_after_surgery"
    t.string   "polycystic_ovaries_before_surgery"
    t.string   "polycystic_ovaries_after_surgery"
    t.string   "smoking_before_surgery"
    t.string   "smoking_after_surgery"
    t.string   "disturbances_before_surgery"
    t.string   "disturbances_after_surgery"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "checkup_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checkup_id"], name: "index_comments_on_checkup_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
