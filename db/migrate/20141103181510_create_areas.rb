class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name, unique: true, null: false

      t.timestamps
    end
  end
end
