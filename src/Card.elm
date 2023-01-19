module Card exposing (..)

type CardType = 
    Character (List String)
    | Goal (List String)
    | Event
    | Scene
    | Lore
    | Action

    

type alias Card = 
    { name : String
    , tp : CardType
    , tx : String
    }
    

lore : String -> String -> Card
lore nm tx =
    Card nm Lore tx


loreCards : List Card
loreCards = 
    [ lore "Technology" "Describe a recently invented technology. Eg: The Wheel, Fire, Catapult, Hyperspace travel"

    , lore "Religion" "Describe a large monument, nearby. Eg: Temple/Church, Shrine, Scuplture."

    , lore "War and Peace" "Is the current country/state you are in at war or peace?" 
    
    , lore "Economics" "Describe richest person around. Why are they so rich?"

    , lore "Ecology" "Name some commonly seen creatures where you are."

    , lore "Hazards" "Name something that most people are afraid of?"

    , lore "Outsiders" "Describe a person or group of people who do not fit in with Normal people."
    ]
