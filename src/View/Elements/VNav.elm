module View.Elements.VNav exposing (..)

import Element exposing (..)
import View.Elements.Icon as ElIcon
import View.Styles.Base exposing (ColorStyle(..), textColor)

type alias NavItem =
  { label : String
  , icon : ElIcon.Icon
  -- , onClick : msg
  }

nav : List NavItem -> Element msg
nav items =
  column [] <| List.map navItem items

navItem : NavItem -> Element msg
navItem { label, icon } =
  row [ paddingXY 32 14, spacing 10, textColor GrayMed ]
    [ ElIcon.icon [] icon
    , text label
    ]
