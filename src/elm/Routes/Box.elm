module Routes.Box exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


boxRoute : Model -> Html Msg
boxRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Box" ]
        ]
