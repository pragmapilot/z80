
# mem print

Small utility used to dump ROM content to screen.

Adapted from "ZX Spectrum Users Handbook". In portuguese version it's featured on page 40. 

<a name="Executing"></a>
## 🔄 Executing

Run the `Makefile` as below:

```
$  make
```

This will clean the output files, convert to [TAP](https://sinclair.wiki.zxnet.co.uk/wiki/TAP_format) format and run the code.

You can use `Ctrl+C` to stop the emulator when running from the command line. 

<a name="Overview"></a>
## 🔎 Overview

Collects initial and final memory address from the user. 
Loops from initial to final memory address and prints the address and the content there.

<a name="TIL"></a>
## 💡 TIL

* You can use compound instructions in BASIC to do multiple actions in the same line. See lines 2, 3 and 8 for examples
    * While this is good from a mental perspective, as we're aggregating related actions, it may hurt a bit the code readability   
* `TAB` moves the `PRINT` to the column specified and it's good to pad strings
* `LEN` works out the length of the argument string
* `STR$` converts numbers into strings: its argument is a number, and its result is the string that would appear on the screen if the number were displayed by a `PRINT` statement 
