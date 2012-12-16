# == Schema Information
#
# Table name: users
#
# *id*::      <tt>integer, not null, primary key</tt>
# *login*::   <tt>string(255), not null</tt>
# *email*::   <tt>string(255), not null, indexed</tt>
# *name*::    <tt>string(255)</tt>
# *surname*:: <tt>string(255)</tt>
# *key*::     <tt>string(255)</tt>
#--
# == Schema Information End
#++

class User < ActiveRecord::Base
  has_and_belongs_to_many :feeds

  validates :login, :email, :presence => true
end
