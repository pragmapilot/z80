
# Z80 learning bits

`Z80 learning bits` is an online repository for my personal notes and snippets on my study of [Z80](https://en.wikipedia.org/wiki/Zilog_Z80) [Assembly](https://en.wikipedia.org/wiki/Assembly_language) on the macOS platform.

## Table of Contents
* 💭 [Motivation](#Motivation)
* 🔎 [Overview](#Overview)
* 📋 [Assumptions](#Assumptions)
* 🛠️ [Tooling](#Tooling)
* 🛣️ [Roadmap](#Roadmap)
* 🧰 [Resources](#Resources)
* ⚠️ [Disclaimer](#Disclaimer)
* 🛟 [Support](#Support)
* 🪪 [License](#License)

<a name="Motivation"></a>
## 💭 Motivation 

*(aka "the philosophical stuff...")*

In this era dominated by AI, ML, Big Data, and the Cloud, computation has reached a level of abstraction where Software Engineers often overlook the fundamental details.

Ultimately, everything a Software Engineer does comes down to manipulating bits and bytes stored in registers and memory addresses on some machine, whether it's physical or virtual.

I chose to study Z80 Assembly to delve deeper into the hardware and gain a better understanding of what happens beneath the surface of higher-level abstractions.

I selected the Z80 because it powers the ZX Spectrum, a microcomputer that holds dear memories for me and is simple enough while still possessing most of the characteristics of a modern computer. Z80 is still used today, well-documented, and has a large community.


<a name="Overview"></a>
## 🔎 Overview

This content is organized in three basic sections: 

* **Main** - these notes plus the [Roadmap](ROADMAP.md) (where I take notes to myself about what I want to do or study next) and the [License](LICENSE)
* **Snippets** - several Z80 Assembly snippets (usually adapted from somehwere else) with my own personal annotations and comments on the code
* **Tools** - useful templates, tools and diagrams to assist in the study of Z80 Assembly


<a name="Assumptions"></a>
## 📋 Assumptions

To run these snippets it's assumed that you are running on a Mac computer with a modern macOS version and know your ropes around [git](https://docs.github.com/en), [brew](https://brew.sh) and [shell](https://tommcfarlin.com/shells-in-macos/) (I use [zsh](https://www.zsh.org) because it's the default on the system). 

<a name="Tooling"></a>
## 🛠️ Tooling

The tool chain I am using is comprised of the following elements:

* [vim](https://www.vim.org) - editor to write the `.asm` code
* [z80asm](https://www.nongnu.org/z80asm/) - to convert the `.asm` into machine code 
* [bin2tap](http://zeroteam.sk/bin2tap.html) - to convert the machine code to the [TAP](https://sinclair.wiki.zxnet.co.uk/wiki/TAP_format) format used by most emulators
* [Fuse for macOS](https://fuse-for-macosx.sourceforge.io) - as the ZX Spectrum Emulator to run and test the Assembly code
* [GNU Make](https://www.gnu.org/software/make/) - to orchestrate the build and execution pipeline 

### Tool installation

`vi` and `make` should be installed by default on your macOS. If they're not check [here](https://www.vim.org/download.php) and [here](https://www.gnu.org/software/make/#download).

Part of the tooling will be installed via **Homebrew**. You can find installation instructions [here](https://brew.sh).

To install `z80asm` use it's `brew` [formula](https://formulae.brew.sh/formula/z80asm): 

```
brew install z80asm
```

To install `bin2tap`, first download the latest build from and then do the following in the shell:

```
cd
mkdir build
cd build
unzip ../Downloads/bin2tap13.zip
gcc -o bin2tap bin2tap.c
cp bin2tap ~/local/bin/
cd
rm -rf build
```

**Don't forget to add it to the $PATH!** I added it to the [.zshrc](https://www.baeldung.com/linux/zsh-configuration-files#3-zshrc) for commodity.

To install `Fuse for macOS` use `brew` once again ([formula](https://formulae.brew.sh/cask/fredm-fuse#default)):

```
brew install --cask fredm-fuse
```

<a name="Roadmap"></a>
## 🛣️ Roadmap

See what else I want to do next [here](ROADMAP.md).

<a name="Resources"></a>
## 🧰 Resources

### ⚙️ Z80 

* 🕸️[Z80 CPU User Manual by Zilog](https://www.zilog.com/docs/z80/um0080.pdf) - _le_ Z80 manual!
* 🕸️[Z80 Opcode Table](https://clrhome.org/table/) - a set of amazing interactive tables with the OPCODEs of all Z80 instructions. The big bonus is that when you the mouse goes over an OPCODE an amazing floating table comes up with relevant OPCODE info, like number of cycles, state of the F flags, etc. Really useful and outstanding experience
* 🕸️[Z80 page on Wikipedia](https://en.wikipedia.org/wiki/Zilog_Z80) - history and design information with very nice visual reference for the [registers](https://en.wikipedia.org/wiki/Zilog_Z80#Registers) 
* 🕸️[Z80-info](http://www.z80.info) - a very thorough page with all sorts of documentation about the Z80 ecosystem. Includes all from the instruction set to hardware diagrams
* 📖[Programming the Z80](https://spectrumcomputing.co.uk/entry/2000292/Book/Programming_the_Z80) - a comprehensive resource on the Z80, starting from the basics of programming and information representation
* 🕸️[z80 game development](http://jgmalcolm.com/z80/) - a very cool page dedicated to Z80 game programming for the TI-86 calculator but with many nice and interesting resources on general programming as well and on Z80. Features topics from beginner to advanced level 

### 🧱Assembler

* [Darryl Sloan](https://www.youtube.com/@darrylsloan) has many interesting Assembly videos on his channel:
  * 🎥[Intro, basics and some elementary graphics ](https://www.youtube.com/watch?v=1gHlMpO8gqw)
  * 🎥[Text and graphics](https://www.youtube.com/watch?v=O2gw36OyX3g)
  * 🎥[User input](https://www.youtube.com/watch?v=PEQuCtGUe-c)
  * 🎥[Movement & collisions](https://www.youtube.com/watch?v=uWqdk-1_NIg)
* 🕸️[Z80 Assembler for Dummies](https://www.msx.org/wiki/Z80_Assembler_for_Dummies) - a concise introduction to Z80 Assembler: basics, registers, flags, commands, data, program format...a great TL;DR and a quick reference
*  📖[Mastering Machine Code on Your ZX Spectrum](https://www.spectrumcomputing.co.uk/index.php?cat=96&id=2000237) - a good book on Assembly covering all the basics up to the useful stuff like debugging, graphics and ROM disassembly. Translated to 🇵🇹

### 📝 Vim

* 🕸️[Vim](https://www.vim.org) - Vim's homepage where you can find extensive documentation among other cool things
* 🕸️[vi/vim cheat sheet](https://sheet.shiar.nl/vi#) - a good, visual cheat sheet for vi/vim commands, because there are too many commands to remember


### ⌨️ ZX Spectrum

* 📖[ZX Spectrum Users Handbook](https://spectrumcomputing.co.uk/entry/2000443/Book/ZX_Spectrum_Users_Handbook) - this has been my main (physical) book on the ZX Spectrum. An excellent introduction to the ZX Spectrum microcomputer, BASIC and a nice section on Assembly. I am using the Portuguese version, which is a remarkably good translation (ISBN: 972-23-1254-5)
* 🕸️[Developing for Sinclair Computers](https://symbolicdebugger.com/retro-programming/developing-for-sinclair-computers/) - a very nice resource on how to develop for ZX Spectrum. Valuable information on tooling and installation of the tool chain
* 🕸️[ASSEMBLY ON THE ZX SPECTRUM - PART 1](https://benjamin.computer/posts/2022-04-22-ZX-coding.html) - another cool resource with information on tools, memory mapping, running Assembly code from BASIC and a simple "Hello World" in Z80 Assembly
* 🕸️[Memory Map](http://www.breakintoprogram.co.uk/hardware/computers/zx-spectrum/memory-map) - detailed explanations and diagrams for the 48K and 128K ZX Spectrum
* 📖[The Complete Spectrum ROM Disassembly](https://spectrumcomputing.co.uk/entry/2000076/Book/The_Complete_Spectrum_ROM_Disassembly) - as the title says, all the ZX Spectrum ROM routines disassembled and explained 
* 🕸️[ZX Basic Manual](https://worldofspectrum.org/ZXBasicManual/) - a useful resource for BASIC programming
* 🕸️[Sinclair BASIC ](https://worldofspectrum.net/legacy-info/sinclair-basic/) - extensive tool (interpreters, compilers) and documentation (manuals, history, books) information on BASIC
* 🕸️[Sinclair ZX Spectrum keyboard layout](http://slady.net/Sinclair-ZX-Spectrum-keyboard/layout/) - useful if you need to write some BASIC and you lost your dead-tree copy of the ZX Spectrum manual

### 🌐 General

* 🤖[ChatGPT](https://chat.openai.com) - Open AI's ChatGPT is a great tool to explain Assembly (as well as many other things...) and to ask questions about machine code
* 🕸️[Make a README](https://www.makeareadme.com) - has some good suggestions on how to improve your `README.md`
* 🕸️[Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/) - because sometimes you just need to know

### 👨‍💻 Code

* 🕸️[Introduction to ZX Spectrum programming](https://github.com/OniDaito/speccy) - toolchain, some simple & interesting `asm` programs and a list of useful links
* 🕸️[ZX Spectrum sizecoding](https://github.com/gasman/spectrum-sizecoding) - Resources from [gasman](https://github.com/gasman) seminar at Lovebyte 2021.
* 🎥[Lovebyte 2021 Seminar: Spectrum sizecoding for beginners, by Gasman](https://www.youtube.com/watch?v=q0cnGaa-Rig) - video for the repo above


<a name="Disclaimer"></a>
## ⚠️ Disclaimer

I've used many different sources for my learning and I've tried my best to document all of them in the [Resources](#Resources) section above. If any credit is missing please do get in touch. 

Many of the snippets are not my original work. I've adpated some of them to fulfil my personal learning goals. 


<a name="Support"></a>
## 🛟 Support

If you need any help you can send me an e-mail or open an issue through github.

<a name="License"></a>
## 🪪 License

[MIT License](LICENSE)
