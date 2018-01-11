module Routes.Box exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Components.SaveButton exposing (..)


boxRoute : Model -> Html Msg
boxRoute model =
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
                [ h2 [ class "f3 b" ] [ text "Box return form" ]
                , div [ class "dib lh-copy" ]
                    [ label [ for "date", class "db f4" ] [ text "Date of collection: " ]
                    , br [] []
                    , label [ for "location", class "db f4" ]
                        [ text "Location: " ]
                    , br [] []
                    , label [ for "boxno", class "db v-mid f4" ] [ text "Box Number: " ]
                    ]
                , div [ class "dib v-top ml3" ]
                    [ input [ id "date", type_ "date", class " sans-serif f4 b--grey db" ] []
                    , br [] []
                    , input [ id "location", type_ "text", class "v-top db f4" ] []
                    , br [] []
                    , input [ id "boxno", class "w2 f4", type_ "text", maxlength 2 ] []
                    , partition
                    , input [ id "boxno2", class "w2 f4", type_ "text", maxlength 2 ] []
                    , partition
                    , input [ id "boxno3", class "w2 f4", type_ "text", maxlength 2 ] []
                    ]
                , div [ class "mt4" ]
                    [ p [ class "f4" ]
                        [ text "Please select which of these applies:" ]
                    , div [ class "lh-copy" ]
                        [ input [ type_ "radio", class "mt3", name "nbsc", id "n" ] []
                        , label [ class "ml3", for "n" ] [ text "New Outlet" ]
                        ]
                    , div [ class "lh-copy" ]
                        [ input [ type_ "radio", class "mt3", name "nbsc", id "b" ] []
                        , label [ class "ml3", for "b" ] [ text "Seal Broken" ]
                        ]
                    , div [ class "lh-copy" ]
                        [ input [ type_ "radio", class "mt3", name "nbsc", id "s" ] []
                        , label [ class "ml3", for "s" ] [ text "Box Stolen and Replaced" ]
                        ]
                    , div [ class "lh-copy" ]
                        [ input [ type_ "radio", class "mt3", name "nbsc", id "c" ] []
                        , label [ class "ml3", for "c" ] [ text "Outlet has Closed" ]
                        ]
                    ]
                , div [ class "dib lh-copy mt4" ]
                    [ label [ for "recieptno", class "db f4" ] [ text "Receipt Number: " ]
                    , br [] []
                    , label [ for "boxtotal", class "db f4" ] [ text "Amount in box: £" ]
                    ]
                , div [ class "dib v-top ml3 mt4" ]
                    [ input [ type_ "text", id "receiptno", class "db f4" ] []
                    , br [] []
                    , input [ placeholder "0.00", max "100000.00", min "0.00", step "0.01", type_ "number", class "db f4 w3" ] []
                    ]
                , section [ class "actionButtons mt4" ]
                    [ saveButton AddBox "Save and add box"
                    , saveButton ExitBox "Save and exit"
                    ]
                ]
            ]
