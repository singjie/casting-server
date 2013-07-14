class AddDescriptionToCastings < ActiveRecord::Migration
  def change
    add_column :castings, :description, :text
  end
end
