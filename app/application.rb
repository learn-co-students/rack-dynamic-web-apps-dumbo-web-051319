class Application

  def call(env)
    resp = Rack::Response.new

    no1= Kernel.rand(1..20)
    no2= Kernel.rand(1..20)
    no3= Kernel.rand(1..20)
    resp.write "#{no1}\n"
    resp.write "#{no2}\n"
    resp.write "#{no3}\n"
    if no1==no2 && no2==no3
      resp.write "You Win"
    else
    resp.write "You Lose"
    end
    resp.finish
  end

end
