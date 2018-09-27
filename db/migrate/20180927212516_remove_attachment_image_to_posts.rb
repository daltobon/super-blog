class RemoveAttachmentImageToPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :image_updated_at, :datetime
  end
end
