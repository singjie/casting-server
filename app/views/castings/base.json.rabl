attribute :id, :description, :kind, :name

node :image do |c|
 c.image.url(:original)
end

child :manager do
  extends "managers/base"
end