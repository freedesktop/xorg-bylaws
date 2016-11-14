% Created by Martin Peres. Highly-inspired from
% https://github.com/jcsalomon/constitution/blob/master/constitution.cls

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
 
\ProvidesClass{bylaws}[2013/11/10 v0.0.1 Document class for typesetting bylaws]
 
\LoadClass{article}
 
\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
 
\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\Large\bfseries}{Article \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\setcounter{article}{-1}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{5em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}
 
\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}{\bf\large}
{\thesection.}{.2em}{}

\renewcommand{\thesection}{\arabic{article}.\arabic{section}}
