class CreatePlayDates < ActiveRecord::Migration
  def change
    create_table :play_dates, id: false do |t|
      t.integer :puppy_id
      t.index :puppy_id
      t.integer :user_id
      t.index :user_id
      t.datetime :date
      t.integer :guest_count
    end
  end
end
