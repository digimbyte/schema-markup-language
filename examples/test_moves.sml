::Schema model=Moves version="test"::  // version"test" looks for definitions.<version>.sml ie: "definitions.test.sml"
::Schema model=Moves version=1::  // version"1" can be interprete as a string if its a number ie: "definitions.1.sml"
// only line 1 is relevant for the schema meta

// comment support
# header support // headers could act as html anchors
<Attack>
    name = Steven
    element = "Fire"
</Attack>
// creating a new line, invokes a template prompt to auto populate default data

<Dodge>
  name="" 
  element="None"
  itemsEnum=[""]
  itemsObject =[
    <name="" // name required by itemsObject "key"
      elements=["Fire", "Earth"]
    />
    <name="" />
    <name="" />
  ] 
</Dodge>