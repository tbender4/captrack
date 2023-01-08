class AddReferenceToKit < ActiveRecord::Migration[7.0]
  def change
    add_reference :kits, :project, null: false, foreign_key: true
  end
end
