module Components.SaveButton exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


saveButton : Action -> String -> Html Msg
saveButton action content =
    let
        buttonClasses =
            "link mr2 pa3 white dib "
    in
    case action of
        AddBox ->
            a [ class <| buttonClasses ++ "bg-blue", href "#refreshbox", onClick SubmitBox ] [ text content ]

        AddBanking ->
            a [ class <| buttonClasses ++ "bg-red", href "#banking", onClick SubmitBanking ] [ text content ]

        ExitBox ->
            a [ class <| buttonClasses ++ "bg-red", href "#box-thanks", onClick SubmitBox ] [ text content ]

        ExitBanking ->
            a [ class <| buttonClasses ++ "bg-red", href "#banking-thanks", onClick SubmitBanking ] [ text content ]

        OkButton ->
            a [ class <| buttonClasses ++ "bg-red pl5 pr5 fw1 f4", href "#home" ] [ text content ]
