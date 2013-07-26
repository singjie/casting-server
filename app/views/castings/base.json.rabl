attribute :id, :description, :kind, :name

node :image do |c|
 c.image.url(:original)
end

child :manager
  extends "managers/base"
end