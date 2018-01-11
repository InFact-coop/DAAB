module Components.SaveButton exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


saveButton : Action -> String -> Html Msg
saveButton action content =
    let
        buttonClasses =
            "link mr2 pa3 white dib "
    in
    case action of
        AddBox ->
            a [ class <| buttonClasses ++ "bg-blue", href "#box" ] [ text content ]

        AddBanking ->
            a [ class <| buttonClasses ++ "bg-blue", href "#banking" ] [ text content ]

        ExitBox ->
            a [ class <| buttonClasses ++ "bg-red", href "#box-thanks" ] [ text content ]

        ExitBanking ->
            a [ class <| buttonClasses ++ "bg-red", href "#banking-thanks" ] [ text content ]
