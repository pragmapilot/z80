
# Simple Hello, World!

A simple "Hello, World!" that I got from [here](https://symbolicdebugger.com/retro-programming/developing-for-sinclair-computers/) and used to test my tool chain.
        
Funnily, the page says "*copied from somewhere on the web and improved a bit, and that original code was in turn based on other code, etc etc!)"*. What goes around, comes around. 😂

Comments are from the original author.

<a name="Executing"></a>
## 🔄 Executing

Run the `Makefile` as below:

```
$  make
```

This will clean, build, convert to [TAP](https://sinclair.wiki.zxnet.co.uk/wiki/TAP_format) format, and run the code.

You can use `Ctrl+C` to stop the emulator when running from the command line. 

<a name="Overview"></a>
## 🔎 Overview

Prints a string of text, "Hello, world!", on the second line of the screen using a user-defined routine (`printline`). 

`printline` needs that the string address in pre-loaded in register `HL`. It starts by loading the first character (byte) into register `A`. Compares the byte there with the the string terminator, `$`, calling a ROM routine to render the character on the screen if it's not the terminator. Increments the string address to the next byte.  


<a name="TIL"></a>
## 💡 TIL

* You can set the position where text will be printed calling a ROM routine at `0x1601`.
  * This routine assumes register `A` contains the number of the line to start the printing
* You can print a character stored in register `A` using `RST 16`
  * If you're printing a string, don't forget to increment the address for the next character (typically stored in `HL`)
* `defb`... 
  * can take a list of strings
  * uses `'` to delimit the string
  * needs a terminator character (`$` is used routinely)
  
