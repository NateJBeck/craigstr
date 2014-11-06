class AddAreaIdColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :area_id, :integer
  end
end
