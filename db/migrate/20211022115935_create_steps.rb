class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.text :location
      t.integer :user_id
      t.integer :journey_id
      t.text :story
      t.date :date
      t.text :image

      t.timestamps
    end
  end
end
