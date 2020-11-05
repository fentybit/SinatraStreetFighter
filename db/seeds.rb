puts "seeding database.."  

characters_list = {
    "Ryu" => {
        :quote => "I will never stop fighting... I must find the true strength!",
        :bio => "The main protagonist of Street Fighter and one of the most recognizable characters in fighting games, Ryu seeks to better himself through battle.",
        :image => "/images/ryu.jpg",
        :video => "https://www.youtube.com/watch?v=sGxEbgfphes"
    },
    "Chun-Li" => {
        :quote => "I'll show you my Kung-Fu!",
        :bio => "A resourceful and dedicated officer of the law with a strong sense of justice that rivals that of her father, as she strongly believes in protecting the innocent and saving the lives of others.",
        :image => "/images/chun-li.jpg",
        :video => "https://www.youtube.com/watch?v=G0o04wf9S34"
    },
    "Ken" => {
        :quote => "Come at me as much as you can! I'll crush you!",
        :bio => "Ken is a martial artist born to a wealthy family and Ryu's eternal rival. Married to Eliza and has a son, Mel.",
        :image => "/images/ken.jpg",
        :video => "https://www.youtube.com/watch?v=0m69ZVhRSfw"
    },
    "F.A.N.G" => {
        :quote => "Two minutes! I'll finish you in two minutes!",
        :bio => "He is the newly inducted leader of the Nguuhao, one of the largest cartels in Asia and one that was infamous for kidnapping children to train into assassins.",
        :image => "/images/fang.jpg",
        :video => "https://www.youtube.com/watch?v=anM7gA4EsuY"
    },
    "Nash" => {
        :quote => "I'll show no mercy!",
        :bio => "A former air force pilot and Guile's mentor, after being killed by M Bison he is resurrected by Kolin with the sole purpose of eliminating M Bison and Shadaloo.",
        :image => "/images/nash.jpg",
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
        :image => "/images/dojo.jpg"
    },
    "Field of Fate" => {
        :image => "/images/field-of-fate.jpg"
    },
    "Suzaku Castle" => {
        :image => "/images/suzaku-castle.jpg"
    },
    "Forgotten Waterfall" => {
        :image => "/images/forgotten-waterfall.jpg"
    },
    "Temple of Ascension" => {
        :image => "/images/temple-of-ascension.jpg"
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