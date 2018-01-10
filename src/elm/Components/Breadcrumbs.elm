module Components.Breadcrumbs exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


breadcrumbsComponent : Model -> Html Msg
breadcrumbsComponent model =
    let
        partition =
            span [ class "" ] [ text " > " ]
    in
    span [ class "breadcrumbs" ]
        (List.map
            breadcrumb
            (routeToLinkNames model)
            |> List.intersperse partition
        )


breadcrumb : ( String, String ) -> Html Msg
breadcrumb linkNames =
    a [ class "breadcrumb", href <| Tuple.first linkNames ]
        [ text <| Tuple.second linkNames ]


routeToLinkNames : Model -> List ( String, String )
routeToLinkNames model =
    let
        home =
            ( "#home", "home" )

        box =
            ( "#box", "record box collection" )

        banking =
            ( "#banking", "record a banking deposit" )

        boxthanks =
            ( "#box-thanks", "thank you" )

        bankingthanks =
            ( "#banking-thanks", "thank you" )

        progress =
            ( "#progress", "view progress" )

        help =
            ( "#help", "help" )

        thankyou =
            ( "#thankyou", "thank you" )
    in
    case model.route of
        HomeRoute ->
            [ home ]

        BoxRoute ->
            [ home, box ]

        BankingRoute ->
            [ home, banking ]

        BoxThanksRoute ->
            [ home, box, boxthanks ]

        BankingThanksRoute ->
            [ home, banking, bankingthanks ]

        ProgressRoute ->
            [ home, progress ]

        HelpRoute ->
            [ home, help ]

        ThankYouRoute ->
            [ home, thankyou ]
