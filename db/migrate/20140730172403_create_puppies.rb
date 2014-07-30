class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :image, null: false
    end
  end
end
