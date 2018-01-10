module Components.Overview exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


overview : Model -> Html Msg
overview model =
    div [ class <| getClasses model.route ]
        [ div [ class "custom-padding" ]
            [ header [ class "f3 b" ] [ text "Overview" ]
            , p [] [ text <| overviewContent model ]
            ]
        ]


getClasses : Route -> String
getClasses route =
    if route == ThankYouRoute then
        "dn"
    else if route == BoxThanksRoute then
        "dn"
    else if route == BankingThanksRoute then
        "dn"
    else if route == HomeRoute then
        "dn"
    else
        "f4"


overviewContent : Model -> String
overviewContent model =
    case model.route of
        ThankYouRoute ->
            ""

        BoxThanksRoute ->
            ""

        HomeRoute ->
            ""

        BankingThanksRoute ->
            ""

        BoxRoute ->
            "Please record your box details below. Once you have finished please double check your inputs and click save. You will have the chance to add another box after saving."

        BankingRoute ->
            "Please record your banking deposit details below. Once you have finished please double check your inputs and click save. You will be able to record another banking deposit after saving."

        ProgressRoute ->
            "Below is the summary of the boxes and the banking deposits you’ve submitted this month. It will highlight if your total amounts match or not. If the amounts do not match please take action in reviewing the error. "

        HelpRoute ->
            "These page contains frequently asked questions. If you cannot find what you are looking for then please contact us. You can use the search bar below to find questons."
