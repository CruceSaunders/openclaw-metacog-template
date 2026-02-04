# Quick Start: Metacognition in 5 Minutes

_The fastest path to a self-improving bot._

---

## 1. Run the Installer (30 seconds)

```bash
cd /path/to/metacog-template
./install.sh /path/to/your/bot/workspace
```

This creates the folder structure and copies core files.

---

## 2. Add to AGENTS.md (2 minutes)

Open your bot's AGENTS.md and add this section:

```markdown
## Metacognitive Check (After Every Significant Response)

Before delivering any significant response, run this check:

1. **Match?** Did my output match what the user wanted?
2. **Frustration?** Any signs of user frustration? (repeating themselves, "no, I meant...", curt tone)
3. **Better?** What could have been better about this response?
4. **Update?** Does any file need updating based on this interaction?

If anything needs attention: log it, fix it, or note it for later.

### Self-Modification Protocol

When you identify a gap in your own files:
1. Log the change in `memory/self-analysis/modifications.md`
2. State the trigger (what revealed this gap)
3. Make a minimal change that solves the problem
4. Predict the effect
5. Set a review date to verify it worked
```

---

## 3. Add to HEARTBEAT.md (1 minute)

Add to your heartbeat routine:

```markdown
### Quick Metacognitive Check

On each heartbeat:
1. Any frustration signals since last check?
2. Any patterns repeating?
3. Any "I wish I had known X" moments?
```

---

## 4. Verify It Works (1 minute)

Ask your bot something vague that would normally need clarification. Check if:
- [ ] Bot mentions checking output quality
- [ ] Folder `memory/self-analysis/` exists and has files
- [ ] Bot can run `self-analyze` skill when asked

---

## 5. That's It!

Your bot now:
- ✅ Checks its own outputs for quality
- ✅ Detects frustration signals
- ✅ Can modify its own files to improve
- ✅ Tracks patterns over time

---

## Want More?

- **Full guide:** `INTEGRATION-GUIDE.md`
- **All examples:** `EXAMPLES.md`
- **Cron setup:** `CRON-SETUP.md`
- **Deep analysis:** `skills/self-analyze/SKILL.md`

---

_Start simple. Let complexity emerge from need._
