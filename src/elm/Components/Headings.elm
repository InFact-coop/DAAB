module Components.Headings exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


heading : Model -> Html Msg
heading model =
    header [ class "custom-padding f3 black" ] [ h1 [] [ text <| getHeading model ] ]


getHeading : Model -> String
getHeading model =
    case model.route of
        HomeRoute ->
            "Volunteer Assistant"

        BankingRoute ->
            "Record a Banking Deposit"

        BankingThanksRoute ->
            "Thank you"

        BoxRoute ->
            "Record Box Collection"

        BoxThanksRoute ->
            "Thank you!"

        HelpRoute ->
            "Help"

        ProgressRoute ->
            "View your progress"

        ThankYouRoute ->
            "Thank you!"
