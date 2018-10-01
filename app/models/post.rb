class Post < ApplicationRecord
  belongs_to :user

  has_attached_file :image, styles: {large: "1024x768", medium: "720x240", thumb: "640x480>" },
   :convert_options => {
    :thumb => "-quality 75 -strip" },
    :storage => :s3,
  :s3_credentials => {
      :bucket => ENV['S3_BUCKET_NAME'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => ENV['AWS_REGION']
    }
    
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

end
