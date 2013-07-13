class AddAlbumSeqToActivities < ActiveRecord::Migration
  def change
  	add_column :activities , :album_seq , :integer
  end
end
