class CreateBandMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :band_memberships do |t|
      t.belongs_to :artist, null: false, foreign_key: true
      t.belongs_to :band, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
