module HostsHelper
  
  def get_host_uri(monitor_id, host_id)
    if not Monitor.find_by_id(monitor_id)
      puts 'no monitor with id #{monitor_id}'
      return ''
    end
    if not Host.find_by_id(host_id)
      puts 'no host with id #{host_id}'
      return ''
    end
    
    return Settings.my_host+'/monitors/'+monitor_id+'/hosts/'+host_id
  end
  
end
