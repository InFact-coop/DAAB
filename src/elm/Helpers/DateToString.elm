module Helpers.DateToString exposing (..)

import Date exposing (..)


dateToString : Maybe Date -> String
dateToString maybeDate =
    case maybeDate of
        Just date ->
            let
                day =
                    toString <| Date.day date

                month =
                    toString <| Date.month date

                year =
                    toString <| Date.year date
            in
                day ++ " " ++ month ++ " " ++ year

        Nothing ->
            "n/a"
