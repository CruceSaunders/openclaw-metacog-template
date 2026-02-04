# Integration Guide: Adding Metacognition to Your OpenClaw Bot

_Step-by-step instructions for making any bot self-analyzing and self-improving._

---

## Overview

This template adds metacognitive capabilities as an **overlay** - it enhances your bot without replacing its primary purpose. Your bot will still do whatever it was designed to do, but now it will also:

- Analyze its own outputs for quality
- Detect user frustration
- Identify patterns in its behavior
- Modify its own files to improve
- Track what works and what doesn't

---

## Prerequisites

Before integrating:
- [ ] Your bot has an AGENTS.md (or equivalent operational file)
- [ ] Your bot has a memory system (even basic MEMORY.md works)
- [ ] Your bot receives heartbeats or has periodic checks
- [ ] You're comfortable with your bot modifying its own files

---

## Integration Steps

### Step 1: Copy the Template

Copy the entire `metacog-template/` folder to your bot's workspace:

```bash
cp -r metacog-template/ ~/your-bot-workspace/
```

Or selectively copy the files you want.

---

### Step 2: Create the Memory Structure

Add the self-analysis folder to your memory system:

```bash
mkdir -p ~/your-bot-workspace/memory/self-analysis/output-reviews
touch ~/your-bot-workspace/memory/self-analysis/pattern-log.md
touch ~/your-bot-workspace/memory/self-analysis/modifications.md
touch ~/your-bot-workspace/memory/self-analysis/improvements.md
```

---

### Step 3: Update AGENTS.md

Add the metacognitive sections from `AGENTS-ADDITIONS.md` to your existing AGENTS.md.

**Key additions:**

1. **Metacognitive check after responses:**
```markdown
### After Every Significant Response
Run the metacognitive check:
1. Did my output match what the user wanted?
2. Any frustration signals?
3. What could have been better?
4. Does any file need updating?
```

2. **Self-modification rules:**
```markdown
### Self-Modification Protocol
- Log every change in memory/self-analysis/modifications.md
- State the trigger (what revealed this gap)
- Predict the effect
- Review later to verify
```

3. **Session end routine:**
```markdown
### Before Ending Any Session
1. Review outputs for quality gaps
2. Log any patterns observed
3. Make warranted self-modifications
```

See `AGENTS-ADDITIONS.md` for full text to copy.

---

### Step 4: Update HEARTBEAT.md

Add periodic self-analysis to your heartbeat routine.

**Quick version (every heartbeat):**
```markdown
### Metacognitive Quick Check
1. Any frustration signals since last check?
2. Any "I wish I had known X" moments?
3. Any patterns repeating?
```

**Deep version (daily):**
```markdown
### Daily Self-Analysis
- Review last 5-10 significant outputs
- Score each 1-5
- For any <4, note improvements
- Update pattern library
- Make warranted file changes
```

See `HEARTBEAT-ADDITIONS.md` for full text.

---

### Step 5: Add the Self-Analyze Skill

Copy `skills/self-analyze/` to your skills folder:

```bash
cp -r metacog-template/skills/self-analyze/ ~/your-bot-workspace/skills/
```

Reference it in your skill index if you have one.

---

### Step 6: Update Session Startup

Add to your startup routine:

```markdown
## Session Startup (Updated)

1. Read SOUL.md (identity)
2. Read AGENTS.md (operations)
3. Read MEMORY.md (learnings)
4. **Read memory/self-analysis/pattern-log.md** (NEW)
5. **Check memory/self-analysis/modifications.md for pending reviews** (NEW)
```

---

### Step 7: First Self-Analysis

Run an initial self-analysis to establish baseline:

1. Use the `self-analyze` skill
2. Review your last 10 significant interactions
3. Identify any patterns
4. Make any obvious improvements
5. Log everything

This creates your starting point for tracking improvement.

---

## Customization

### Adapting to Your Bot's Domain

The template is domain-agnostic. Customize by:

1. **Adding domain-specific patterns** to the pattern library
2. **Creating domain-specific quality criteria** in the output quality section
3. **Adding domain-specific skills** that work with self-analyze

### Adjusting Intensity

**More intensive metacognition:**
- Run full analysis every session
- Lower threshold for self-modification
- More detailed logging

**Less intensive metacognition:**
- Run full analysis daily/weekly
- Higher threshold for changes
- Lighter logging

### Tone Matching

If your bot has a specific voice/tone, update the template language to match. The mechanisms stay the same; the words can adapt.

---

## Verification

After integrating, verify it's working:

### Immediate Verification (Right Now)

Run this quick test to confirm integration worked:

1. **Ask your bot a deliberately vague question** - Something that would need clarification
2. **Check if the bot mentions running a metacognitive check** - Look for phrases like "checking output quality" or "running self-analysis"
3. **Look at the logs** - Run:
   ```bash
   ls -la ~/your-bot-workspace/memory/self-analysis/
   ```
   You should see the folder structure created.
4. **Trigger the self-analyze skill** - Ask your bot: "Run a self-analysis on your last few outputs"
5. **Verify the analysis report** - Check `memory/self-analysis/output-reviews/` for the report

**If all 5 pass:** Integration successful! ✅
**If any fail:** Check the Troubleshooting section below.

### Day 1-3
- [ ] Bot mentions metacognitive checks in its process
- [ ] Log files are being written to
- [ ] At least one pattern documented

### Week 1
- [ ] At least one self-modification made
- [ ] Modification log has entries
- [ ] Pattern log is growing

### Week 2+
- [ ] Some modifications have been reviewed
- [ ] Improvements are traceable (X caused Y)
- [ ] Fewer repeated mistakes

---

## Troubleshooting

### Bot Isn't Running Metacognitive Checks

**Possible causes:**
- Instructions not explicit enough (make them more specific)
- Too busy with primary tasks (add explicit prompts)
- Check is getting skipped (make it mandatory in loop)

**Fix:** Make the metacognitive check the LAST step before any response is delivered. Frame it as non-optional.

### Bot Is Over-Modifying Files

**Possible causes:**
- Threshold too low
- Not waiting to verify changes
- Making changes without clear trigger

**Fix:** Add rule: "Only modify if the same issue occurs twice" or "Only modify after analysis, not immediately."

### Logs Are Empty

**Possible causes:**
- Logging step being skipped
- Wrong file paths
- Bot doesn't realize it should log

**Fix:** Make logging explicit: "After every analysis, write to [specific path]."

### No Improvement Visible

**Possible causes:**
- Changes aren't addressing root causes
- Changes aren't specific enough
- Verification isn't happening

**Fix:** Require root cause analysis before any change. Make verification mandatory.

---

## Maintenance

### Weekly
- Review the modifications log
- Prune outdated patterns
- Verify recent changes are working

### Monthly
- Review overall improvement trajectory
- Archive old analysis logs
- Update the pattern library

### Quarterly
- Major review of all metacognitive processes
- Consider template updates/refinements
- Share learnings if in a multi-bot setup

---

## Advanced: Multi-Bot Metacognition

If you have multiple bots, consider:

1. **Shared pattern library** - Learnings from one bot can help others
2. **Cross-bot analysis** - One bot analyzes another's outputs
3. **Centralized modifications log** - Track changes across all bots

This requires careful access control but can accelerate improvement.

---

## Final Notes

- **Start simple** - Don't over-engineer. Let complexity emerge from need.
- **Trust the process** - Initial improvements may be small; they compound.
- **Iterate on the template** - If something doesn't work, change it.
- **Document what you learn** - Your experience helps others.

---

_This template is a starting point. The best metacognitive system is the one you actually use._
