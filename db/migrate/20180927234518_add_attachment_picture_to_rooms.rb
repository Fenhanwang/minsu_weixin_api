class AddAttachmentPictureToRooms < ActiveRecord::Migration[5.2]
  def self.up
    change_table :rooms do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :rooms, :picture
  end
end
