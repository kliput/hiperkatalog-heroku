class RootController < ApplicationController
#  before_filter :authenticate_user!, :except => :about
  def about
    render :json => {
      :monitors_list => Settings.my_host+'/monitors',
      :hosts_list => Settings.my_host+'/hosts',
      :feeds_list => Settings.my_host+'/feeds'
    }
  end
  
end
