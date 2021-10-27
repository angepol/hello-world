class AddLongitudeAndLatitudeToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :longitude, :float
    add_column :steps, :latitude, :float
  end
end
