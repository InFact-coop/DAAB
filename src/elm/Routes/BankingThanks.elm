module Routes.BankingThanks exposing (..)

import Components.RedButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


bankingThanksRoute : Model -> Html Msg
bankingThanksRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 pb3 fw1 tc mt5 b--silver" ]
            [ div [ class "pl5 pr5" ] [ text "Nice job, you've successfully added a banking deposit." ]
            , br [] []
            , img [ src "./assets/greenTick.png" ] []
            ]
        , h2 [ class "f3" ] [ text "What would you like to do next?" ]
        , redButton ( "RECORD BOX", "box" )
        , redButton ( "RECORD BANKING", "banking" )
        , redButton ( "I'M DONE", "progress" )
        , br [] []
        , a [ class "f4 blue", href "#help" ] [ text "Need further help?" ]
        ]
