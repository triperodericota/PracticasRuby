require 'bundler'
Bundler.require

get '/' do
  number = rand(42)
  if (number == 42)
    [200 , [number.to_s]]
  else
    [404 , [number.to_s]]
  end
end


