module View exposing (..)

import Html exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Home exposing (..)
import Routes.Box exposing (..)
import Routes.Banking exposing (..)
import Routes.BankingThanks exposing (..)
import Routes.BoxThanks exposing (..)
import Routes.Progress exposing (..)
import Routes.Help exposing (..)
import Routes.ThankYou exposing (..)
import Components.NavBar exposing (..)
import Components.Breadcrumbs exposing (..)


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
            , breadcrumbsComponent model
            , page
            ]
