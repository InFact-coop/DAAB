module Routes.Progress exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


progressRoute : Model -> Html Msg
progressRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Progress" ]
        ]
