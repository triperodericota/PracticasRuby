class PoliteControllerController < ApplicationController
  def salute
    puts ["Good night", "ma'am", "Hola!", "Buen dia!"].sample
  end
end
