# == Schema Information
#
# Table name: hosts
#
# *id*::         <tt>integer, not null</tt>
# *name*::       <tt>string(255), not null, primary key, indexed => [monitor_id]</tt>
# *monitor_id*:: <tt>integer, not null, indexed => [name], indexed</tt>
#--
# == Schema Information End
#++

class Host < ActiveRecord::Base
  has_many :feeds
  belongs_to :monitor

  validates :name, :monitor_id, :presence => true
  validates_uniqueness_of :name, :scope => :monitor_id
end
