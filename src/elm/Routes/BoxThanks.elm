module Routes.BoxThanks exposing (..)

import Components.RedButton exposing (..)
import Helpers.FloatToCurrency exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


boxThanksRoute : Model -> Html Msg
boxThanksRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 fw1 tc mt5 b--silver" ]
            [ div [ class "mt3" ]
                [ text
                    "You've now collected a total of: "
                , boxTotal model
                ]
            , div [ class "pl5 pr5 mt3" ] [ text "Thank you!" ]
            , br [] []
            , img [ src "./assets/redHelicopter.png" ] []
            ]
        , redButton ( "RECORD BOX", "box" )
        , redButton ( "RECORD BANKING", "banking" )
        , redButton ( "I'M DONE", "progress" )
        , br [] []
        , a [ class "f4 blue", href "#help" ] [ text "Need further help?" ]
        ]


boxTotal : Model -> Html Msg
boxTotal model =
    div [ class "b" ]
        [ text ("£" ++ floatToCurrency model.boxTotal)
        ]
