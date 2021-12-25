# nvim

a minimalistic nvim setup
=========================
this vim configuration is optimized for interactive development 
especially interpreted languages like bash, python.

 ```
┌tab1─tab2─tabn──────────────────────────────────────────────┐
├─────────────────────────────┬──────────────────────────────┤
│Code                         │Code                          │
│                             │                              │
│                             │                              │
│                             │                              │
│                             │                           <───────┐direction set to j(:Sj)
│                             │                              │    │
│                             │                {:SgotoTerm}────┐  │
│                             │                              │ │  │
│                             ├──────────────────────────────┤ │  │
│                             │Shell/Interpreter             │ │  │
│                             │                           <────┘  │
│                             │                              │    │
│   direction set to l(:Sl)   │                {:SgotoTerm}───────┘
│                     -{:SgotoTerm}->                        │
│                     <-{:SleaveTerm}-                       │
│                             │                              │
│                             │                              │
╘═════════════════════════════╧══════════════════════════════╛
```

## **shi.vim**
this vim configuration features the shi module (ShellIntegration)

| cmd             | description                                                       |
|-----------------|-------------------------------------------------------------------|
| :Sh/:Sj/:Sk/:Sl | set the direcion of the attached shell                            |
| :Sopen          | open a shell/intergreter at the direction which was set           |
| :SopenPython    | open a python interpreter at the direction which was set          |
| :Smove[hjkl]    | move to pointing (hjkl) window                                    |
| :SgotoTerm      | move to shell (to set direction) [e.g. ->]                        |
| :SleaveTerm     | move back from shell (from set direction) [e.g. <-]               |
|-----------------|-------------------------------------------------------------------|
| keybinding      | action                                                            |
|-----------------|-------------------------------------------------------------------|
| nmap <C-y>      | execute current line in attached shell                            |
| nmap <C-c>      | execute from current position to line end and go to next line *1  |
| imap <C-y>      | stay in insert mode and go to next line (replacement for <Return> |
| vmap <C-c>      | execute selection in shell



*1usefull to use with range e.g 12<C-c> to execute the next 12 lines in the shell
