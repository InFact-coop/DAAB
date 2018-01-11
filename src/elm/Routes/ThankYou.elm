module Routes.ThankYou exposing (..)

import Components.SaveButton exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


thankYouRoute : Model -> Html Msg
thankYouRoute model =
    div [ class "custom-padding" ]
        [ div [ class "ba h-auto mb5 br1 f3 pt3 pb3 fw1 tc mt5 b--blue" ]
            [ div [ class "pl5 pr5 b f3 blue" ] [ text "Thank you!" ]
            , p [ class "pl5 pr5 f3" ] [ text "You have successfully submitted all the forms we need." ]
            , p [ class "pl5 pr5 f3" ]
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
