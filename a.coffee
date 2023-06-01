# _CONSTATNS
_DIR_OPTS =
	recursive: true

_FILE_OPTS =
	encoding: 'utf8'

# _IMPORTS
FS = require 'fs'
PTH = require 'path'
CHPR = require 'child_process'

# BASIC
PJN = (...parts) ->
	PTH.join ...parts.map STR

STR = (x) ->
	x.toString()

WRITE = (...items) ->
	console.log ...items

# CHILD PROCESS
EXEC = (cmd) ->
	try
		CHPR.execSync cmd
	catch error
		WRITE 'error running ' + cmd

# FS
CP = (src, dst) ->
	FS.cpSync src, dst, _DIR_OPTS

FCHK = (pth) ->
	FS.existsSync pth

FIN = (pth) ->
	FS.readFileSync pth, _FILE_OPTS

FOUT = (pth, cnt) ->
	FS.writeFileSync pth, cnt, _FILE_OPTS

LSDIR = (pth) ->
	FS.readdirSync pth

MKDIR = (pth) ->
	FS.mkdirSync pth, _DIR_OPTS

DEL = (pth) ->
	FS.rmSync pth, _DIR_OPTS

# _EXPORT
module.exports = {
	PJN, STR, WRITE,
	EXEC,
	CP, FCHK, FIN, FOUT, LSDIR, MKDIR, DEL
}
