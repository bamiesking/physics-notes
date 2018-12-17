# Physics Notes
A repository to store notes for (2nd year) physics courses at Durham university

## Notes class

The file `physics_notes.cls` is a custom class for formatting the notes in the repo. In order to use it, you have to place it in the local classes folder of your TeX distribution (⁨`usr⁩ ▸ ⁨local⁩ ▸ ⁨texlive⁩ ▸ ⁨texmf-local⁩ ▸ ⁨tex⁩ ▸ ⁨latex⁩ ▸ ⁨local⁩` on macOS). 

## Repo structure

Currently, the repository is split into modules, which are further split into courses. For example:

```
\PHYS2581
	\Quantum Mechanics
	\Electromagnetism
\PHYS2591
	\Thermodynamics
	\Optics
	\Condensed Matter Physics
```

Each course folder contains a `main.tex` file, along with a folder containing TeX files for each section of the notes which are then included in the main file via `\input{"Sections/[section].tex"}`. This allows different sections to be edited simultaneously without file conflicts. 


## Branching

For each set of course notes, there will be a primary development branch (e.g. `quantum-mechanics-2` for the PHYS2581 Quantum Mechanics course). 

## Editing 

Use 'm.' at the start of a commit to show a minor edit. e.g. spelling, format...

Comment using '%' to show discussion within a file after the line it references 

## Notation 

Here we'll include the accepted use of notation for use in the equations of the document i.e. 'log' for the natural log.
