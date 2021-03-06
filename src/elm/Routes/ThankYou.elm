module Routes.ThankYou exposing (..)

import Components.SaveButton exposing (..)
import Helpers.FloatToCurrency exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


thankYouRoute : Model -> Html Msg
thankYouRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 pb3 fw1 tc mt5 b--blue" ]
            [ div [ class "pl5 pr5 b f3 blue pt4" ] [ text "Thank you!" ]
            , p [ class "pl5 pr5 f3" ]
                [ text "You have successfully submitted all the forms and collected a total of: "
                , bankingAmount model
                ]
            , p [ class "pl5 pr5 f3 pb4" ]
                [ text "From all of us at Devon Air Ambulance we want to "
                , span
                    [ class "blue b" ]
                    [ text "thank you " ]
                , text "for making what we do "
                , span
                    [ class "blue b" ]
                    [ text "possible!" ]
                ]
            ]
        , section [ class "actionButtons mt4 mb5" ]
            [ saveButton OkButton "OK"
            ]
        ]


bankingAmount : Model -> Html Msg
bankingAmount model =
    span [ class "b" ]
        [ text ("£" ++ floatToCurrency model.bankingTotal)
        ]
