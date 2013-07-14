class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|

      t.timestamps
    end
  end
end
