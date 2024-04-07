// this templace should be generated as _example.schema.sml with a command

// Comments can be highlighted
// exclamation to highlight line: collon to reset highlight !color
// ! exclamation to highlight yellow
// !! exclamation to highlight red


// Config defines how strict some behavior will be
<Config 
  strings="any(default)"|"strict"|"single"|"double"
  headers="enabled(default)"|"disabled"
  comments="enabled(default)"|"disabled"
  whitespace="??"
/>

// Global enums used as validators for values
// optional default else null, default does not need to be a valid value, used for autocompletion
// strict enforces the values to be a hard error, so creators cannot create their own
<Enums>
  <Elements values=["Fire", "Earth", "Wind", "Water"] default="None"/>
  <Items values=["Ring", "Cape", "Armor", "Sword", "Boots"] default="None" strict />
</Enums>

// Definition of a Scheme object, its name must be unique.
// all nodes under a schema object represent an object keyname and its properties
<Schema name="Moves">
  <name required default="" unique />
  <element enum="Elements" required />
  
  // simple array types will expect a list of simple types as the values instead
  // simple array types can be defined to an enum value
  <itemsEnum array required enum="Elements" unique /> // array of values // unique in this scenario means no values can be duplicated within

  // arrays if they have a child node, are considered an array of objects and supercede simple array types
  <itemsObject array required array required > // array of objects
    <name required unique string />
    <level required number default=0 />
    <element required number default=0 />
  </itemsObject>

</Schema>

<Schema name="Fighters" unique>
  <name required default="" typeof=string case=lowercase>
  <age required default=0 typeof=number factor=5> // if defined, value must be Mod 5 == 0
  <element enum="Elements" required>
  // Support comments within tags that escapes all content using `()`unless within ""
  <skills required unique(NE) >
    <level required number default=0 />
    <element required number default=0 />
  </skills>
</Schema>


