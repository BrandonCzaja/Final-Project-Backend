class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.integer :api_id
      t.string :common_name
      t.string :slug
      t.string :scientific_name
      t.integer :year
      t.string :rank
      t.string :family_common_name
      t.string :image
      t.string :genus
      t.string :family

      t.timestamps
    end
  end
end
