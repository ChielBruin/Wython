# Wython

A Python 3.6 Compiler for WebAssembly, implemented in Spoofax.

## Authors 

- Chiel Bruin
- Rasmus Bergström

## Approach

Build working compiler for one feature at a time. Divide Python into levels of
complexity according to priority, and implement as many of these as possible.
These levels are not to be seen as enforcing, but rather to be implemented
according to a logical progression.

## Levels

Level 0: Lexical Expressions & Output
Level 1: Expressions
Level 2: Statements & Variables
Level 3: Functions
Level 4: Data Structures (Lists, Dicts etc.)
Level 5: Classes
Level 6: Lambdas
Level 7: Standard Library
Level 8: Super
Level 9: Imports

## Expected Result

A working compiler for a subset of Python 3.6 to WebAssembly, complete with
parsing, name-resolution, type-checking (when provided type-annotations) and
code-generation.
