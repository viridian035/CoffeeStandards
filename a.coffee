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

# FS
FCHK = (pth) ->
	FS.existsSync pth

FIN = (pth) ->
	FS.readFileSync pth, _FILE_OPTS

FOUT = (pth, cnt) ->
	FS.writeFileSync pth, cnt, _FILE_OPTS

LSDIR = (pth) ->
	FS.readdirSync pth, _DIR_OPTS

MKDIR = (pth) ->
	FS.mkdirSync pth, _DIR_OPTS

DEL = (pth) ->
	FS.rmSync pth, _DIR_OPTS

# _EXPORT
module.exports = {
	PJN, STR, WRITE,
	FCHK, FIN, FOUT, LSDIR, MKDIR, DEL
}
