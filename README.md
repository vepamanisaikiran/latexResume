# Sai Kiran Vepamani - LaTeX Resume

LaTeX resume built with the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.

## Prerequisites

- **TeX Live** (with XeLaTeX): `brew install texlive`

## Generate PDF

```bash
# Generate resume (default)
./generate_pdf.sh

# Generate specific document
./generate_pdf.sh resume
./generate_pdf.sh cv
./generate_pdf.sh coverletter

# Generate all documents
./generate_pdf.sh all

# Clean auxiliary files
./generate_pdf.sh clean
```

## Project Structure

```
.
├── resume.tex              # Main resume file
├── cv.tex                  # Full CV file
├── coverletter.tex         # Cover letter file
├── awesome-cv.cls          # Awesome-CV document class
├── generate_pdf.sh         # PDF generation script
├── fonts/                  # Custom fonts (Montserrat)
├── resume/                 # Resume section files
│   ├── summary.tex
│   ├── experience.tex
│   ├── education.tex
│   └── projects.tex
└── cv/                     # CV section files
    ├── education.tex
    ├── experience.tex
    ├── skills.tex
    └── ...
```

## Customization

- Edit section files in `resume/` or `cv/` directories
- Modify personal info in the header of `resume.tex` or `cv.tex`
- Change accent color in `resume.tex` (`\colorlet{awesome}{awesome-skyblue}`)
