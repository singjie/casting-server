class AddColumnManagerToCasting < ActiveRecord::Migration
  def change
    add_column :castings, :manager_id, :integer
  end
end
