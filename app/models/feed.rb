# == Schema Information
#
# Table name: feeds
#
# *id*::         <tt>integer, not null, primary key</tt>
# *name*::       <tt>string(255), not null, indexed => [monitor_id], indexed</tt>
# *host_id*::    <tt>integer</tt>
# *monitor_id*:: <tt>integer, not null, indexed => [name]</tt>
# *uri*::        <tt>string(255), not null</tt>
#--
# == Schema Information End
#++

class Feed < ActiveRecord::Base
  belongs_to :host
  belongs_to :monitor
  has_and_belongs_to_many :users

  validates :name, :monitor_id, :uri, :presence => :true
  validates_uniqueness_of :name, :scope => :monitor_id
end
