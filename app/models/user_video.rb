class UserVideo < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body
  has_attached_file :video, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
end
