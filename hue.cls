\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customctexart}[2023/09/19 Custom ctexart Class]

% 定义文档类选项
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

% 加载 ctexart 文档类
\LoadClass[twoside]{ctexart}

% 使用 xeCJK 宏包来设置中文
\usepackage{xeCJK}
\setCJKmainfont{SimSun} % 设置宋体作为中文字体
\setCJKsansfont{SimHei} % 设置黑体作为中文字体

% 一级标题格式
\ctexset{
  section={
    format=\zihao{-3}\bfseries\sffamily,
    %name={,、},
    number=\arabic{section},
  }
}

% 二级标题格式
\ctexset{
  subsection={
    format=\zihao{4}\bfseries\sffamily,
    %name={,、},
    number=\arabic{section}.\arabic{subsection},
  }
}

% 三级标题格式
\ctexset{
  subsubsection={
    format=\zihao{-4}\bfseries\sffamily,
    %name={,、},
    number=\arabic{section}.\arabic{subsection}.\arabic{subsubsection},
  }
}

% 设置正文文本字体为小四号、不加黑
\renewcommand{\normalsize}{\zihao{-4}\selectfont}


\RequirePackage{setspace}
\setstretch{1.5} % 设置行间距为 1.5，相当于 24 磅

\RequirePackage{amsmath}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}
\RequirePackage{rotating}
\RequirePackage{multirow}
\RequirePackage{caption}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage[a4paper,left=3cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}
\RequirePackage{pdfpages}


\captionsetup{labelsep=period}
\definecolor{commentcolor}{RGB}{85,139,78}
\definecolor{stringcolor}{RGB}{206,145,108}
\definecolor{keywordcolor}{RGB}{34,34,250}
\definecolor{backcolor}{RGB}{220,220,220}
\definecolor{gray}{RGB}{128,128,128}

\hypersetup{colorlinks=true,linkcolor=blue,citecolor=blue,filecolor=blue,urlcolor=blue}
\lstset{language=python,basicstyle=\ttfamily,columns=fullflexible,frame=single,commentstyle=\color{commentcolor},keywordstyle=\bfseries\color{keywordcolor},stringstyle=\color{stringcolor},numbersep=5pt,escapeinside=@@,emptylines=1,breaklines=true}



\graphicspath{{figures/}} 







\endinput
