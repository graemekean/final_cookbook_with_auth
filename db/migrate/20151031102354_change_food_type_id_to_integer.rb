class ChangeFoodTypeIdToInteger < ActiveRecord::Migration
  def change
    change_column :ingredients, :foodtype_id,  :integer
  end
end
