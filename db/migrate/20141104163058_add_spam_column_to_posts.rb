class AddSpamColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :spam, :integer
  end
end
