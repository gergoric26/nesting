class CreateDowns < ActiveRecord::Migration
  def change
    create_table :downs do |t|
      t.string :number

      t.timestamps
    end
  end
end
