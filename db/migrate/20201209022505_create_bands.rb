class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.string :country_code, null: false
      t.string :country_subdivision_code
      t.date :formed_at

      t.timestamps
    end
  end
end
