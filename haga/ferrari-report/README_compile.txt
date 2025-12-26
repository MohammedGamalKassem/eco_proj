Compile instructions (XeLaTeX + biber):

Prerequisite
- Install a TeX distribution that includes XeLaTeX and biber.
  - Windows options: MiKTeX (install "XeTeX" + "biber" packages) or TeX Live.

PowerShell
1) Open PowerShell in this folder:
   e:\haga\ferrari-report
2) Run:
   xelatex -interaction=nonstopmode Ferrari_Economics_and_Marketing_Report.tex
   biber Ferrari_Economics_and_Marketing_Report
   xelatex -interaction=nonstopmode Ferrari_Economics_and_Marketing_Report.tex
   xelatex -interaction=nonstopmode Ferrari_Economics_and_Marketing_Report.tex

Command Prompt (cmd.exe)
1) cd /d e:\haga\ferrari-report
2) Run the same 4 commands above.

Output PDF: Ferrari_Economics_and_Marketing_Report.pdf
