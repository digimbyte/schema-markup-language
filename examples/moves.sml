::Schema model=Moves:: // no version means it uses the base variant "definitions.sml"

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