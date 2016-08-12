class Movie < ActiveRecord::Base
	belongs_to :user
  	validates :title, :description, :cover, presence: true
	has_attached_file :cover, styles: { medium: "300x450#", thumb: "200x300#"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
