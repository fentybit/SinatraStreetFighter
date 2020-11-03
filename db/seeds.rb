Character.destroy_all
Stage.destroy_all 
StageMove.destroy_all
Move.destroy_all 

puts "seeding database.."  

characters_list = {
    "Ryu" => {
        :quote => "I will never stop fighting... I must find the true strength!",
        :image => "public/images/ryu.jpg",
        :video => "https://www.youtube.com/watch?v=sGxEbgfphes"
    },
    "Chun-Li" => {
        :quote => "I'll show you my Kung-Fu!",
        :image => "public/images/chun-li.jpg",
        :video => "https://www.youtube.com/watch?v=G0o04wf9S34"
    },
    "Ken" => {
        :quote => "Come at me as much as you can! I'll crush you!",
        :image => "public/images/ken.jpg",
        :video => "https://www.youtube.com/watch?v=0m69ZVhRSfw"
    },
    "F.A.N.G" => {
        :quote => "Two minutes! I'll finish you in two minutes!",
        :image => "public/images/fang.jpg",
        :video => "https://www.youtube.com/watch?v=anM7gA4EsuY"
    },
    "Nash" => {
        :quote => "I'll show no mercy!",
        :image => "public/images/nash.jpg",
        :video => "https://www.youtube.com/watch?v=lXbJq14tCdI"
    }
} 

characters_list.each do |name, character_hash|
    char = Character.new
    char.name = name 
    character_hash.each do |attribute, value|
        char[attribute] = value
    end 
    char.save
end 

moves_list = {
    "Collarbone Breaker" => {
    },
    "Solar Plexus Strike" => {
    },
    "Axe Kick" => {
    },
    "Hadoken" => {
    },
    "Spinning Bird Kick" => {
    },
    "Heat Rush" => {
    },
    "Knee Bazooka" => {
    },
    "Chopping Assault" => {
    },
    "Rapid Punch" => {
    },
    "Bad Hammer" => {
    }
}

moves_list.each do |name, move_hash|
    m = Move.new 
    m.name = name 
    m.save
end 

stages_list = {
    "Dojo" => {
        :image => "public/images/dojo.jpg"
    },
    "Field of Fate" => {
        :image => "public/images/field-of-fate.jpg"
    },
    "Suzaku Castle" => {
        :image => "public/images/suzaku-castle.jpg"
    },
    "Forgotten Waterfall" => {
        :image => "public/images/forgotten-waterfall.jpg"
    },
    "Temple of Ascension" => {
        :image => "public/images/temple-of-ascension.jpg"
    }
}

stages_list.each do |name, stage_hash|
    s = Stage.new 
    s.name = name 
    stage_hash.each do |attribute, value|
        s[attribute] = value
    end 
    s.save
end 

puts "success!"