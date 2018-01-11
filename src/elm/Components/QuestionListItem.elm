module Components.QuestionListItem exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)


questionListItem : Question -> Html msg
questionListItem { id, question, answer } =
    div [ class "mb4" ]
        [ div [ class "b mb2 f4" ] [ text question ]
        , div [ class "f4" ] [ text answer ]
        ]
