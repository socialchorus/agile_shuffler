class Dev < ActiveRecord::Base
  has_many :pairings
  validates_uniqueness_of :email

end