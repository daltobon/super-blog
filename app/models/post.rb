 class Post < ApplicationRecord
#   before_destroy :remove_file  
#   belongs_to :user

#   has_attached_file :image, styles: {large: "1024x768", medium: "720x240", thumb: "640x480>" }
#   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
#   validates :title, presence: true
#   validates :content, presence: true, length: { minimum: 250 }
#   validates :image, presence: true


#   def getImage
#     @doc = Nokogiri::HTML(self.content)
#     if (!@doc.css('img').blank?)
#       @file = @doc.css('img')[0]['src']
#       @dir = File.expand_path("..", @file)
#       return @dir
#     end
#   end

#   def remove_file
#     if !getImage.blank?
#       FileUtils.rm_rf(Rails.root.join('public', getImage[1..-1]))
#     end
#   end

 end
