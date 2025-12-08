#!/bin/bash
# Generate llms-full.txt by concatenating all LOOM content
# Run from repository root: ./scripts/generate-llms-full.sh

set -e

OUTPUT_FILE="llms-full.txt"
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

echo "Generating $OUTPUT_FILE..."

cat > "$OUTPUT_FILE" << 'HEADER'
# LOOM: Locus of Observed Meanings - Complete Content

> This file contains the complete content of the LOOM repository, concatenated for LLM consumption.
> For the structured index, see: llms.txt
> Repository: https://github.com/linxule/loom
> Primary publication: https://www.threadcounts.org/
> License: CC BY 4.0

---

HEADER

# Add English articles
echo "## English Articles (LOOM Series)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in posts/loom_post_*.md; do
    if [ -f "$file" ]; then
        echo "Adding: $file"
        echo "---" >> "$OUTPUT_FILE"
        echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

# Add Chinese articles
echo "## Chinese Articles (观阙LOOM Series)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in posts-cn/*.md; do
    if [ -f "$file" ]; then
        echo "Adding: $file"
        echo "---" >> "$OUTPUT_FILE"
        echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

# Add Organizational Futures
echo "## Organizational Futures Series" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in organizational-futures/*.md; do
    if [ -f "$file" ]; then
        echo "Adding: $file"
        echo "---" >> "$OUTPUT_FILE"
        echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

# Add Epistemic Voids
echo "## Epistemic Voids Series" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in epistemic-voids/*.md; do
    if [ -f "$file" ]; then
        echo "Adding: $file"
        echo "---" >> "$OUTPUT_FILE"
        echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

# Add Individual Posts
echo "## Individual Posts" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in individual-posts/*.md; do
    if [ -f "$file" ]; then
        echo "Adding: $file"
        echo "---" >> "$OUTPUT_FILE"
        echo "Source: https://raw.githubusercontent.com/linxule/loom/main/$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        cat "$file" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

# Calculate stats
TOTAL_LINES=$(wc -l < "$OUTPUT_FILE")
TOTAL_CHARS=$(wc -c < "$OUTPUT_FILE")

echo ""
echo "Generated $OUTPUT_FILE"
echo "  Lines: $TOTAL_LINES"
echo "  Characters: $TOTAL_CHARS"
