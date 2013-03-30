class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.datetime :startdatetime
      t.datetime :enddatetime

      t.timestamps
    end
  end
end
