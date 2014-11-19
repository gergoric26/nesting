class AddUpIdToDown < ActiveRecord::Migration
  def change
    add_column :downs, :up_id, :integer
  end
end
