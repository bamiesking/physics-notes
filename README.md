# Physics Notes
A repository to store notes for Physics courses at Durham university. Contributions from any and all DU Physics students is welcome - to get involved, first (skim) read [this ebook](https://git-scm.com/book/en/v2) if you are new to Git. There is nothing problematic with learning as you go along, however the branching structure of this repository is not trivial and so it requires a decent understanding of Git principles to work with confidently.

## Notes class

The file `physics_notes.cls` is a custom class for formatting the notes in the repo. In order to use it, you have to place it in the local classes folder of your TeX distribution (⁨`usr⁩ ▸ ⁨local⁩ ▸ ⁨texlive⁩ ▸ ⁨texmf-local⁩ ▸ ⁨tex⁩ ▸ ⁨latex⁩ ▸ ⁨local⁩` on macOS). It is strongly advised that you take the time to add this class to your TeX distribution, as it allows us to keep the actual notes files slim by putting commonly used environments in the class file instead.

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

Each course folder contains a `main.tex` file, along with a folder containing TeX files for each section of the notes which are then included in the main file via `\input{"Sections/[section].tex"}`. This allows different sections to be edited simultaneously without file conflicts. This isn't crucial, however it is a good way of reducing the bloat of files and improving readability, whilst reducing the work required to merge pull requests.


## Branching

For each set of course notes, there will be a primary development branch (e.g. `quantum-mechanics-2` for the PHYS2581 Quantum Mechanics course). When you are editing a set of notes, make sure that you are on the correct branch; if the module-level folder (e.g. `PHYS2581/`) doeos not exist, it most likely means you are on the wrong branch. The main exception to this rule is where you have created a new branch for a course that previously has had no contributions made. If you can see several module-level files on a courses-specific branch, someone has messed up. Open an issue with the `branching` tag in order to get it fixed.

## Editing 

Use 'm.' at the start of a commit to show a minor edit. e.g. spelling, format...

Comment using '%' to show discussion within a file directly before the line it references.

If you make use of custom environments extensively, first consider whether there is an existing solution in the custom `physics_notes.cls` class file. If not, you may wish to make additions to it on the branch you are currently working on. Ensure any changes will not break features used elsewhere in the repository, or pull requests will not be approved.
