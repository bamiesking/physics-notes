% Basic class statements 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{physics_notes}

% Load article class to work from
\LoadClass{article}

% Require packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{siunitx}

\RequirePackage{enumitem} %%lists/bullet points


\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{gensymb} %%%math packages


\RequirePackage{hyperref} %%links withing document also urls etc.

\RequirePackage{tikz} % Drawing vector figures in latex

\RequirePackage{epsfig} %For pyplot vector graphics

\RequirePackage{physics} %Make \abs for modulus and \norm for vectors

\RequirePackage{graphicx} %Can import jpp, png et.

\RequirePackage{caption} %%Caption arguemtn additions on figures