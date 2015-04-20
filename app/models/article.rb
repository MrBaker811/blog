class Article < ActiveRecord::Base


 belongs_to :user
  has_attached_file :photo, :styles => { :medium => "800x500>", :large => "1200x500>" }
 validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]



 

 
validates :photo, presence: true
validates :title, presence: true,
                    length: { minimum: 5 }

 	def to_param
 		"#{id}" "#{title}".parameterize
 	end
end

 