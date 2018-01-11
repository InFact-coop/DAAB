module Types exposing (..)

import Navigation


-- Model


type Route
    = HomeRoute
    | BoxRoute
    | BankingRoute
    | BoxThanksRoute
    | BankingThanksRoute
    | ProgressRoute
    | HelpRoute
    | ThankYouRoute


type alias Model =
    { route : Route
    , userInput : String
    , questions : List Question
    }


type alias Question =
    { id : Int
    , question : String
    , answer : String
    }



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
