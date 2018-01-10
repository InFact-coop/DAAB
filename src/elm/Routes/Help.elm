module Routes.Help exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


helpRoute : Model -> Html Msg
helpRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Help" ]
        ]
