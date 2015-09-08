% Copyright (c) Geoffrey Lentner 2015. All Rights Reserved.
% Vitae.cls

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Detailes

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Vitae}[2015/09/01 Latex class for doing CV / Resume.]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Based on `article` class

\LoadClass[10pt, a4paper, final]{article}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Required Packages

\RequirePackage[top=1in, bottom=1in, left=0.75in, right=0.75in, headheight=15pt]{geometry}
\RequirePackage{lmodern}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{lscape}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[bottom]{footmisc}
\RequirePackage{multicol}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Environments

\newcommand{\Name}[1]{%

	\begin{center}
		\huge\textsc{#1}
	\end{center}
}

\newcommand{\Information}[2]{%
	\begin{center}
		#1\\#2
	\end{center}
}

\newcommand{\link}[1]{\footnotesize\texttt{\textbf{#1}}}
\newcommand{\email}[1]{E: \link{\href{mailto:#1}{#1}}}
\newcommand{\website}[1]{W: \link{\href{http://#1}{#1}}}
\newcommand{\dotsep}{\mbox{\ensuremath{~ ~\bullet~ ~}}} % bullet seperator

% two-column style block format
\newcommand{\LeftRight}[2]{%
	\begin{multicols}{2}[]
	\begin{minipage}{\linewidth}
	\begin{flushleft}
		#1
	\end{flushleft}
	\end{minipage}
	\begin{minipage}{\linewidth}
	\begin{flushright}
		#2
	\end{flushright}
	\end{minipage}
	\end{multicols}
}

% two-column style block format + itemized list
\newcommand{\Experience}[3]{%
	\LeftRight{#1}{#2}
	\begin{itemize}
		#3
	\end{itemize}
	\smallskip
}

% change itemization from bullets to dashes
\def\labelitemi{-}
\setitemize[0]{leftmargin=0.75in}


% paragraphs with bold descriptors
\newcommand{\Descriptions}[1]{
	\begin{description}
		#1
	\end{description}
}

% structure of listing teaching positions
\newcommand{\TeachingPosition}[2]{%
	\bigskip\noindent
	\textbf{\underline{#1}}
	\begin{itemize}
		#2
	\end{itemize}
}
