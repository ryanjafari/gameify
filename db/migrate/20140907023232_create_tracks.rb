class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.belongs_to :album
      t.string :title
      t.integer :number
      t.time :duration

      t.timestamps
    end
  end
end
