class ChangeVideos < ActiveRecord::Migration
  def change
    change_column :videos, :panda_id, :string
    rename_column :videos, :original_file_name, :original_filename
    add_column :videos, :mime_type, :string
    add_column :videos, :video_bitrate, :integer
    add_column :videos, :audio_bitrate, :integer
    add_column :videos, :audio_channels, :integer
    add_column :videos, :audio_sample_rate, :integer
    add_column :videos, :path, :string
    add_column :videos, :cloud_id, :string
  end
end
