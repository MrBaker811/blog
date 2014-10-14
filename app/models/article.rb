class Article < ActiveRecord::Base
 belongs_to :user
  has_attached_file :photo, :styles => { :medium => "1000x400>", :large => "500x2000>" }
 validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]


  

	
validates :photo, presence: true
validates :title, presence: true,
                    length: { minimum: 5 }
end
