class Photo < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_attached_file :upload, styles: { thumb: "500x500" }
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/
  validates :upload, presence: true
end
