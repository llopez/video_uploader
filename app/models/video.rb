class Video < ActiveRecord::Base
  attr_accessor :attachment
  before_create :panda_create
  before_destroy :panda_destroy
  
  def preview_url
    panda.preview_url
  end
  
  def encodings
    panda.encodings
  end

private
  def panda
    @panda ||= Panda::Video.find(panda_id)
  end

  def panda_destroy
    panda.delete
  end

  def panda_create
    video = Panda::Video.create(file: attachment)
    self.panda_id = video.id
    self.original_filename = video.original_filename
    self.source_url = video.source_url
    self.extname = video.extname
    self.duration = video.duration
    self.audio_codec = video.audio_codec
    self.video_codec = video.video_codec
    self.file_size = video.file_size
    self.width = video.width
    self.height = video.height
    self.fps = video.fps
    self.status = video.status
    self.mime_type = video.mime_type
    self.video_bitrate = video.video_bitrate
    self.audio_bitrate = video.audio_bitrate
    self.audio_channels = video.audio_channels
    self.audio_sample_rate = video.audio_sample_rate
    self.path = video.path
    self.cloud_id = video.cloud_id
    video
  end
end
