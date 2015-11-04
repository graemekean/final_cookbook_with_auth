class RenameTypeToFoodTypeId < ActiveRecord::Migration
  def change
    rename_column :ingredients, :type, :foodtype_id

  end
end
