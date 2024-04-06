# schema-markup-language README

The objective of this open-source project is to create a schema-driven markup language, tentatively named Schema Markup Language (SML), which emphasizes human readability and strict schema enforcement. At the heart of this endeavor is the `schemas.sml` file, a comprehensive schema definition that serves as the foundational reference for all subsequent SML documents. Here's a breakdown of the project's core goals and the structure of schemas.sml:

## Features

This scheme is currently in planning phase/Development, its intended features is as follows:

### Syntax Highlighting

Enjoy enhanced readability with our syntax highlighting feature, which differentiates elements, attributes, and text for easier editing and reviewing.


### Real-time Schema Validation

Ensure your SML documents adhere to the `schemas.sml` standards with real-time validation, highlighting discrepancies as you type.


### Auto-completion and Snippets

Take advantage of intelligent auto-completion and snippets that reflect your `schemas.sml`, streamlining the creation of SML documents.


### Schema Integration

Customize and Utilize the capabilities of SML by integrating your schemas, offering flexibility across various use cases. Setting a SML definition header, assigns it to a determined schema design.

- enforced unique values
- enforced number factors
- enforced string values
- populate schema templates on new rows

### Informative Error Messages

Get immediate, clear feedback on errors with messages designed to help you quickly find and fix issues.


## Examples

Schema Definitions:
```html
<Config 
  strings="any(default)"|"strict"|"single"|"double"
  headers="enabled(default)"|"disabled"
  comments="enabled(default)"|"disabled"
  whitespace="??"
/>

<Enums>
  <Elements values=["Fire", "Earth", "Wind", "Water"] default="None"/>
  <Items values=["Ring", "Cape", "Armor", "Sword", "Boots"] default="None" strict />
</Enums>

<Schema name="Moves">
  <name required default="" unique />
  <element enum="Elements" required />
  <itemsEnum array required array required unique /> // array of values
  <itemsObject array required array required key="name"(optional) /> // array of objects
    <name(required-by-parent) unique string />
    <level required number default=0 />
    <element required number default=0 />
  </items>
</Schema>

<Schema name="Fighters" unique>
  <name required default="" typeof=string case=lowercase>
  <age required default=0 typeof=number factor=5> // if defined, value must be Mod 5 == 0
  <element enum="Elements" required>
  <skills required unique(NE) >
    <level required number default=0 />
    <element required number default=0 />
  </items>
</Schema>
```
Alternative schema setup consideration
```yaml
  Move:
    name: ""
    description: "Defines a game move."
    attributes:
      name: {type: string, required: true}
      type: {type: string, enum: [Light, Dark, Fire, Water], default: Light}
    elements:
      Stage:
        min: 1
        description: "Stages within the move, e.g., charge and fire."
        attributes:
          name: {type: string, required: true}
          target: {type: string, enum: [self, allEnemies, singleEnemy]}
        elements:
          Effect:
            description: "Effects triggered by this stage."
            attributes:
              type: {type: string, required: true}
              duration: {type: integer, default: 1}
              condition: {type: string}
  Move:
    name: ""
    description: "Defines a game move."
    attributes:
      name: {type: string, required: true}
      type: {type: string, enum: [Light, Dark, Fire, Water], default: Light}
    elements:
      Stage:
        min: 1
        description: "Stages within the move, e.g., charge and fire."
        attributes:
          name: {type: string, required: true}
          target: {type: string, enum: [self, allEnemies, singleEnemy]}
        elements:
          Effect:
            description: "Effects triggered by this stage."
            attributes:
              type: {type: string, required: true}
              duration: {type: integer, default: 1}
              condition: {type: string}
```

Table Definitions:
```html
<Schema model=Moves version=1/>
// comment support
# header support // headers could act as html anchors
<Attack>
    name = Steven
    element = "Fire"
</Attack>
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
```

## Known Issues

Calling out known issues can help limit users opening duplicate issues against your extension.

## Release Notes

Users appreciate release notes as you update your extension.

### 1.0.0

Initial release of ...

### 1.0.1

Fixed issue #.

### 1.1.0

Added features X, Y, and Z.

---

## Working with Markdown

You can author your README using Visual Studio Code. Here are some useful editor keyboard shortcuts:

* Split the editor (`Cmd+\` on macOS or `Ctrl+\` on Windows and Linux).
* Toggle preview (`Shift+Cmd+V` on macOS or `Shift+Ctrl+V` on Windows and Linux).
* Press `Ctrl+Space` (Windows, Linux, macOS) to see a list of Markdown snippets.

## For more information

* [Visual Studio Code's Markdown Support](http://code.visualstudio.com/docs/languages/markdown)
* [Markdown Syntax Reference](https://help.github.com/articles/markdown-basics/)

**Enjoy!**
