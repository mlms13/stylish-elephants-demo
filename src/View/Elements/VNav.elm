module View.Elements.VNav exposing (..)

import Element exposing (..)
import Element.Border as Border
import View.Elements.Icon as ElIcon
import View.Styles.Base exposing (ColorStyle(..), getColor, textColor, backgroundColor)

type alias NavItem =
  { label : String
  , icon : ElIcon.Icon
  -- , onClick : msg
  }

nav : List NavItem -> Element msg
nav items =
  column [] <| List.map navItem items

navItemStyle : List (Attribute msg)
navItemStyle =
  [ paddingXY 32 14
  , Border.widthEach { left = 2, right = 0, top = 0, bottom = 0 }
  , Border.color <| getColor Transparent
  , spacing 10
  , textColor GrayMed
  , pointer
  , mouseOver <|
    [ backgroundColor BrandLight
    , textColor Brand
    , Border.color <| getColor Brand
    ]
  ]

navItem : NavItem -> Element msg
navItem { label, icon } =
  row navItemStyle
    [ ElIcon.icon [] icon
    , text label
    ]
