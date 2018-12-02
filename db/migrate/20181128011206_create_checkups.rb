class CreateCheckups < ActiveRecord::Migration[5.0]
  def change
    create_table :checkups do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.integer :file_number
      t.integer :age
      t.decimal :weight_before_surgery
      t.decimal :height
      t.decimal :body_mass_before_surgery
      t.integer :classification_of_body_mass
      t.decimal :perfect_weight
      t.decimal :extra_weight
      t.string :type_of_surgery
      t.text :associated_diseases
      t.text :change_in_associated_diseases
      t.decimal :current_weight
      t.decimal :percentage_of_lost_weight
      t.integer :duration_of_surgery
      t.integer :user_id
      t.timestamps
    end
  end
end
