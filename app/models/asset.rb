class Asset < ActiveRecord::Base
  has_attached_file :attachment, 
                    styles: { 
                      medium: "300x300>", thumb: "100x100>" 
                    }, 
                    default_url: "/images/:style/missing.png",
                    storage: :s3,
                    s3_credentials: Rails.configuration.s3_credentials

  validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
