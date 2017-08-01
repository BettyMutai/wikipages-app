class Category < ActiveRecord::Base
  has_many :businesses
  validates :name, :presence => true
end
