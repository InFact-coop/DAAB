module Components.NavBar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


navbar : Model -> Html Msg
navbar model =
    ul [ class "" ]
        [ li [] [ text "Devon Air Ambulance Trust" ] ]
