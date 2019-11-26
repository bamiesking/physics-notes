% Basic class statements 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{physics_notes}

% Load article class to work from
\LoadClass{article}

% Require packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{siunitx}
\RequirePackage{enumitem}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{gensymb}
\RequirePackage{hyperref}
\RequirePackage{tikz}
\RequirePackage{subcaption}
\RequirePackage{cancel}
\RequirePackage{xcolor}

% Define colours for xcolor package
\definecolor{palatinate}{RGB}{104, 40, 96}

% Change style of vector command

% Define commands for vector derivatives
\newcommand{\grad}{\vec{\nabla}}
\renewcommand{\div}{\vec{\nabla} \cdot}
\newcommand{\curl}{\vec{\nabla} \times}

\newcommand{\book}[1]{\textcolor{red}{[§#1]}}

\newcounter{example}[section]
\newenvironment{example}[1]
{\refstepcounter{example}\bigskip\noindent
   \textbf{Example~\thesection.\theexample \; #1}\newline\newline\rmfamily\medskip}{\medskip}
