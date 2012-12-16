module MonitorsHelper
  
  class MonitorResponse
    
  end
  
  def get_monitor_uri(monitor_id, host_id)
    if not Monitor.find_by_id(monitor_id)
      puts 'no monitor with id #{monitor_id}'
      return ''
    end
    
    return Settings.my_host+'/monitors/'+monitor_id
  end
  
end
