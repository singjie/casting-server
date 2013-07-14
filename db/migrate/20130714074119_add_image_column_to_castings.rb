class AddImageColumnToCastings < ActiveRecord::Migration
  def change
    add_attachment :castings, :image
  end
end
