class Application

  def call(env)
    resp = Rack::Response.new
 
    nums = [
      num_1 = Kernel.rand(1..20),
      num_2 = Kernel.rand(1..20),
      num_3 = Kernel.rand(1..20)
    ]
    resp.write "#{num_1} | #{num_2} | #{num_3}\n"
    nums.uniq.length == 1 ? (resp.write "You Win") : (resp.write "You Lose") 
    resp.finish
  end

end
