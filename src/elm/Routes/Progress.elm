module Routes.Progress exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Helpers.DateToString exposing (..)
import Helpers.FloatToCurrency exposing (..)


progressRoute : Model -> Html Msg
progressRoute model =
    let
        boxRows =
            List.map createBoxRow model.boxes

        bankingRows =
            List.map createBankingRow model.banking
    in
        div [ class "" ]
            [ h2 [ class "f3 b" ] [ text "Boxes recorded this month" ]
            , table [ class "boxTable" ] <|
                [ tr []
                    [ th []
                        [ text "Location" ]
                    , th []
                        [ text "Date" ]
                    , th []
                        [ text "Amount" ]
                    ]
                ]
                    ++ boxRows
                    ++ [ tr []
                            [ td [] []
                            , td [] []
                            , td [ class "b" ] [ text <| "£" ++ (floatToCurrency model.boxTotal) ]
                            ]
                       ]
            , table [ class "bankingTable" ] <|
                [ tr []
                    [ th []
                        [ text "Date" ]
                    , th [] [ text "Amount" ]
                    ]
                ]
                    ++ bankingRows
                    ++ [ tr []
                            [ td [] []
                            , td [] []
                            , td [ class "b" ] [ text <| "£" ++ (floatToCurrency model.bankingTotal) ]
                            ]
                       ]
            ]


createBoxRow : Box -> Html Msg
createBoxRow box =
    let
        amount =
            case box.amount of
                Just float ->
                    "£" ++ floatToCurrency float

                Nothing ->
                    "n/a"
    in
        tr []
            [ td []
                [ text <| Maybe.withDefault "n/a" box.location ]
            , td []
                [ text (dateToString box.date) ]
            , td []
                [ text amount ]
            ]


createBankingRow : Banking -> Html Msg
createBankingRow banking =
    let
        amount =
            case banking.amount of
                Just float ->
                    "£" ++ floatToCurrency float

                Nothing ->
                    "n/a"
    in
        tr []
            [ td []
                [ text (dateToString banking.date) ]
            , td []
                [ text amount ]
            ]
