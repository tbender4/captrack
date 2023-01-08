class ChangePackageToPkgInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :package, :pkg
  end
end
