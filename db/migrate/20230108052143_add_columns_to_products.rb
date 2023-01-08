class AddColumnsToProducts < ActiveRecord::Migration[7.0]
  ## General Properties
  def change
    add_column :products, :part_number, :string
    add_column :products, :mfr_part_number, :string
    add_column :products, :quantity, :integer
    add_column :products, :package, :string
    add_column :products, :status, :string
    add_column :products, :type, :string

    add_index :products, :part_number
  end
end
