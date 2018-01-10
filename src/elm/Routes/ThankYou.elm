module Routes.ThankYou exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


thankYouRoute : Model -> Html Msg
thankYouRoute model =
    div [ class "" ]
        [ h1 [ class "tc f1" ] [ text "Thank You" ]
        ]
