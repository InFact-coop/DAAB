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
    }


type Action
    = AddBox
    | AddBanking
    | ExitBox
    | ExitBanking



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
