require 'httparty'

class Consumer 

  include HTTParty 
  base_uri "http://45.55.172.121:3000/api/users"

  
  def list
    self.class.get ('')
  end

  def get (username)
    self.class.get('/' + username.to_s)
  end

  def add(user)
    options = {body: user} 
    
    self.class.post('',options)
  end

  def edit (username, user)
    options = {body: user}
    self.class.put('/'+ username.to_s,options)
  end

  def delete (username)
    self.class.delete('/' + username.to_s)
  end
end

consumer = Consumer.new()
# add =add


# puts consumer
# puts add

print consumer.add ({ 
  username: "@mari",
  fullname: "Maria Romero",
  address: "El silencio",
  email: "mariiromero17@gmail.com",
  phone: "04125898626",
  gender: "female",
  identity: "22017942"
  });


# list = consumer.list=end


# for i in 0.. list.length
#   puts add [i]["fullname"]
# end