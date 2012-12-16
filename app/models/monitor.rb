class Monitor < ActiveRecord::Base
  has_many :feeds
  has_many :monitors

  validates :name, :presence => true
  validates_uniqueness_of :name, :scope => :id
end
 
