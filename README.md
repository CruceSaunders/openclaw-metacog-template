# Metacognition Template for OpenClaw Bots

**Give any OpenClaw bot the ability to analyze and improve itself.**

---

## What Is This?

This template adds **metacognitive capabilities** to any OpenClaw bot. Metacognition = thinking about thinking. A bot with this overlay will:

- ✅ Analyze its own outputs for quality gaps
- ✅ Detect user frustration signals
- ✅ Identify patterns in its behavior
- ✅ Modify its own files to improve
- ✅ Track what works and what doesn't
- ✅ Get better over time, automatically

**Key principle:** This is an OVERLAY, not a replacement. Your bot keeps its primary purpose; it just gains self-improvement capabilities.

---

## Quick Start

1. Copy this folder to your bot's workspace
2. Read `INTEGRATION-GUIDE.md` for step-by-step instructions
3. Add the relevant sections to your bot's AGENTS.md and HEARTBEAT.md
4. Copy the `skills/self-analyze/` skill to your skills folder
5. Run an initial self-analysis to establish baseline

---

## Files in This Template

| File | Purpose |
|------|---------|
| `install.sh` | **Automated installer** - run to set up your bot in seconds |
| `QUICK-START.md` | **5-minute integration guide** - fastest path to a self-improving bot |
| `METACOG-OVERLAY.md` | Core metacognition instructions - the "how to think about thinking" |
| `AGENTS-ADDITIONS.md` | Text to add to your AGENTS.md |
| `HEARTBEAT-ADDITIONS.md` | Text to add to your HEARTBEAT.md |
| `CRON-SETUP.md` | Cron jobs for periodic self-review (daily/weekly audits) |
| `INTEGRATION-GUIDE.md` | Full step-by-step integration guide |
| `EXAMPLES.md` | Real examples of metacognition in action |
| `skills/self-analyze/SKILL.md` | Deep analysis skill for intensive self-review |
| `templates/output-review-checklist.md` | Checklist for evaluating response quality |
| `templates/file-audit-checklist.md` | Checklist for file coherence audits |
| `templates/improvement-log-template.md` | Template for logging self-improvements |
| `examples/BEFORE-AGENTS.md` | Sample AGENTS.md before integration |
| `examples/AFTER-AGENTS.md` | Sample AGENTS.md after integration |
| `examples/sample-pattern-log.md` | Example pattern tracking file |
| `examples/sample-modifications.md` | Example self-modification log |

---

## How It Works

### The Metacognitive Check (After Every Response)

```
1. Did my output match what the user wanted?
2. Did the user need to clarify or repeat anything?
3. Did I notice any frustration signals?
4. What could have been better?
5. Does any file need updating?
```

### The Self-Analysis Loop (Periodic)

1. **Output Review** - Score recent outputs, identify gaps
2. **Pattern Recognition** - Zoom out, find recurring issues
3. **Root Cause Analysis** - Why did this happen?
4. **Improvement Proposal** - What specific change would help?
5. **Implementation** - Make the change, log it, predict the effect

### Self-Modification Protocol

When a bot identifies a gap, it can modify its own files:
- Log every change (what, why, trigger, expected effect)
- Make minimal changes that solve the problem
- Review later to verify the change worked

---

## Why This Works

Most AI agents operate in a "do task, respond, forget" loop. They make the same mistakes repeatedly because they don't:
1. Notice they made a mistake
2. Analyze why
3. Change something to prevent recurrence

This template breaks that loop by making self-analysis explicit and systematic.

---

## Origin

This template was developed through 60+ work sessions of metacognitive experimentation. The patterns, checks, and protocols emerged from real experience - not abstract theory.

---

## Version

**Current:** v1.2.4 (Feb 4, 2026)

**Changelog:**
- v1.2.4: Added install.sh (automated installer) and QUICK-START.md (5-minute guide) + distribution zip package
- v1.2.3: Added Stakes-Based Analysis Depth section - calibrates metacognition intensity based on context (low/medium/high stakes)
- v1.2.2: Added Immediate Verification section to INTEGRATION-GUIDE.md (5-step test users can run right now to confirm integration worked) - found via UX audit
- v1.2.1: Added Completion Protocol section (checklist for verifying work is actually done before declaring complete) - found via self-testing
- v1.2.0: Added CRON-SETUP.md + templates/ folder (output-review-checklist, file-audit-checklist, improvement-log-template)
- v1.1.0: Added examples/ folder with before/after AGENTS.md, sample pattern log, sample modifications log
- v1.0.1: Added verification depth section (surface vs deep testing)
- v1.0.0: Initial release

---

## License

MIT - Use freely, modify as needed.

---

_The best metacognitive system is the one you actually use. Start simple, iterate based on experience._
