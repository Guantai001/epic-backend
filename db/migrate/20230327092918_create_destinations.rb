class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name 
      t.string :image
      t.string :location
      t.string :description
      t.string :price


      t.timestamps
    end
  end
end
