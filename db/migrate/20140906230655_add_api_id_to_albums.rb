class AddApiIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :api_id, :integer
  end
end
