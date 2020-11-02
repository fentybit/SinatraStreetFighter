Character.destroy_all
Stage.destroy_all 
StageMove.destroy_all
Move.destroy_all 

puts "seeding database.."  
StreetFighter::Adapter.new
puts "success!"