class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :listings, :longtitude, :longitude

  end
end
