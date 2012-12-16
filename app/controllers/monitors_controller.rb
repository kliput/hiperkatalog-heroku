include ApplicationHelper

class MonitorsController < ApplicationController


  # GET /monitors
  def index
    puts '----'
    puts Monitor
    puts '----'
    
    @monitors = Monitor.all
    
    @repsonse = []
    
    # tworzenie odpowiedzi - 'obliczanie' uri
    for monitor in @monitors
      @response << {
        :name => monitor.name,
        :uri => get_monitor_uri(monitor.id)
      }
    end
    
    render :json => @reponse
  end
  
  # POST /monitors
  def create
    
    @name = params[:name]
    
    @monitor = Monitor.new(:name => @name)
    
    if @host.save
      render :json => @monitor, :status => :created, :location => @monitor
    else
      render :json => @monitor.errors, :status => :unprocessable_entity
    end
  end

end
