class AddingBloodPressureToCheckupTable < ActiveRecord::Migration[5.0]
  def change
    add_column :checkups, :blood_pressure_before_surgery, :string
    add_column :checkups , :blood_pressure_after_surgery, :string
    add_column :checkups, :diabetes_before_surgery, :string
    add_column :checkups, :diabetes_after_surgery, :string
    add_column :checkups, :arthritis_before_surgery, :string
    add_column :checkups, :arthritis_after_surgery, :string
    add_column :checkups, :sleep_apnea_before_surgery, :string
    add_column :checkups, :sleep_apnea_after_surgery, :string
    add_column :checkups, :asthma_before_surgery, :string
    add_column :checkups, :asthma_after_surgery, :string
    add_column :checkups, :thyroid_disorders_before_surgery, :string
    add_column :checkups, :thyroid_disorders_after_surgery, :string
    add_column :checkups, :increase_in_body_fat_before_surgery, :string
    add_column :checkups, :increase_in_body_fat_after_surgery, :string
    add_column :checkups, :psychological_disorders_before_surgery, :string
    add_column :checkups, :psychological_disorders_after_surgery, :string
    add_column :checkups, :lack_of_fertility_before_surgery, :string
    add_column :checkups, :lack_of_fertility_after_surgery, :string
    add_column :checkups, :varicose_inferior_varicose_veins_before_surgery, :string
    add_column :checkups, :varicose_inferior_varicose_veins_after_surgery, :string
    add_column :checkups, :incontinence_before_surgery, :string
    add_column :checkups, :incontinence_after_surgery, :string
    add_column :checkups, :menstruation_before_surgery, :string
    add_column :checkups, :menstruation_after_surgery, :string
    add_column :checkups, :polycystic_ovaries_before_surgery, :string
    add_column :checkups, :polycystic_ovaries_after_surgery, :string
    add_column :checkups, :smoking_before_surgery, :string
    add_column :checkups, :smoking_after_surgery, :string
    add_column :checkups, :disturbances_before_surgery, :string
    add_column :checkups, :disturbances_after_surgery, :string
  end
end
