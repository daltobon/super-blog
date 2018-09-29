class Post < ApplicationRecord
  belongs_to :user

  has_attached_file :image, styles: {large: "1024x768", medium: "720x240", thumb: "640x480>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

end
