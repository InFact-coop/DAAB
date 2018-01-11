module State exposing (..)

import Data.Questions exposing (..)
import Date exposing (..)
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


calculateTotal : List { a | amount : Maybe Float } -> Float
calculateTotal list =
    let
        log =
            Debug.log "LOG: " list
    in
    List.foldr (\{ amount } n -> n + Maybe.withDefault 0 amount) 0.0 list


checkBalance : Float -> BalanceStatus
checkBalance balance =
    if balance > 0.0 then
        Credit
    else if balance < 0.0 then
        Debit
    else
        Matching


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


initBanking : Banking
initBanking =
    { date = Nothing
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
    , currentBanking = initBanking
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
        oldBanking =
            model.currentBanking

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
                    Result.toMaybe (Date.fromString stringDate)

                newBox =
                    { oldBox | date = newDate }
            in
            ( { model | currentBox = newBox }, Cmd.none )

        UpdateBankingAmount stringAmount ->
            let
                newAmount =
                    Result.toMaybe (String.toFloat stringAmount)

                newBanking =
                    { oldBanking | amount = newAmount }
            in
            ( { model | currentBanking = newBanking }, Cmd.none )

        UpdateBankingDate stringDate ->
            let
                newDate =
                    Result.toMaybe (Date.fromString stringDate)

                newBanking =
                    { oldBanking | date = newDate }
            in
            ( { model | currentBanking = newBanking }, Cmd.none )

        UpdateBoxOutletStatus outletstatus ->
            let
                newBox =
                    { oldBox | outletStatus = Just outletstatus }
            in
            ( { model | currentBox = newBox }, Cmd.none )

        SubmitBox ->
            let
                newModel =
                    { model | currentBox = initBox, boxes = model.boxes ++ [ model.currentBox ] }

                newTotal =
                    { newModel | boxTotal = calculateTotal newModel.boxes }

                newBalance =
                    { newTotal | balance = newTotal.bankingTotal - newTotal.boxTotal }
            in
            ( { newBalance | balanceStatus = checkBalance newBalance.balance }, Cmd.none )

        SubmitBanking ->
            let
                newModel =
                    { model | currentBanking = initBanking, banking = model.banking ++ [ model.currentBanking ] }

                newTotal =
                    { newModel | bankingTotal = calculateTotal newModel.banking }

                newBalance =
                    { newTotal | balance = newTotal.bankingTotal - newTotal.boxTotal }
            in
            ( { newBalance | balanceStatus = checkBalance newBalance.balance }, Cmd.none )
