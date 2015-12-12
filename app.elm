module App where

import Html exposing (..)
import StartApp.Simple as StartApp
import Signal exposing (Address)

-- MODEL
type alias Model =
  { message: String
  }

initialModel =
  { message = "Hello, world!"
  }

-- UPDATE

type Action
  = NoOp

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model

-- VIEW

view : Address Action -> Model -> Html
view address model =
  p [ ] [ text model.message ]

-- MAIN

main: Signal Html
main =
  StartApp.start
    { model = initialModel,
      view = view,
      update = update
    }
