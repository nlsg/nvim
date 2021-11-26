# nvim

a minimalistic nvim setup
=========================

 ```
┌────────────────────────────────────────────────────────────┐
│Tabs░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
├─────────────────────────────┬──────────────────────────────┤
│Code░░░░░░░░░░░░░░░░░░░░░░░░░│Code░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░├──────────────────────────────┤
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│Shell/Interpreter░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
╘═════════════════════════════╧══════════════════════════════╛
```

## **Keybindings**
this nvim file introduces some new basic motions.

| <C-[h,j,k,l]>  | point/switch to window/pane | left, lower, upper, right 
| d<C-[h,j,k,l]> | delete pointing window/pane |
| c<C-[h,j,k,l]> | change pointing window/pane | (goto and go to insert)
|  ------------- | --------------------------- |
|  -<C-[j,k]>    | change buffer/tab | left, right
|  ------------- | --------------------------- |
| -[jj,ll]       | new pane   | lower(:sp), right(:vsp) fzf in current buffer directory
| -[J,L]         | new pane   | lower(:sp), right(:vsp) fzf in home directory
| --[j,l]        | new termin | lower(:sp), right(:vsp) fzf in current buffer directory

Italic	*italicized text*

Blockquote	> blockquote

Ordered List
  1. First item
  2. Second item
  3. Third item

Unordered List	
  - First item
  - Second item
  - Third item

Code	`code`
Horizontal Rule	---
Link	[title](https://www.example.com)
Image	![alt text](image.jpg)

Fenced Code Block

Footnote	
  Here's a sentence with a footnote. [^1]
  [^1]: This is the footnote.

Heading ID
  ### My Great Heading {#custom-id}
Definition List
  term
  : definition
Strikethrough	~~The world is flat.~~
Task List
  - [x] Write the press release
  - [ ] Update the website
  - [ ] Contact the media 
