puts "seeding database.."  

characters_list = {
    "Ryu" => {
        :quote => "I will never stop fighting... I must find the true strength!",
        :bio => "The main protagonist of Street Fighter and one of the most recognizable characters in fighting games, Ryu seeks to better himself through battle.",
        :image => "/images/ryu.jpg",
        :video => "https://www.youtube.com/embed/sGxEbgfphes?start=33"
    },
    "Chun-Li" => {
        :quote => "I'll show you my Kung-Fu!",
        :bio => "A resourceful and dedicated officer of the law with a strong sense of justice that rivals that of her father, as she strongly believes in protecting the innocent and saving the lives of others.",
        :image => "/images/chun-li.jpg",
        :video => "https://www.youtube.com/embed/G0o04wf9S34?start=27"
    },
    "Ken" => {
        :quote => "Come at me as much as you can! I'll crush you!",
        :bio => "Ken is a martial artist born to a wealthy family and Ryu's eternal rival. Married to Eliza and has a son, Mel.",
        :image => "/images/ken.jpg",
        :video => "https://www.youtube.com/embed/0m69ZVhRSfw?start=16"
    },
    "F.A.N.G" => {
        :quote => "Two minutes! I'll finish you in two minutes!",
        :bio => "He is the newly inducted leader of the Nguuhao, one of the largest cartels in Asia and one that was infamous for kidnapping children to train into assassins.",
        :image => "/images/fang.jpg",
        :video => "https://www.youtube.com/embed/anM7gA4EsuY?start=13"
    },
    "Nash" => {
        :quote => "I'll show no mercy!",
        :bio => "A former air force pilot and Guile's mentor, after being killed by M Bison he is resurrected by Kolin with the sole purpose of eliminating M Bison and Shadaloo.",
        :image => "/images/nash.jpg",
        :video => "https://www.youtube.com/embed/lXbJq14tCdI?start=27"
    },
    "Abigail" => {
        :quote => "You can't drive anywhere without POWER! Vrooooom!",
        :bio => "First appearing in Final Fight as one of the bosses of the Mad Gear Gang, Abigail has left his life of crime behind to run a small garage in Metro City named 'Abigail's Scrap Metal' as a law abiding citizen.",
        :image => "/images/abigail.jpg",
        :video => "https://www.youtube.com/embed/xGTMxVTF_Xg?start=36"
    },
    "Cammy" => {
        :quote => "Being someone who has gone through so many scenes of carnage, those kind of cheap attacks won't reach me!",
        :bio => "A former Bison Doll, she was saved by Dhalsim and later joined Delta Red to help defeat Shadaloo and save the other dolls like her.",
        :image => "/images/cammy.jpg",
        :video => "https://www.youtube.com/embed/Jk0yfpNtvww?start=13"
    },
    "Sakura" => {
        :quote => "I'll be a great fighter one day, just you wait and see!",
        :bio => "Sakura began to participate in street fighting after watching Ryu win the first World Warrior tournament.",
        :image => "/images/sakura.jpg",
        :video => "https://www.youtube.com/embed/CSsAYwMhfGo?start=30"
    },
    "Vega" => {
        :quote => "Kukuku... The beautiful do not know defeat.",
        :bio => "Vega was born to a privileged noble family in Spain. The incident warped his mind, and he developed a dual personality: honorable nobleman by day, sadistic murderer by night.",
        :image => "/images/vega.jpg",
        :video => "https://www.youtube.com/embed/7CpA_FnjaRw?start=35"
    },
    "Laura" => {
        :quote => "Boom! That's how you start the fight and finish it quickly!",
        :bio => "Hailing from Brazil and sister to Sean, Laura seeks to promote her fighting Matsuda Jiu-Jitsu style and grow her Matsuda dojo. She travels the world seeking strong fighters to train with and join her dojo.",
        :image => "/images/laura.jpg",
        :video => "https://www.youtube.com/embed/lvVf-vnJ9gc?start=31"
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