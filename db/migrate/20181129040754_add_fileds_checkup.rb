class AddFiledsCheckup < ActiveRecord::Migration[5.0]
  def change
    add_column :checkups, :sex, :string
    add_column :checkups, :married, :string
    add_column :checkups, :children, :string
    add_column :checkups, :work, :string
    add_column :checkups, :pregnancy, :string
    add_column :checkups, :use_of_vitamins, :string
    add_column :checkups, :forgetfulness, :string
    add_column :checkups, :anxiety, :string
    add_column :checkups, :skin, :string
    add_column :checkups, :nails, :string
    add_column :checkups, :hair_loss, :string
    add_column :checkups, :sagging, :string
    add_column :checkups, :cosmetic_surgery, :string
    add_column :checkups, :nausea, :string
    add_column :checkups, :resurrection, :string
    add_column :checkups, :dizziness, :string
    add_column :checkups, :Cholecystectomy, :string
    add_column :checkups, :reproduction_after_operation, :string
    add_column :checkups, :regrets_the_surgery, :string
    add_column :checkups, :recommended, :string
    add_column :checkups, :notes, :text
  end
end
