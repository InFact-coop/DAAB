module Routes.Banking exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


bankingRoute : Model -> Html Msg
bankingRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Banking" ]
        ]
