class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.integer :panda_id
      t.string :original_file_name
      t.string :source_url
      t.string :extname
      t.integer :duration
      t.string :audio_codec
      t.string :video_codec
      t.integer :file_size
      t.integer :width
      t.integer :height
      t.integer :fps
      t.string :status

      t.timestamps
    end
  end
end
