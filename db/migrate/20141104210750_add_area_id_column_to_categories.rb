class AddAreaIdColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :area_id, :integer
  end
end
