About this project
===================
This project is a compilation of lexers for [SharpDevelop](https://github.com/icsharpcode)'s TextEditor component. I am indeed late to the party, as the component is no longer supported by SharpDevelop team; however, I have spent a good chunk of time writing these lexers through the years and I thought why not make them open source for everyone who's still using the component.

All lexers were created exclusively for  ICSharpCode.TextEditor <kbd>version 3.2</kbd>. They were not tested on any earlier or later releases.

----------

<p align="center">
  <img src ="http://i.imgur.com/Pif99Td.png" />
</p>

Languages
---------
List of all supported languages, sorted alphabetically:

A            | B     | C            | D      | E      | F          | G       | H       | I       | J          | K       | L    | N       | O     | P          | R        | S        | V           | X
-------------|-------|--------------|--------|--------|------------|---------|---------|---------|------------|---------|------|---------|-------|------------|----------|----------|-------------|----
ActionScript | Batch | C#           | D      | Eiffel | F#         | Go      | Haskell | Icon    | Java       | KiXtart | Lean | Nemerle | Obj-C | ParaSail   | R        | Scala    | Vala        | XML
Ada          | Boo   | C            | Dart   | Erlang | Falcon     | Groovy  | Haxe    | ILYC    | JavaScript | Kotlin  | Lisp | Nim     | OCaml | Pascal     | Registry | Solidity | VB.NET      |
ANTLR        |       | C++          | Delphi |        | Fantom     | Gui4Cli | HTML    | INI/INF | JSON       |         | Lua  |         |       | PHP        | Resource | Spike    | VBScript    |
Assembly     |       | Ceylon       |        |        | Fortran95  |         |         |         | Julia      |         |      |         |       | Pike       | Rust     | SQF      | Verilog     |
AutoHotkey   |       | ChucK        |        |        |            |         |         |         |            |         |      |         |       | PowerShell |          | SQL      | VHDL        |
             |       | Clojure      |        |        |            |         |         |         |            |         |      |         |       | Python     |          | Swift    | VS Solution |
             |       | Cocoa        |        |        |            |         |         |         |            |         |      |         |       |            |          |          |             |
             |       | CoffeeScript |        |        |            |         |         |         |            |         |      |         |       |            |          |          |             |
             |       | Cool         |        |        |            |         |         |         |            |         |      |         |       |            |          |          |             |
             |       | CSS          |        |        |            |         |         |         |            |         |      |         |       |            |          |          |             |
 
That makes 73 languages in total.

> **Notes:**

> - **PHP**: Heredoc highlighting is not supported. The syntax parser simply can't do it.
> - **CSS**: Omitting the last semicolon in the block is not supported. Same reason as above.

Usage
-----
If you are on this page, you most likely already know how to activate the lexer and use it.<br/>For a complete noob, this is how you do it:

C#
```c#
string synDir = @"resources\highlighting\\"; // insert the directory path of the desired .xshd file
FileSyntaxModeProvider fsmProvider;          // syntax provider

if (Directory.Exists(synDir))
{
    // create new provider with the highlighting directory
    fsmProvider = new FileSyntaxModeProvider(synDir);
    // attach to the text editor
    HighlightingManager.Manager.AddSyntaxModeFileProvider(fsmProvider);
    // activate the highlighting, use the name from the SyntaxDefinition node
    TextEditorControl.SetHighlighting("YourHighlighting");
} else {
	MessageBox.Show("Directory was not found", "Not Found", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
}
```

VB.NET
```vb.net
Dim synDir As String = "resources\highlighting" ' insert the directory path of the desired .xshd file
Dim fsmProvider As FileSyntaxModeProvider       ' syntax provider

If Directory.Exists(synDir) Then
  ' create new provider with the highlighting directory
	fsmProvider = New FileSyntaxModeProvider(synDir)
	' attach to the text editor
	HighlightingManager.Manager.AddSyntaxModeFileProvider(fsmProvider)
	' activate the highlighting, use the name from the SyntaxDefinition node
	TextEditorControl.SetHighlighting("YourHighlighting")
Else
	MessageBox.Show("Directory was not found", "Not Found", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
End If
```

For more information on XSHD files,  [see here](https://github.com/icsharpcode/SharpDevelop/wiki/Syntax-highlighting#attach-a-syntaxhighlighting-to-the-text-editor).

License
--------
[MIT License](https://opensource.org/licenses/MIT)
