module State exposing (..)

import Date exposing (..)
import Data.Questions exposing (..)
import Types exposing (..)


-- MODEL
-- type alias Box =
--     { date : Maybe Date
--     , location : Maybe String
--     , boxno : Maybe String
--     , outletStatus : Maybe OutletStatus
--     , receiptno : Maybe String
--     , amount : Maybe Float
--     }


initBox : Box
initBox =
    { date = Nothing
    , location = Nothing
    , boxno1 = Nothing
    , boxno2 = Nothing
    , boxno3 = Nothing
    , outletStatus = Nothing
    , receiptno = Nothing
    , amount = Nothing
    }


initModel : Model
initModel =
    { route = HomeRoute
    , userInput = ""
    , questions = questionList
    , boxes = []
    , currentBox = initBox
    , boxTotal = 0.0
    , banking = []
    , currentBanking = { date = Nothing, amount = Nothing }
    , bankingTotal = 0.0
    , balance = 0.0
    , balanceStatus = Matching
    }



--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "#home" ->
            HomeRoute

        "#box" ->
            BoxRoute

        "#refreshbox" ->
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
    let
        oldBox =
            model.currentBox
    in
        case msg of
            Change newInput ->
                ( { model | userInput = newInput }, Cmd.none )

            UrlChange location ->
                ( { model | route = getRoute location.hash }, Cmd.none )

            UpdateBoxLocation stringLocation ->
                let
                    newBox =
                        { oldBox | location = Just stringLocation }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxNo1 string ->
                let
                    newBox =
                        { oldBox | boxno1 = Just string }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxNo2 string ->
                let
                    newBox =
                        { oldBox | boxno2 = Just string }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxNo3 string ->
                let
                    newBox =
                        { oldBox | boxno3 = Just string }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxReceipt stringReceipt ->
                let
                    newBox =
                        { oldBox | receiptno = Just stringReceipt }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxAmount stringAmount ->
                let
                    newAmount =
                        Result.toMaybe (String.toFloat stringAmount)

                    newBox =
                        { oldBox | amount = newAmount }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxDate stringDate ->
                let
                    newDate =
                        Date.fromString stringDate |> Result.withDefault (Date.fromTime 0)

                    newBox =
                        { oldBox | date = Just newDate }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            UpdateBoxOutletStatus outletstatus ->
                let
                    newBox =
                        { oldBox | outletStatus = Just outletstatus }
                in
                    ( { model | currentBox = newBox }, Cmd.none )

            SubmitBox ->
                ( { model | currentBox = initBox, boxes = model.boxes ++ [ model.currentBox ] }, Cmd.none )

            SubmitBanking ->
                ( model, Cmd.none )
