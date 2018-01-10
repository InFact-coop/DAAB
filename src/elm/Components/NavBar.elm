module Components.NavBar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


navbar : Model -> Html Msg
navbar model =
    div [ class "w-100 bg-blue pt4 pb4 custom-padding" ]
        [ div [ class "white f4 fw1" ]
            [ text "Devon Air Ambulance Trust"
            , br [] []
            , span [ class "i" ] [ text "real people saving real lives" ]
            ]
        ]
