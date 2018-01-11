module Routes.BoxThanks exposing (..)

import Components.RedButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


boxThanksRoute : Model -> Html Msg
boxThanksRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 fw1 tc mt5 b--silver" ]
            [ div [ class "pl5 pr5" ] [ text "From all at Devon Air Ambulance we want to thank you for your hard work!" ]
            , br [] []
            , img [ src "./assets/redHelicopter.png" ] []
            ]
        , redButton ( "RECORD BOX", "box" )
        , redButton ( "RECORD BANKING", "banking" )
        , redButton ( "I'M DONE", "progress" )
        , br [] []
        , a [ class "f4 blue", href "#help" ] [ text "Need further help?" ]
        ]
