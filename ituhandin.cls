
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ituhandin}

%Parent type
\LoadClass[a4paper]{report}

%Package requirement
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage[english]{babel}
\RequirePackage{verbatim}
\RequirePackage{color}
\RequirePackage[table]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{parskip}
\RequirePackage{url}
\RequirePackage{background}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{blindtext}
\RequirePackage{color}
\RequirePackage{nopageno}
\RequirePackage{todonotes}
\RequirePackage{listings}
\RequirePackage{caption}
\RequirePackage[numbers]{natbib}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{gray75}{gray}{0.75}
\definecolor{light-gray}{gray}{0.5}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\definecolor{darkgray}{rgb}{.4,.4,.4}
\definecolor{purple}{rgb}{0.65, 0.12, 0.82}

\lstset{
    language=Java,
    basicstyle=\footnotesize\ttfamily,
    %numbers=left,
    numberstyle=\tiny,
    %stepnumber=2,
    numbersep=5pt,
    tabsize=2,
    extendedchars=true,
    %breaklines=false,
    frame=b,
    showspaces=false,
    showtabs=false,
    xleftmargin=17pt,
    framexleftmargin=17pt,
    framexrightmargin=0pt,
    framexbottommargin=4pt,
    showstringspaces=false,
    numberstyle=\tiny\color{gray},
    keywordstyle=\color{blue},
    commentstyle=\color{dkgreen},
    stringstyle=\color{mauve},
    breaklines=true,
    %postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}}
}

\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{\colorbox[cmyk]{0.43, 0.35, 0.35,0.01}{\parbox{\textwidth}{\hspace{15pt}#1#2#3}}}
\captionsetup[lstlisting]{format=listing,labelfont=white,textfont=white, singlelinecheck=false, margin=0pt, font={bf,footnotesize}}


\addtolength{\topmargin}{-1.5cm}
\addtolength{\textheight}{1.5cm}
\addtolength{\oddsidemargin}{-1cm}
\addtolength{\evensidemargin}{-1cm}
\addtolength{\textwidth}{2cm}


\definecolor{schultz}{RGB}{146,34,126}
\definecolor{gray75}{gray}{0.75}
\definecolor{light-gray}{gray}{0.5}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\section}{\normalfont\Large\bfseries}{}{0em}{Part \thesection}
\titleformat{\chapter}[hang]{\Huge\bfseries}{Question \thechapter\hsp}{0pt}{\Huge\bfseries}[{\titlerule[1.5pt]}]
% \titlespacing*{\chapter}{0cm}{-10pt}{2em}
\titlespacing*{\chapter}{0cm}{-20pt}{2em}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{1}

\titlespacing*{\section} {0pt}{5pt}{2pt}

\backgroundsetup{
    scale=1,
    color=black,
    opacity=1,
    angle=0,
    position=current page.south,
    vshift=60pt,
    contents={%
        \small%
        \begin{minipage}{.48\textwidth}
            \vspace{-2cm}
            \parbox[b]{.4\textwidth}{%
                Side \thepage\ af \pageref{LastPage}}\hfill
            \parbox[b]{.6\textwidth}{%
                \raggedleft \@coursecode}
            \rule{\textwidth}{1.5pt}\\
            \parbox[b]{.7\textwidth}{%
                \@fullname }\hfill
            \parbox[b]{.3\textwidth}{%
                \raggedleft \email } 
        \end{minipage}\hspace{.02\textwidth}%
        \begin{minipage}{.5\textwidth}
            \vspace{-2cm}
            \includegraphics[width=\linewidth,height=70pt,keepaspectratio]{footer_logo}
        \end{minipage}%
    }
}

\newcommand{\namesigdate}[2][10cm]{%
    \begin{tabular}{@{}p{#1}@{}}
        #2 \\[2\normalbaselineskip] \hrule \\[0pt]
        {\small \textit{Signature}} \\[2\normalbaselineskip] \hrule \\[0pt]
        {\small \textit{Date}}
    \end{tabular}
}

\newcommand{\signpage}{
	\vspace*{\fill}
\begin{center}
    \begin{large}
        I hereby declare that I have answered these exam questions myself without any outside help.
    \end{large}

    \vspace*{2cm}
    \namesigdate{}
\end{center}

\vspace*{\fill}
\newpage
}

% Course Code
\newcommand\@coursecode{\ClassError{ITU Handin}{Course code not given}{You have to supply the course code.}}
\newcommand\coursecode[1]{\renewcommand\@coursecode{#1}}

% Course Name
\newcommand\@coursename{\ClassError{ITU Handin}{Course name not given}{You have to supply the course name.}}
\newcommand\coursename[1]{\renewcommand\@coursename{#1}}

% Name
\newcommand\@fullname{\ClassError{ITU Handin}{Full name not given}{You have to supply your full name.}}
\newcommand\fullname[1]{\renewcommand\@fullname{#1}}

% When (in the format (MM/YYYY))
\newcommand\@when{\ClassError{ITU Handin}{When not given}{You have to supply when the exam is (month year).}}
\newcommand\when[1]{\renewcommand\@when{#1}}

% Initials
\newcommand\@initials{\ClassError{ITU Handin}{Initials not given}{You have to supply your initials.}}
\newcommand\initials[1]{\renewcommand\@initials{#1}}

% Returns: [initials]@itu.dk
\newcommand\email{\@initials{@}itu.dk}

% Make title page
\newcommand\maketitlepage{%
	\NoBgThispage
	\title{%
		\Huge \textbf{\@coursename} \\ \huge Exam Assignment \@when
	}
	\author{%
		\textsc{\@fullname} \\ \textsc{\email}
	}
	\maketitle
}

\newcommand{\fancyQuote}[2]{\begin{quote}``#1'' #2\end{quote}}
\newcommand{\moreFancyQuote}[2]{\vspace{10pt}\begin{quote}``#1'' \vspace{-5pt} \flushright{--- #2} \end{quote}\vspace{10pt}}

\newcommand{\styleAppendix}{\titleformat{\chapter}[display]{\Huge\bfseries}{Appendix\hsp\thechapter}{0pt}{\Huge\bfseries}}
