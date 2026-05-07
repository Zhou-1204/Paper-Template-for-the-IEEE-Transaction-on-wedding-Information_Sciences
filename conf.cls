\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{conf}[2026/03/21 Minimal conference class]

% changed: base class now in twocolumn mode
\LoadClass[a4paper,11pt,twocolumn]{article}

\RequirePackage[
  top=1.5cm,
  bottom=1.5cm,
  left=1.5cm,
  right=1.5cm,
  includehead,
  includefoot
]{geometry}


\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{orcidlink}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{siunitx}
\RequirePackage{amsmath}
\RequirePackage{array}
\sisetup{
  detect-all,
  table-number-alignment = center
}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\makeatletter

% --------------------------------------------------
% Internal storage
% --------------------------------------------------
\def\conf@conference{International Conference on Emerging Trends in Electrical and Mechanical Engineering}
\def\conf@pagemark{X}
\def\conf@authors{}
\def\conf@affiliations{}
\def\conf@abstract{}
\def\conf@keywords{}
\def\conf@corr{}

% --------------------------------------------------
% Header / footer
% --------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[C]{\textit{\conf@conference}}
\fancyfoot[C]{\conf@pagemark}



\setlength{\headheight}{1.0cm}
\setlength{\headsep}{0.5cm}
\setlength{\footskip}{0.7cm}


\newcommand{\conference}[1]{%
  \gdef\conf@conference{#1}%
  \fancyhead[C]{\textit{#1}}%
}

\newcommand{\pagemark}[1]{%
  \gdef\conf@pagemark{#1}%
  \fancyfoot[C]{#1}%
}

% Optional: adjust inter-column spacing
% \setlength{\columnsep}{0.7cm}

% --------------------------------------------------
% Front matter commands
% --------------------------------------------------
\newcommand{\addauthor}[4][]{%
  \ifdefempty{\conf@authors}{}{%
    \gappto\conf@authors{,\quad}%
  }%
  \ifstrequal{#1}{corresponding}{%
    \gappto\conf@authors{#2$^{#3,*}$}%
  }{%
    \gappto\conf@authors{#2$^{#3}$}%
  }%
  \ifstrempty{#4}{}{%
    \gappto\conf@authors{\,\orcidlink{#4}}%
  }%
}

\newcommand{\addaffiliation}[2]{%
  \gappto\conf@affiliations{$^{#1}$#2\par}%
}

\newcommand{\correspondingauthor}[1]{%
  \gdef\conf@corr{#1}%
}

\newcommand{\setabstract}[1]{%
  \gdef\conf@abstract{#1}%
}

\newcommand{\keywords}[1]{%
  \gdef\conf@keywords{#1}%
}

% --------------------------------------------------
% Title block
% full width, then switch automatically to two columns
% --------------------------------------------------
\renewcommand{\maketitle}{%
  \twocolumn[{%
    \thispagestyle{fancy}%
    \begin{center}
      {\LARGE\bfseries \@title\par}
      \vspace{1em}
      {\large \conf@authors\par}
      \vspace{0.8em}
      {\normalsize \conf@affiliations\par}
    \end{center}

    \ifstrempty{\conf@corr}{}{%
      \vspace{0.5em}
      \noindent{\footnotesize $^{*}$Corresponding author: \texttt{\conf@corr}\par}
    }

    \vspace{1.2em}

    \ifstrempty{\conf@abstract}{}{%
      \noindent\textbf{Abstract}\par
      \smallskip
      \conf@abstract\par
      \vspace{0.75em}
    }

    \ifstrempty{\conf@keywords}{}{%
      \noindent\textbf{Keywords:} \conf@keywords\par
      \vspace{0.5em}
      \noindent\rule{\textwidth}{0.4pt}\par
      \vspace{1.2em}
    }
  }]%
}

% --------------------------------------------------
% References in one column
% This will normally start a new page
% --------------------------------------------------
%\pretocmd{\thebibliography}{\onecolumn}{}{}

\makeatother