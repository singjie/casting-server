class UserVideo < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body
  has_attached_file :video,
  :default_url => "/images/:style/missing.png",
  :url => "/system/:hash.:extension",
  :hash_secret => "b8697e0fe4930afe80f5b12935c0dabb232970a38a0efdca91437c900594e32c76a5bd244894312a6ada4a92350ea12cd7bd62fd57b4911a853bcf377cbcc4ae",
  :use_timestamp => false

  
end
