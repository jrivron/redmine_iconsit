class CreateIconists < ActiveRecord::Migration
  def change
    create_table :iconists do |t|
      t.integer :tracker_id
      t.string :fontawesome_class
    end
    add_index :iconists, :tracker_id
  end
end
