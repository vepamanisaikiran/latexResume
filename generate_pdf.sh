#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Default target
TARGET="${1:-resume}"

case "$TARGET" in
  resume|cv|coverletter)
    echo "Compiling ${TARGET}.tex ..."
    ;;
  all)
    for doc in resume cv coverletter; do
      if [ -f "${doc}.tex" ]; then
        echo "Compiling ${doc}.tex ..."
        xelatex -interaction=nonstopmode "${doc}.tex" > /dev/null 2>&1
        xelatex -interaction=nonstopmode "${doc}.tex" > /dev/null 2>&1
        echo "  -> ${doc}.pdf generated"
      fi
    done
    echo "Done. All PDFs generated."
    exit 0
    ;;
  clean)
    echo "Cleaning auxiliary files ..."
    rm -f *.aux *.log *.out *.synctex.gz *.fls *.fdb_latexmk
    echo "Done."
    exit 0
    ;;
  *)
    echo "Usage: $0 [resume|cv|coverletter|all|clean]"
    echo "  resume       - Generate resume.pdf (default)"
    echo "  cv           - Generate cv.pdf"
    echo "  coverletter  - Generate coverletter.pdf"
    echo "  all          - Generate all PDFs"
    echo "  clean        - Remove auxiliary files"
    exit 1
    ;;
esac

# Compile twice for cross-references
xelatex -interaction=nonstopmode "${TARGET}.tex" > /dev/null 2>&1
xelatex -interaction=nonstopmode "${TARGET}.tex" > /dev/null 2>&1

echo "  -> ${TARGET}.pdf generated"
echo "Done."
