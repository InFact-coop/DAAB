module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


homeRoute : Model -> Html Msg
homeRoute model =
    div [ class "custom-padding" ]
        [ h2 [ class "f3 pb3" ]
            [ text "As a volunteer, I would like to..." ]
        , div
            [ class "flex justify-between" ]
            [ a [ class "no-underline", href "#box" ]
                [ div [ class "red ba bw2 b--red br2 hover-bg-red hover-white tc b box content-center justify-center pa1 background-plus flex flex-wrap items-end " ]
                    [ br [] []
                    , span [ class "pb5" ] [ text "RECORD BOX COLLECTION" ]
                    ]
                ]
            , a [ class "no-underline", href "#banking" ]
                [ div [ class "red ba bw2 b--red br2 hover-bg-red hover-white tc b box content-center justify-center pa1 background-banking flex flex-wrap items-end " ]
                    [ br [] []
                    , span [ class "pb5" ] [ text "RECORD BANKING" ]
                    ]
                ]
            , a [ class "no-underline", href "#progress" ]
                [ div [ class "red ba bw2 b--red br2 hover-bg-red hover-white tc b box content-center justify-center pa1 background-progress flex flex-wrap items-end " ]
                    [ br [] []
                    , span [ class "pb5" ] [ text "TRACK PROGRESS" ]
                    ]
                ]
            ]
        , br [ class "" ] []
        , a [ class "f4 blue", href "#help" ] [ text "Need further help?" ]
        ]
