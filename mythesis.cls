
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions

\LoadClass{article}

\RequirePackage[a4paper,margin=1in]{geometry}
\usepackage[turkish]{babel}
\usepackage[utf8]{inputenc}
\usepackage{afterpage}



\renewcommand{\tablename}{\textbf{\c Cizelge}}
\renewcommand{\figurename}{\textbf{\c Sekil}}
\renewcommand{\listfigurename}{\textbf{\c SEKİLLER DİZİNİ}}
\renewcommand{\listtablename}{\textbf{ÇİZELGELER DİZİNİ}}
%\renewcommand{\bibname}{\textbf{KAYNAKLAR DİZİNİ}}

\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \begin{center}
    %\vspace*{-0.7cm}
    %\listfigurename \\
    \mbox{}\\
    \mbox{}\\
    \end{center}
     \begin{center}
     \noindent \quad \underline{\textbf{Şekil}} \hfill \underline{\textbf{Sayfa}}\\[0mm]
    \end{center}
    \@starttoc{lof}%

    \if@restonecol\twocolumn\fi
    }


\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
   \begin{center}
   %\listtablename \\
   \textbf{ÇİZELGELER DİZİNİ}
   \mbox{}\\
   \mbox{}\\
   \end{center}
   \begin{center}
     \noindent \underline{\textbf{Çizelge}} \hfill \underline{\textbf{Sayfa}}\\[0mm]
    \end{center}
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }



\renewcommand\tableofcontents{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \begin{center}
   % \vspace*{-0.4cm}
    %\contentsname\\
    \textbf{İÇİNDEKİLER} \\
    \vspace{30pt}
    \end{center}
   \noindent \quad \hfill \underline{\textbf{Sayfa}}\\[12pt]
    \@starttoc{toc}

    \if@restonecol\twocolumn\fi
    }
    
\@addtoreset{figure}{section}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
%\def\fnum@figure{\figurename\nobreakspace\thefigure.}
\@addtoreset{table}{section}
\renewcommand{\thetable}{\thesection.\arabic{table}}

\newcommand{\captionfonts}{\footnotesize}
\makeatletter  
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\captionfonts #1: #2}}%
  \ifdim \wd\@tempboxa >\hsize
    {\captionfonts #1: #2\par}
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\makeatother  

%%%%%%
\def\Rs{{\rm R_{\odot}}}
\def\Ms{{\rm M_{\odot}}}
\def\Ls{{\rm L_{\odot}}}
%%%%
%%%%%%%%%%%%%
\setlength{\parindent}{1cm}
\linespread{1.5}
\setlength{\voffset}{-2.0cm}
\setlength{\topmargin}{.0cm} 
\setlength{\headheight}{.5cm}
\setlength{\headsep}{1.cm}
\setlength{\hoffset}{-0.7cm}
\setlength{\oddsidemargin}{3cm}
\setlength{\evensidemargin}{0cm}
\setlength{\textwidth}{14cm}
\setlength{\textheight}{25.5cm}
%% Redefining the \section command:

%% Redefining the chapter heading styles
%
%% Numbered chapter heading style:
%
%\renewcommand{\@makechapterhead}[1]{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedright \normalfont
%    \hrule                                           % horizontal line
%    \vspace{5pt}%                                    % add some vertical space
%    \ifnum \c@secnumdepth >\m@ne
%        \huge\scshape \@chapapp\space \thechapter    % Chapter followed by number
%        \par\nobreak
%        \vskip 20\p@
%    \fi
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                            % chapter title
%    \vspace{5pt}%                                    % add some vertical space
%    \hrule                                           % horizontal rule
%    \nobreak
%    \vskip 40\p@
%  }}
%
%% Unnumbered chapter heading style:
%
%\renewcommand{\@makeschapterhead}[1]{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedright
%    \normalfont
%    \hrule                                           % horizontal line
%    \vspace{5pt}%                                    % add some vertical space
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                            % chapter title
%    \vspace{5pt}%                                    % add some vertical space
%    \hrule                                           % horizontal line
%    \nobreak
%    \vskip 40\p@
%  }}
%
%% end of file:
%\endinput

\makeatletter

\def\clap#1{\hbox to 0pt{\hss #1\hss}}%
\def\ligne#1{%
  \hbox to \hsize{%
    \vbox{\centering #1}}}%
\def\haut#1#2#3{%
  \hbox to \hsize{%
    \rlap{\vtop{\raggedright #1}}%
    \hss
    \clap{\vtop{\centering #2}}%
    \hss
    \llap{\vtop{\raggedleft #3}}}}%
\def\bas#1#2#3{%
  \hbox to \hsize{%
    \rlap{\vbox{\raggedright #1}}%
    \hss
    \clap{\vbox{\centering #2}}%
    \hss
    \llap{\vbox{\raggedleft #3}}}}%

\def\maketitle{%
  \thispagestyle{empty}\vbox to \vsize{%
    \haut{}{\@blurb}{}
    \vfill
    \vspace{128pt}
    \ligne{ \textbf {\@title}}
\vspace{96pt}
 \ligne{ \@author}
  %\vspace{24pt}\ligne{\@tezturu}
    \vspace{96pt}\ligne{\@advisor}
%\vspace{48pt}\ligne{\@coadvisor}
   \vspace{96pt}\ligne{\@kod}
     \vspace{10pt}\ligne{\@bolum}

    \vspace{4cm}
    \vfill
    \vfill
   
    \hspace{5.5cm}{\@location}
    \vspace{72pt}\ligne{\@tarih}
    }%
%\cleardoublepage
 \newpage
\thispagestyle{empty}
\mbox{}
\newpage
  }
  
  
\def\date#1{\def\@date{#1}}
\def\author#1{\def\@author{#1}}
\def\title#1{\def\@title{#1}}
\def\tezturu#1{\def\@tezturu{#1}}
\def\location#1{\def\@location{#1}}
\def\blurb#1{\def\@blurb{#1}}
\def\bolum#1{\def\@bolum{#1}}
 \def\kod#1{\def\@kod{#1}}
 \def\tarih#1{\def\@tarih{#1}}
  \def\advisor#1{\def\@advisor{#1}}
 \def\coadvisor#1{\def\@coadvisor{#1}}
\date{\today}


\title{\textbf{TEZİN ADI}\\[16pt]}
%\tezturu{\textbf{DOKTORA TEZİ}}

 \author{Ad SOYAD\\[14pt]}
 \advisor{Danışman:  \\[12pt]}
 \kod {XXX Anabilim Dalı}
 \bolum{ Bölüm Adı\\[12pt]}
  %\vspace{16pt}
  
   \location{İzmir \\}
   \tarih{Yıl \\}
  \blurb{
  T.C.\\
EGE ÜNİVERSİTESİ\\
 Fen Bilimleri Enstitüsü\\[12pt]
    }
