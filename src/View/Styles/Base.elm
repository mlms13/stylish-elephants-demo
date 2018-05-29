module View.Styles.Base exposing (..)

import Color exposing (Color, rgb)
import Element exposing (Attribute)
import Element.Background as BG
import Element.Font as Font

--------------------------------------------------------------------------------
-- Colors
--------------------------------------------------------------------------------

type ColorStyle
  = Brand
  | BrandLight
  | Primary
  | PrimaryLight
  | TextDark
  | TextMed
  | TextLight
  | OffWhite
  | White

getColor : ColorStyle -> Color
getColor c = case c of
  Brand -> rgb 116 96 238
  BrandLight -> rgb 240 238 252
  Primary -> rgb 39 169 248
  PrimaryLight -> rgb 221 239 249
  TextDark -> rgb 38 50 56
  TextMed -> rgb 144 164 174
  TextLight -> rgb 199 209 213
  OffWhite -> rgb 244 248 249
  White -> rgb 254 254 254

backgroundColor : ColorStyle -> Attribute msg
backgroundColor c =
  BG.color <| getColor c

textColor : ColorStyle -> Attribute msg
textColor c =
  Font.color <| getColor c

--------------------------------------------------------------------------------
-- Typography
--------------------------------------------------------------------------------

baseFontFamily : Attribute msg
baseFontFamily =
  Font.family
    [ Font.typeface "Open Sans"
    , Font.sansSerif
    ]

baseFontSize : Attribute msg
baseFontSize =
  Font.size 16

--------------------------------------------------------------------------------
-- Reset
--------------------------------------------------------------------------------

reset : List (Attribute msg)
reset =
  [ baseFontFamily
  , baseFontSize
  , backgroundColor White
  , textColor TextDark
  ]
