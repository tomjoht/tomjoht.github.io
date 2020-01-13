---
layout: page
title: 'Java: continue'
permalink: /java-continue/
date: 2015-01-01 19:39:29.000000000 -08:00
categories:
- java
jtype: notes_java
---

## Quick summary 

* stops current iteration and starts at beginning of loop again

Eclipse example: loops (see example with continue)

## Detailed description

> The `continue` statement works within loops. It stops the current iteration of the loop and moves to the next one. The `break` statement, on the other hand, exits the entire loop. In other words, the continue statement continues the loop, whereas the break statement breaks out of the loop (which explains the origin of these two keywords). The general idiom for its use is that the code in the loop has determined that it does not need to go further and can jump to processing the next item. It's Java's way of letting you say, “No, not that one. How about the next one?” Returning to our chessboard, suppose we want to count the number of surviving pawns (see Listing 5-17).

-- Java 7 for Absolute Beginners
