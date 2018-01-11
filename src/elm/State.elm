module State exposing (..)

import Data.Questions exposing (..)
import Types exposing (..)


-- MODEL


initModel : Model
initModel =
    { route = ThankYouRoute
    , userInput = ""
    , questions = questionList
    }



--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "#home" ->
            HomeRoute

        "#box" ->
            BoxRoute

        "#banking" ->
            BankingRoute

        "#box-thanks" ->
            BoxThanksRoute

        "#banking-thanks" ->
            BankingThanksRoute

        "#progress" ->
            ProgressRoute

        "#help" ->
            HelpRoute

        "#thankyou" ->
            ThankYouRoute

        _ ->
            HomeRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Change newInput ->
            ( { model | userInput = newInput }, Cmd.none )

        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )
