require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

senbeta =  CarOwner.new("Fekade Senbeta")
binding.pry
