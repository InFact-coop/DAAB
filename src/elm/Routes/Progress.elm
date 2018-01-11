module Routes.Progress exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Components.RedButton exposing (..)
import Helpers.DateToString exposing (..)
import Helpers.FloatToCurrency exposing (..)


progressRoute : Model -> Html Msg
progressRoute model =
    let
        tableClasses =
            "f4 ph5 pv3 ma0 tc ba b--mid-gray"

        boxRows =
            List.map createBoxRow model.boxes

        bankingRows =
            List.map createBankingRow model.banking
    in
        div [ class "custom-padding" ]
            [ h2 [ class "f3 b" ] [ text "Boxes recorded this month" ]
            , table [ class "boxTable collapse" ] <|
                [ tr []
                    [ th [ class <| tableClasses ++ "b" ]
                        [ text "Location" ]
                    , th [ class <| tableClasses ++ "b" ]
                        [ text "Date" ]
                    , th [ class <| tableClasses ++ "b" ]
                        [ text "Amount" ]
                    ]
                ]
                    ++ boxRows
                    ++ [ tr []
                            [ td [] []
                            , td [] []
                            , td [ class <| tableClasses ++ " b" ] [ text <| "£" ++ (floatToCurrency model.boxTotal) ]
                            ]
                       ]
            , h2 [ class "f3 b" ] [ text "Boxes recorded this month" ]
            , table [ class "bankingTable collapse" ] <|
                [ tr []
                    [ th [ class <| tableClasses ++ "b" ]
                        [ text "Date" ]
                    , th [ class <| tableClasses ++ "b" ] [ text "Amount" ]
                    ]
                ]
                    ++ bankingRows
                    ++ [ tr []
                            [ td [] []
                            , td [ class <| tableClasses ++ " b" ] [ text <| "£" ++ (floatToCurrency model.bankingTotal) ]
                            ]
                       ]
            , h2 [ class " mt3 f3 b" ] [ text "Summary" ]
            , summary model.balanceStatus
            , h2 [ class "f3 b" ] [ text "What would you like to do?" ]
            , redButton ( "SUBMIT TO DAA", "thankyou" )
            , redButton ( "SAVE FOR LATER", "home" )
            , br [] []
            , a [ class "f4 blue pb4", href "#help" ] [ text "Need further help?" ]
            ]


createBoxRow : Box -> Html Msg
createBoxRow box =
    let
        tableClasses =
            "f4 ph5 pv3 ma0 tc ba b--mid-gray"

        amount =
            case box.amount of
                Just float ->
                    "£" ++ floatToCurrency float

                Nothing ->
                    "n/a"
    in
        tr []
            [ td [ class tableClasses ]
                [ text <| Maybe.withDefault "n/a" box.location ]
            , td [ class tableClasses ]
                [ text (dateToString box.date) ]
            , td [ class tableClasses ]
                [ text amount ]
            ]


createBankingRow : Banking -> Html Msg
createBankingRow banking =
    let
        tableClasses =
            "f4 ph5 pv3 ma0 tc ba b--mid-gray"

        amount =
            case banking.amount of
                Just float ->
                    "£" ++ floatToCurrency float

                Nothing ->
                    "n/a"
    in
        tr []
            [ td [ class tableClasses ]
                [ text (dateToString banking.date) ]
            , td [ class tableClasses ]
                [ text amount ]
            ]


summary : BalanceStatus -> Html Msg
summary status =
    case status of
        Matching ->
            div []
                [ img [ class "dib v-mid w3 h3", src "./assets/greenTick.png" ] []
                , div [ class "dib ml4 v-mid f4" ] [ span [ class "b" ] [ text "Great work! " ], span [] [ text "Both your balances match so therefore no changes are required" ] ]
                ]

        _ ->
            div []
                [ img [ class "dib v-top w3 h3", src "./assets/blueError.png" ] []
                , div [ class "dib ml4 v-top pt2" ]
                    [ p [ class "ma0 f4" ]
                        [ span [ class "b" ] [ text "Oh no! " ]
                        , span [] [ text "Looks like your balances don't match right now. Some changes are required." ]
                        ]
                    , p [ class " mt2 f4" ]
                        [ span [ class "b" ] [ text "Tips:" ]
                        , br [] []
                        , ul []
                            [ li [] [ text "Have you double checked all your entries? " ]
                            , li [] [ text "Have you checked for foriegn coins?" ]
                            ]
                        , text "If you’ve done everything and it still doesn’t match, please submit and the finance team can review this for you"
                        ]
                    ]
                ]
