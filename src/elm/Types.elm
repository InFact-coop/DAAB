module Types exposing (..)

import Navigation
import Date exposing (..)


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
    , boxes : List Box
    , boxTotal : Float
    , currentBanking : Banking
    , currentBox : Box
    , banking : List Banking
    , bankingTotal : Float
    , balance : Float
    , balanceStatus : BalanceStatus
    }


type alias Banking =
    { date : Maybe Date
    , amount : Maybe Float
    }


type alias Box =
    { date : Maybe Date
    , location : Maybe String
    , boxno1 : Maybe String
    , boxno2 : Maybe String
    , boxno3 : Maybe String
    , outletStatus : Maybe OutletStatus
    , receiptno : Maybe String
    , amount : Maybe Float
    }


type alias Question =
    { id : Int
    , question : String
    , answer : String
    }


type OutletStatus
    = New
    | Broken
    | Stolen
    | Closed


type BalanceStatus
    = Matching
    | Debit
    | Credit


type Action
    = AddBox
    | AddBanking
    | ExitBox
    | ExitBanking
    | OkButton



-- Update


type Msg
    = Change String
    | UrlChange Navigation.Location
    | UpdateBoxDate String
    | UpdateBankingDate String
    | UpdateBoxLocation String
    | UpdateBoxReceipt String
    | UpdateBoxAmount String
    | UpdateBankingAmount String
    | UpdateBoxNo1 String
    | UpdateBoxNo2 String
    | UpdateBoxNo3 String
    | UpdateBoxOutletStatus OutletStatus
    | SubmitBox
    | SubmitBanking
