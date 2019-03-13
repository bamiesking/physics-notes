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

% Change style of vector command
\renewcommand{\vec}[1]{\mathbf{#1}}