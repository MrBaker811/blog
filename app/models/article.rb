class Article < ActiveRecord::Base
 belongs_to :user
  has_attached_file :photo, :styles => { :medium => "500x2000>", :large => "1140x2000>" }
 validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]


  

	

validates :title, presence: true,
                    length: { minimum: 5 }
end
