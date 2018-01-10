module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


homeRoute : Model -> Html Msg
homeRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Home" ]
        ]