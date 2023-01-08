class CreateKitsProductsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :kits, :products
  end
end
