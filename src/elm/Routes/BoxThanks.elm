module Routes.BoxThanks exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


boxThanksRoute : Model -> Html Msg
boxThanksRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Box Thanks" ]
        ]
