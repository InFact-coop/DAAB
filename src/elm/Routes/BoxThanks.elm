module Routes.BoxThanks exposing (..)

import Components.RedButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


boxThanksRoute : Model -> Html Msg
boxThanksRoute model =
    div [ class "custom-padding" ]
        [ redButton ( "RECORD BOX", "box" )
        , redButton ( "RECORD BANKING", "banking" )
        , redButton ( "I'M DONE", "progress" )
        ]
