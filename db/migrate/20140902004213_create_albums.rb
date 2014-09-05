class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string    :catalog_number
      t.string    :title
      t.string    :artwork
      t.datetime  :release_date
      t.string    :publish_format
      t.string    :media_format
      t.string    :classification
      t.string    :published_by
      t.string    :composed_by
      t.string    :arranged_by
      t.string    :performed_by
      t.string    :lyrics_by
      t.text      :notes

      t.timestamps
    end
  end
end
