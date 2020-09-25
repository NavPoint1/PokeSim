# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Element.destroy_all
Area.destroy_all
Species.destroy_all


###### Types ######

water = Element.create(name: "Water")
ground = Element.create(name: "Ground")
normal = Element.create(name: "Normal")
flying = Element.create(name: "Flying")
psychic = Element.create(name: "Psychic")
fighting = Element.create(name: "Fighting")
fire = Element.create(name: "Fire")
rock = Element.create(name: "Rock")
electric = Element.create(name: "Electric")
poison = Element.create(name: "Poison")
grass = Element.create(name: "Grass")
bug = Element.create(name: "Bug")
ghost = Element.create(name: "Ghost")
dragon = Element.create(name: "Dragon")


###### Areas ######

# water, ground
beach = Area.create(                
    name: "Beach",
    encounter_rate: 80,
    image_url: "https://i.imgur.com/SLHfCe3.jpg"
)

# normal, flying, psychic, fighting
town = Area.create(                
    name: "Town",
     encounter_rate: 80,
     image_url: "https://i.imgur.com/3i8AXpC.jpg"
)     

# fire, rock
volcano = Area.create(
    name: "Volcano",
    encounter_rate: 90,
    image_url: "https://i.imgur.com/8BlibOo.jpg"
) 

# electric, poison
power_plant = Area.create(
    name: "Power Plant",
    encounter_rate: 80,
    image_url: "https://i.imgur.com/iMSJ4PB.jpg"
)    

# grass, bug
jungle = Area.create(
    name: "Jungle",
    encounter_rate: 100,
    image_url: "https://i.imgur.com/MR2SEGW.jpg"
)         

# ghost, ?
graveyard = Area.create(
    name: "Graveyard",
    encounter_rate: 20,
    image_url: "https://i.imgur.com/UN3Gr51.jpg"
)

# rock, flying, dragon
cave = Area.create(
    name: "Cave",
    encounter_rate: 80,
    image_url: "https://i.imgur.com/XoutaoK.jpg"
)      

# psychic legendary
lab = Area.create(
    name: "Laboratory",
    encounter_rate: 2,
    image_url: "https://i.imgur.com/P5VoD5X.png"
)




###### Species ######

CAPTURE_RATE = 35
FLEE_RATE = 15

### Beach ###
Species.create(
    name: "Wartortle",
    area: beach,
    element: water,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 8,
    image_url: "https://i.imgur.com/ylhjtLK.jpg"
)

Species.create(
    name: "Rhydon",
    area: beach,
    element: ground,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 2,
    image_url: ""
)

### Town ###
Species.create(
    name: "Eevee",
    area: town,
    element: normal,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 6,
    image_url: ""
)

Species.create(
    name: "Pidgey",
    area: town,
    element: flying,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 10,
    image_url: ""
)

Species.create(
    name: "Mr. Mime",
    area: town,
    element: psychic,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 2,
    image_url: ""
)

Species.create(
    name: "Machamp",
    area: town,
    element: fighting,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 2,
    image_url: ""
)

### Volcano ###
Species.create(
    name: "Magmar",
    area: volcano,
    element: fire,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 8,
    image_url: ""
)

Species.create(
    name: "Golem",
    area: volcano,
    element: rock,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 2,
    image_url: ""
)

### Power Plant ###
Species.create(
    name: "Pikachu",
    area: power_plant,
    element: electric,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 4,
    image_url: ""
)

Species.create(
    name: "Koffing",
    area: power_plant,
    element: poison,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 6,
    image_url: ""
)

### Jungle ###
Species.create(
    name: "Bellsprout",
    area: jungle,
    element: grass,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 5,
    image_url: ""
)

Species.create(
    name: "Scyther",
    area: jungle,
    element: bug,
    capture_rate: 15,
    flee_rate: FLEE_RATE,
    rarity: 5,
    image_url: ""
)

### Graveyard ###
Species.create(
    name: "Haunter",
    area: graveyard,
    element: ghost,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 8,
    image_url: ""
)

Species.create(
    name: "Gengar",
    area: graveyard,
    element: ghost,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 2,
    image_url: ""
)

### Cave ###
Species.create(
    name: "Onyx",
    area: cave,
    element: rock,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 8,
    image_url: ""
)

Species.create(
    name: "Zubat",
    area: cave,
    element: flying,
    capture_rate: CAPTURE_RATE,
    flee_rate: FLEE_RATE,
    rarity: 20,
    image_url: ""
)

Species.create(
    name: "Dragonite",
    area: cave,
    element: dragon,
    capture_rate: 15,
    flee_rate: FLEE_RATE,
    rarity: 1,
    image_url: ""
)

### Laboratory ###
Species.create(
    name: "Mew",
    area: lab,
    element: psychic,
    capture_rate: 10,
    flee_rate: 5,
    rarity: 5,
    image_url: ""
)

Species.create(
    name: "Mewtwo",
    area: lab,
    element: psychic,
    capture_rate: 10,
    flee_rate: 5,
    rarity: 5,
    image_url: ""
)
