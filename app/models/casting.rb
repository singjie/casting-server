class Casting < ActiveRecord::Base
  CASTINGKINDLIST = 1
  CASTINGKINDMAIN = 2
  
  belongs_to :manager
  
  attr_accessible :image, :description, :kind, :name, :manager_id

  has_attached_file :image,
  :styles => { :medium => "640x640>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png",
  :url => "/system/:hash.:extension",
  :hash_secret => "b8697e0fe4930afe80f5b12935c0dabb232970a38a0efdca91437c900594e32c76a5bd244894312a6ada4a92350ea12cd7bd62fd57b4911a853bcf377cbcc4ae",
  :use_timestamp => false
  
  def self.latest
    main = Casting.where(:kind => CASTINGKINDMAIN).order("id desc").limit(1).all
    
    lists = Casting.where(:kind => CASTINGKINDLIST).order("id desc").limit(10).all
    
    castings = main+lists
    
    castings
  end
  
end
