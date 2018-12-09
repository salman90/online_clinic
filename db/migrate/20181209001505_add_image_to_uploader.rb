class AddImageToUploader < ActiveRecord::Migration[5.0]
  def change
    add_column :checkups, :image, :string
  end
end
