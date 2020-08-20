# Physics Notes
A repository to store notes for Physics courses at Durham university. Contributions from any and all DU Physics students is welcome - to get involved, first (skim) read [this ebook](https://git-scm.com/book/en/v2) if you are new to Git. There is nothing problematic with learning as you go along, however the branching structure of this repository is not trivial and so it requires a decent understanding of Git principles to work with confidently.

## Notes class

The file `physics_notes.cls` is a custom class for formatting the notes in the repo. In order to use it, you have to place it in the local classes folder of your TeX distribution (⁨`usr⁩ ▸ ⁨local⁩ ▸ ⁨texlive⁩ ▸ ⁨texmf-local⁩ ▸ ⁨tex⁩ ▸ ⁨latex⁩ ▸ ⁨local⁩` on macOS). It is strongly advised that you take the time to add this class to your TeX distribution, as it allows us to keep the actual notes files slim by putting commonly used environments in the class file instead.

## Repo structure

Currently, the repository is split into modules, which are further split into courses. For example:

```
PHYS2581/
	Quantum Mechanics/
		main.tex
		Sections/
			<section 1>.tex
		Figures/
			<figure 1>.jpg
	Electromagnetism/
		...
PHYS2591/
	Thermodynamics/
		...
	Optics/
		...
	Condensed Matter Physics/
		...
```

Each course folder contains a `main.tex` file, along with a folder containing TeX files for each section of the notes which are then included in the main file via `\input{"Sections/[section].tex"}`. This allows different sections to be edited simultaneously without file conflicts. This isn't crucial, however it is a good way of reducing the bloat of files and improving readability, whilst reducing the work required to merge pull requests.

## Branching

For each set of course notes, there will be a primary development branch (e.g. `quantum-mechanics-2` for the PHYS2581 Quantum Mechanics course). When you are editing a set of notes, make sure that you are on the correct branch; if the module-level folder (e.g. `PHYS2581/`) does not exist, it most likely means you are on the wrong branch. The main exception to this rule is where you have created a new branch for a course that previously has had no contributions made. If you can see several module-level files on a courses-specific branch, someone has messed up. Open an issue with the `branching` tag in order to get it fixed.

### Creating a new branch

If you are intending to write notes for a course without a pre-existing branch, you must make sure that your initial commit to the branch sets up the GitHub Actions workflow to ensure that future commits compile. To do this, checkout the new branch and create the `.github/workflows/test_compile.yml` file with the following contents:

```yaml
name: Build LaTeX document
on:
  push:
    branches: 
      - '<branch name>'
jobs:
  build_latex:
    strategy:
      matrix:
        file: ['<module>/<course 1>/main.tex', '<module>/<course 2>/main.tex']
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Compile LaTeX document
        uses: xu-cheng/latex-action@v2
        with:
          root_file: ${{ matrix.file }}
```

The working tree should then look like the following:

```
.github/
	workflows/
		test_compile.yml
<module>/
	<course 1>/
		main.tex
		Sections/
			<section 1>.tex
			<section 2>.tex
		Figures/
			...
	<course 2>/
		...
.gitignore
physics_notes.cls
```

## Pushing to the repository

When you push a commit to the repository, a GitHub workflow will run which ensures your changes compile. Commits that fail to compile will me marked as such, and pull requests with commits that failed tests will not be allowed to be merged until the issues are fixed. 

### Testing locally

Unless you are a LaTeX prodigy, it is inevitable that you will want to test changes on your local machine before committing. Assuming use of a command line LaTeX compiler (e.g. `pdftex`), you will need to run the compile command from the top-level directory (same level as the `physics_notes.cls` file) rather than from the same level as the `main.tex` file. This means that your local repository can make full use of the `physics_notes.cls` file without changing the `\documentclass` statement and thus breaking the workflow testing on push events.

## Editing 

Use 'm.' at the start of a commit to show a minor edit. e.g. spelling, format...

Comment using '%' to show discussion within a file directly before the line it references.

If you make use of custom environments extensively, first consider whether there is an existing solution in the custom `physics_notes.cls` class file. If not, you may wish to make additions to it on the branch you are currently working on. Ensure any changes will not break features used elsewhere in the repository, or pull requests will not be approved.
