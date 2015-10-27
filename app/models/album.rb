class Album < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
# attr_accessible :image
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


	# has_attached_file :image, :styles => { :medium => "400x600#" }
	
	#  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
