module Routes.BankingThanks exposing (..)

import Components.RedButton exposing (..)
import Helpers.FloatToCurrency exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


bankingThanksRoute : Model -> Html Msg
bankingThanksRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 pb3 fw1 tc mt5 b--silver" ]
            [ div [ class "pl5 pr5" ] [ text "Nice job, you've now banked a total of:" ]
            , bankingAmount model
            , br [] []
            , creditDebit model
            ]
        , h2 [ class "f3" ] [ text "What would you like to do next?" ]
        , redButton ( "RECORD BOX", "box" )
        , redButton ( "RECORD BANKING", "banking" )
        , redButton ( "I'M DONE", "progress" )
        , br [] []
        , a [ class "f4 blue pb5", href "#help" ] [ text "Need further help?" ]
        ]


bankingAmount : Model -> Html Msg
bankingAmount model =
    div [ class "b" ]
        [ text ("£" ++ floatToCurrency model.bankingTotal)
        ]


totalAmount : Model -> Html Msg
totalAmount model =
    case model.balanceStatus of
        Debit ->
            span [ class "b" ] [ text (floatToCurrency <| (-1 * model.balance)) ]

        _ ->
            span [ class "b" ] [ text (" £" ++ floatToCurrency model.balance) ]


creditDebit : Model -> Html Msg
creditDebit model =
    case model.balanceStatus of
        Matching ->
            div []
                [ img [ src "./assets/greenTick.png" ] []
                , p [] [ text "Well done, your balance matches!" ]
                ]

        Debit ->
            div []
                [ img [ src "./assets/blueError.png" ] []
                , p []
                    [ text "Your balance is in Debit by: "
                    , span [ class "b" ] [ text "£" ]
                    , totalAmount model
                    , p []
                        [ text "Would you like to "
                        , a
                            [ href "#box", class "blue" ]
                            [ text "record another banking deposit?" ]
                        ]
                    ]
                ]

        Credit ->
            div []
                [ img [ src "./assets/blueError.png" ] []
                , p []
                    [ text "Your balance is in Credit by:"
                    , totalAmount model
                    , p []
                        [ text "Would you like to "
                        , a
                            [ href "#box", class "blue" ]
                            [ text "record a new box collection?" ]
                        ]
                    ]
                ]
