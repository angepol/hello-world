class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.text :name
      t.text :countries
      t.date :departure_date
      t.date :return_date
      t.integer :user_id
      t.text :image
      t.timestamps
    end
  end
end
