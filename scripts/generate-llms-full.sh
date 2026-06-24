#!/usr/bin/env bash
# Generates llms-full.txt — the complete LOOM corpus concatenated into one file.
#
# This script is the single source of truth for llms-full.txt. The GitHub Action
# at .github/workflows/update-llms-full.yml runs it on push; you can also run it
# locally with `bash scripts/generate-llms-full.sh`.
#
# To add a new series: add one emit_section line below AND add the series'
# directory to the `paths:` trigger in the workflow so edits regenerate the file.

set -euo pipefail
shopt -s nullglob   # an empty glob expands to nothing, not the literal pattern
export LC_ALL=C     # deterministic glob ordering across macOS and CI

cd "$(dirname "$0")/.." || exit 1
FINAL_FILE="llms-full.txt"
OUTPUT_FILE="${FINAL_FILE}.tmp.$$"          # build into a temp file...
trap 'rm -f "$OUTPUT_FILE"' EXIT            # ...and never leave a partial behind on failure

cat > "$OUTPUT_FILE" <<'HEADER'
# LOOM: Locus of Observed Meanings - Complete Content

> This file contains the complete content of the LOOM repository, concatenated for LLM consumption.
> For the structured index, see: llms.txt
> Repository: https://github.com/linxule/loom
> Primary publication: https://www.threadcounts.org/
> License: CC BY 4.0
>
> Intended use: load the whole corpus into a long-context model in one shot.
> For retrieval / RAG, ingest the individual .md files listed in llms.txt instead —
> they preserve the per-document boundaries and metadata that this concatenated file does not.

---

HEADER

# emit_section "<Section title>" "<glob of files>"
emit_section() {
  local title="$1" glob="$2" file
  local files=( $glob )
  if [ "${#files[@]}" -eq 0 ]; then return 0; fi   # no posts → no stray header
  echo "## $title" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  for file in "${files[@]}"; do
    echo "---" >> "$OUTPUT_FILE"
    echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    printf '\n\n' >> "$OUTPUT_FILE"
  done
}

emit_section "English Articles (LOOM Series)"          "posts/loom_post_*.md"
emit_section "Chinese Articles (观阙LOOM Series)"        "posts-cn/*.md"
emit_section "Organizational Futures Series"            "organizational-futures/*.md"
emit_section "Organizational Futures Series (中文)"      "organizational-futures-cn/*.md"
emit_section "Research with AI Series"                  "research-with-ai/*.md"
emit_section "Research with AI Series (AI 研究手记 中文)"  "research-with-ai-cn/*.md"
emit_section "AI Whispers Series"                       "ai-whispers/*.md"
emit_section "AI Whispers Series (AI 耳语 中文)"          "ai-whispers-cn/*.md"
emit_section "Epistemic Voids Series"                   "epistemic-voids/*.md"
emit_section "Epistemic Voids Series (认知空隙 中文)"      "epistemic-voids-cn/*.md"
emit_section "SEAM Series"                              "seam/*.md"
emit_section "SEAM Series (接榫SEAM 中文)"                "seam-cn/*.md"
emit_section "Individual Posts"                         "individual-posts/*.md"
emit_section "Individual Posts (中文)"                   "individual-posts-cn/*.md"

mv "$OUTPUT_FILE" "$FINAL_FILE"             # atomic replace: a partial run never clobbers the good file
trap - EXIT
echo "Generated $FINAL_FILE with $(wc -l < "$FINAL_FILE") lines"
