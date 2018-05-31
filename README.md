# Stylish Elephants Demo

Let's code an example application layout, inspired by [this mockup from Dribble](https://dribbble.com/shots/3141791-Agile-CRM-Contacts/attachments/665699).

The goal is to show how easy it is to start from the outer layer and dig our way in through nested `row` and `column` elements until we've produced the desired layout. Even buttons with icons are actually just `row` elements with an `icon` child and a `text` child!

In our `View` folder, we have a collection of `Styles`. Right now this only includes `Base.elm`, which provides helpers for working with color and typography. But as our application grows, we could include reusable values for padding, font sizes for headings (e.g. `h1`, `h2`, etc), and so much more.

We also include some reusable components in `View/Elements/`. We started with a helper to create `Icon` elements from a pre-defined list, then we added a reusable `nav` component that brings some default styles. The component was the natural result of making something we needed, then factoring out the content that was specific to our use-case by turning the element into a function.
