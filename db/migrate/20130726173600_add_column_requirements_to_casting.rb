class AddColumnRequirementsToCasting < ActiveRecord::Migration
  def change
    add_column :castings, :requirements, :text
  end
end
