class AddLatLonToListings < ActiveRecord::Migration
  def change
    add_column :listings, :latitude, :float
    add_column :listings, :longtitude, :float
  end
end
