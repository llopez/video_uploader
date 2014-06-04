class AddAttachmentAttachmentToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :assets, :attachment
  end
end
