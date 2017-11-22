require 'bundler'
Bundler.require

class MoL
  attr_reader :random_number

  def choice_number
    @random_number = rand(42)
  end

  def call(env)
    choice_number
    if(random_number == 42)
      [200 , {"Content-Type" => "text/html"} , [random_number.to_s] ]
    else
      [404 , {"Content-Type" => "text/html"} , [random_number.to_s] ]
    end
  end

end
