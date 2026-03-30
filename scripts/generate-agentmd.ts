#!/usr/bin/env bun

import { Glob } from "bun";
import { readFileSync, writeFileSync, existsSync } from "fs";
import { dirname, join } from "path";

const glob = new Glob("**/CLAUDE.md");
const matches = Array.from(
  glob.scanSync({ dot: true, onlyFiles: true })
).filter(
  (p) =>
    !p.includes("node_modules/") &&
    !p.includes(".git/") &&
    !p.includes(".turbo/")
);

if (matches.length === 0) {
  console.log("No CLAUDE.md files found.");
  process.exit(0);
}

let updated = 0;
let skipped = 0;

for (const claudePath of matches) {
  const agentPath = join(dirname(claudePath), "AGENT.md");

  let content: string;
  try {
    content = readFileSync(claudePath, "utf8");
  } catch (err) {
    console.warn(`Skipping unreadable file: ${claudePath}:`, (err as Error).message);
    skipped++;
    continue;
  }

  try {
    const existing = existsSync(agentPath)
      ? readFileSync(agentPath, "utf8")
      : null;
    if (existing === content) {
      continue;
    }
    writeFileSync(agentPath, content, "utf8");
    updated++;
    console.log(`Wrote ${agentPath}`);
  } catch (err) {
    console.warn(`Failed writing ${agentPath}:`, (err as Error).message);
    skipped++;
  }
}

console.log(
  `Done. Updated: ${updated}, Skipped: ${skipped}, Total CLAUDE.md: ${matches.length}`
);
