class Movie < ActiveRecord::Base
	has_many :descargas
	has_many :onlines

	accepts_nested_attributes_for :descargas,
  															reject_if: proc { |attributes| attributes['link'].blank? },
  															allow_destroy: true
 	accepts_nested_attributes_for :onlines,
  															reject_if: proc { |attributes| attributes['link'].blank? },
  															allow_destroy: true

  	validates :title, :description, :cover, presence: true
	has_attached_file :cover, styles: { medium: "300x450#", thumb: "200x300#"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
