# Assembly Snippets

A collection of simple Assembly programs that I use to learn more about Z80 Assembly and microcomputers.

Every program lives in it's own folder and has the following files:

* **Readme** - information about the code:
  * What it is and what was my goal
  * How to run it
  * High-level explanation of what it does
  * What outstanding things I learned from it
* **Source file** - the `.asm` file that contains the Assembly program
* **Makefile** - to easily build and run the code. See [Makefile](../../tools/make-asm/README.md) for more details

<a name="Template"></a>
## 🧬 Template

[Here's](./_TEMPLATE) a project template to be used on every project.

To bootstrap a new project simply do:

```
$ mkdir <new-folder>
$ cd _TEMPLATE
$ cp -a * .* ../<new-folder>
```
