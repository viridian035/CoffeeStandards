# CoffeeStandards
Standard utility functions for CoffeeScript.

## Functions
### Basic
```CoffeeScript
PJN ...parts => boolean
# Join paths
PJN 'a', 'b', 'c'		# 'a/b/c'

READ qry => string
# Prompts for input
food = READ 'favorite food? > '		# 'pizza'

STR x => string
# Stringifies

WRITE ...items
# Writes items to console
```

### Child Process
```CoffeeScript
EXEC cmd => string
# Synchronously executes command
```

### FS
```CoffeeScript
CP src, dst
# Copies files recurively

FCHK pth => boolean
# Checks if file exists

FIN pth => string
# Synchronously reads file

FOUT pth, cnt
# Synchronously writes file

LSDIR pth => string[]
# Synchronously reads directory

MKDIR pth
# Synchronously and recurively creates directory

DEL pth
# Synchronously and recurively deletes item
