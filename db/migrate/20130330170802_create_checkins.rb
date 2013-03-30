class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :event_id
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.float :accuracy
      t.datetime :datetime

      t.timestamps
    end
  end
end
