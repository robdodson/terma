mkdir -p out
for file in explore.md fix-issue.md plan.md feature.md; do
  deno run --allow-read --allow-write build.ts "$file" "out/$file"
done
