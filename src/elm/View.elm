module View exposing (..)

-- My Elm Files

import Components.Headings exposing (..)
import Components.NavBar exposing (..)
import Components.Overview exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Routes.Banking exposing (..)
import Routes.BankingThanks exposing (..)
import Routes.Box exposing (..)
import Routes.BoxThanks exposing (..)
import Routes.Help exposing (..)
import Routes.Home exposing (..)
import Routes.Progress exposing (..)
import Routes.ThankYou exposing (..)
import Types exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    homeRoute model

                BoxRoute ->
                    boxRoute model

                BankingRoute ->
                    bankingRoute model

                BoxThanksRoute ->
                    boxThanksRoute model

                BankingThanksRoute ->
                    bankingThanksRoute model

                ProgressRoute ->
                    progressRoute model

                HelpRoute ->
                    helpRoute model

                ThankYouRoute ->
                    thankYouRoute model
    in
    div []
        [ navbar model
        , heading model
        , overview model
        , page
        ]
