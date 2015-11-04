class RenameQuantityToType < ActiveRecord::Migration

  def change
    rename_column :ingredients, :quantity, :type
  end
end
