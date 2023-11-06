; A simple "Hello, World!"
;
; Source: https://symbolicdebugger.com/retro-programming/developing-for-sinclair-computers/
; 
; Funnily, the page says "copied from somewhere on the web and improved a bit, and that original code was in turn based on other code, etc etc!):" 😂 
;
; Comments are from the original author.

        org 32768
start:
        ld a, 2         ; channel 2 = "S" for screen
        call $1601      ; Select print channel using ROM
        ld hl,line      ; Print line
        call printline
        ret

printline:              ; Routine to print out a line
        ld a,(hl)       ; Get character to print
        cp '$'          ; See if it '$' terminator
        jp z,printend   ; We're done if it is
        rst 16          ; Spectrum: Print the character in 'A'
        inc hl          ; Move onto the next character
        jp printline    ; Loop round
printend:
        ret

line:   defb 'Hello, world!',13,'$'
