class CreateAddedPuppies < ActiveRecord::Migration
  def change
    create_table :added_puppies, id: false do |t|
      t.integer :puppy_id
      t.index :puppy_id
      t.integer :user_id
      t.index :user_id
    end
  end
end
