class AddAttachmentUploadToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :upload
    end
  end

  def self.down
    drop_attached_file :photos, :upload
  end
end
