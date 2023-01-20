module Card exposing (..)

type CardType = 
    Character (List String)
    | Goal (List String)
    | Event
    | Scene
    | Lore
    | Action

   
type Interupt =
    InTurn
    | InWords (List String)

type alias Card = 
    { name : String
    , tp : CardType
    , tx : String
    , interupts : Interupt
    }
    

lore : String -> String -> Card
lore nm tx =
    Card nm Lore tx InTurn


loreCards : List Card
loreCards = 
    [ lore "Technology" "Describe a recently invented technology. Eg: The Wheel, Fire, Catapult, Hyperspace travel"

    , lore "Religion" "Describe a large monument, nearby. Eg: Temple/Church, Shrine, Scuplture"

    , lore "War and Peace" "Is the current country/state you are in at war or peace?" 
    
    , lore "Economics" "Describe richest person around. Why are they so rich?"

    , lore "Ecology" "Name some commonly seen creatures where you are"

    , lore "Hazards" "Name something that most people are afraid of?"

    , lore "Outsiders" "Describe a person or group of people who do not fit in with Normal people"
    ]

goal : String -> List String -> Card
goal name goals =
    Card name (Goal goals) "" InTurn

goalCards : List Card
goalCards =
    [ goal "True Love" 
        [ "A chance meeting","A broken Heart","A friend in need","Some Bad advice","A fight","A second chance","A kiss"]
    , goal "Power" 
        [ "A desire for power","A useful friend","A locked room","An opportunity","A kind gesture","A betrayal ","A desire fulfilled"]
    , goal "Victory" 
        [ "An enemy","A Just Cause","First blood","An Ally ","A battle","A death","A reckoning"]
    ,goal "Redemtion" 
        [ "A shame revealed","A running away","Some good advice","A Crossroads","An old aquaintence","A second chance","A new person"] 
    , goal "Journey Home" 
        [ "Far from home","A friend for the road","Bandits ","A treasure untold","A traitor","An unfamiliar home","A restoration"]
    , goal "Rescue"
        [ "Someone is missing","A Clue","An Injury","A loose end","A negotiation","A daring Escape","A Reunion"]
    , goal "Hero"
        [ "A Call to adventure","A discovery","Someone in Need","A change of heart","A plan ","A failure ","A triumph"]
    , goal "The Heist"
        [ "A story of a treasure","Building a team","A plan","A trap","A getaway","The plan all along","Dividing the spoils"]
    , goal "Champion"
        ["A dream","A superior rival","A bet ","An obscure rule","A washed out mentor","A backing out","A victory"]
    , goal "Vengence"
        ["A bad history ","Someone to tell","A reason to heal","A meeting","A plan","A mockery","A demise"]
    , goal "The Hunt"
        [ "A bounty ","An unusual method","A revealing chat","A chase","A clue","A fight","A reward"]
    , goal "Escort"
        [ "A strange request","What's in it for me?","A stowaway","A capture","A new transport","A confrontation","An Arrival" ]    
    ]
