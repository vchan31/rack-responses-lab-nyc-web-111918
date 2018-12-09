class Application
  
  def call(env)
    resp = Rack::Response.new
    time = Time.now.to_s.split(" ")[1]
    integer_time = time.to_i
    
    if integer_time < 12
      resp.write "good morning!"
      
    else 
      resp.write "good afternoon!"
    end
 resp.finish
  end
  
end 

