module ApplicationHelper

  def encrypt(message, key)
    command = 'echo -n "'+message+'" | openssl enc -nosalt -a -e -des3 -pass pass:"'+key+'"'
#     puts command
    out = %x[ #{command} ]
    return out[0..-2]
  end
  
end
