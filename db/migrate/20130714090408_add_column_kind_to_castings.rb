class AddColumnKindToCastings < ActiveRecord::Migration
  def change
    add_column :castings, :kind, :integer
  end
end
