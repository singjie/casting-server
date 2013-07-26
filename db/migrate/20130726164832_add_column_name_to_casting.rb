class AddColumnNameToCasting < ActiveRecord::Migration
  def change
    add_column :castings, :name, :string
  end
end
