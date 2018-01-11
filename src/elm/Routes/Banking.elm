module Routes.Banking exposing (..)

import Components.SaveButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


bankingRoute : Model -> Html Msg
bankingRoute model =
    let
        partition =
            span [ class "mh2" ] [ text " / " ]

        max =
            Html.Attributes.max

        min =
            Html.Attributes.min
    in
    section [ class "custom-padding" ]
        [ Html.form []
            [ h2 [ class "f3 b mt4" ] [ text "Banking Deposit form" ]
            , div [ class "dib lh-copy" ]
                [ label [ for "date", class "db f4" ] [ text "Date banked: " ]
                , br [] []
                ]
            , div [ class "dib v-top ml3" ]
                [ input [ id "date", type_ "date", class " sans-serif f4 b--grey db" ] []
                , br [] []
                ]
            ]
        , div [ class "dib lh-copy mt2" ]
            [ label [ for "boxtotal", class "db f4" ] [ text "Amount in box: £" ]
            ]
        , div [ class "dib v-top ml3 mt2" ]
            [ input [ placeholder "0.00", max "100000.00", min "0.00", step "0.01", type_ "number", class "db f4 w4" ] []
            ]
        , section [ class "actionButtons mt4" ]
            [ saveButton AddBanking "Save and add banking"
            , saveButton ExitBanking "Save and exit"
            ]
        ]
