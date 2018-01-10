module Components.RedButton exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


redButton : ( String, String ) -> Html Msg
redButton ( content, linkText ) =
    div [ class "dib tc pt4" ]
        [ a
            [ class "pa4 pl5 pr5 ba b--red bw2 br2 tc no-underline red b ma2 flex flew-row mw6 hover-white hover-bg-red", href ("/#" ++ linkText) ]
            [ text content ]
        ]
