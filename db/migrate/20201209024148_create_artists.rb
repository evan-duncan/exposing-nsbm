class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :country_code, null: false, limit: 2

      t.timestamps
    end
  end
end
