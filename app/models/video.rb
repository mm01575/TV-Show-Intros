class Video < ApplicationRecord
  belongs_to :user
  mount_uploader :file, VideoUploader

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("title LIKE ?", "%#{search}%")
  end

end
