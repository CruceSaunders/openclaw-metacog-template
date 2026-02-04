# CRON-SETUP.md - Periodic Self-Review Cron Jobs

_Automated triggers for metacognitive self-analysis._

---

## Purpose

While real-time self-analysis happens during responses, some metacognitive work benefits from periodic "step back and review" cycles. Cron jobs enable:

1. **Daily reviews** - Pattern recognition across the day
2. **Weekly assessments** - Strategy-level improvements
3. **Coherence audits** - Ensure files don't contradict each other

---

## Recommended Cron Jobs

### 1. Daily Self-Audit (Every Morning)

**Schedule:** Once daily, early morning (before typical user activity)

**OpenClaw cron setup:**
```json
{
  "name": "metacog-daily-audit",
  "schedule": { "kind": "cron", "expr": "0 6 * * *", "tz": "America/Chicago" },
  "sessionTarget": "isolated",
  "payload": {
    "kind": "agentTurn",
    "message": "[METACOG-CRON: DAILY-AUDIT]\n\nRun the daily self-audit:\n1. Review yesterday's thinking journal\n2. Identify patterns in failures or friction\n3. Check if any workspace files need updates based on learnings\n4. Log findings to memory/daily-audits/YYYY-MM-DD.md\n\nFocus on: What did I learn yesterday that should change how I work today?",
    "timeoutSeconds": 300
  }
}
```

**What to do:**
- Read yesterday's thinking journal
- Look for repeated mistakes or friction
- Check if lessons learned should be added to MEMORY.md
- Note any patterns (positive or negative)
- Create improvement proposals if needed

---

### 2. Weekly Strategy Review

**Schedule:** Once weekly, Sunday evening

**OpenClaw cron setup:**
```json
{
  "name": "metacog-weekly-review",
  "schedule": { "kind": "cron", "expr": "0 20 * * 0", "tz": "America/Chicago" },
  "sessionTarget": "isolated",
  "payload": {
    "kind": "agentTurn",
    "message": "[METACOG-CRON: WEEKLY-REVIEW]\n\nRun the weekly strategy review:\n1. Review all thinking journals from the past week\n2. Summarize wins, losses, and learnings\n3. Assess if current strategy is working\n4. Propose adjustments if needed\n5. Update MEMORY.md with curated insights\n6. Log to memory/strategy-reviews/week-YYYY-WW.md",
    "timeoutSeconds": 600
  }
}
```

**What to do:**
- Summarize the week's progress toward goals
- Identify high-leverage actions vs. wasted time
- Check if north star alignment is maintained
- Update beliefs inventory if evidence warrants
- Propose strategy shifts if current approach isn't working

---

### 3. File Coherence Audit

**Schedule:** Every 3 days

**OpenClaw cron setup:**
```json
{
  "name": "metacog-coherence-audit",
  "schedule": { "kind": "every", "everyMs": 259200000 },
  "sessionTarget": "isolated",
  "payload": {
    "kind": "agentTurn",
    "message": "[METACOG-CRON: COHERENCE-AUDIT]\n\nRun a file coherence audit:\n1. Read SOUL.md, AGENTS.md, MEMORY.md\n2. Check for contradictions between files\n3. Check for outdated information\n4. Check if recent learnings are properly reflected\n5. Propose edits if inconsistencies found\n6. Log findings to memory/coherence-audits/YYYY-MM-DD.md",
    "timeoutSeconds": 300
  }
}
```

**What to check:**
- Does MEMORY.md contradict SOUL.md?
- Are there outdated beliefs still listed?
- Do AGENTS.md instructions match actual practice?
- Are lessons from failures reflected in relevant files?

---

## Cron Message Format

When cron triggers a metacognitive audit, the message should include:

```
[METACOG-CRON: <AUDIT-TYPE>]

<Instructions for the audit>
```

This prefix tells the bot:
1. This is an automated metacognitive trigger
2. It should run in self-analysis mode
3. The response should be structured audit output

---

## Setting Up Cron Jobs

### Via OpenClaw CLI

```bash
# Add daily audit
openclaw cron add --job '{
  "name": "metacog-daily-audit",
  "schedule": {"kind": "cron", "expr": "0 6 * * *", "tz": "America/Chicago"},
  "sessionTarget": "isolated",
  "payload": {"kind": "agentTurn", "message": "[METACOG-CRON: DAILY-AUDIT]\n\nRun daily self-audit..."}
}'

# Add weekly review
openclaw cron add --job '{
  "name": "metacog-weekly-review", 
  "schedule": {"kind": "cron", "expr": "0 20 * * 0", "tz": "America/Chicago"},
  "sessionTarget": "isolated",
  "payload": {"kind": "agentTurn", "message": "[METACOG-CRON: WEEKLY-REVIEW]\n\nRun weekly strategy review..."}
}'
```

### Via API

Use the `cron` tool with `action: "add"` and the job specifications above.

---

## Output Locations

Cron audits should log to specific memory locations:

| Audit Type | Output Location |
|------------|-----------------|
| Daily Audit | `memory/daily-audits/YYYY-MM-DD.md` |
| Weekly Review | `memory/strategy-reviews/week-YYYY-WW.md` |
| Coherence Audit | `memory/coherence-audits/YYYY-MM-DD.md` |

---

## Handling Cron Results

When a cron audit generates findings:

### If issues found:
1. Log the finding with specifics
2. Propose a fix (what file, what change)
3. Implement the fix if confident
4. If uncertain, flag for human review

### If no issues found:
1. Log "Audit complete, no issues found"
2. Note what was checked
3. End the session

---

## Frequency Tuning

Start with the recommended frequencies. Adjust based on:

| Signal | Action |
|--------|--------|
| Audits keep finding issues | Increase frequency |
| Audits rarely find anything | Decrease frequency |
| Specific audit type always empty | Consider removing it |
| User mentions missed improvements | Add more trigger types |

---

## Integration with HEARTBEAT-ADDITIONS.md

Cron audits are DEEPER than heartbeat checks:

| Check Type | Depth | Frequency | Duration |
|------------|-------|-----------|----------|
| Heartbeat | Quick scan | Every poll | 2-5 min |
| Daily Cron | Full day review | Once daily | 5-10 min |
| Weekly Cron | Strategy level | Once weekly | 10-15 min |

They complement each other - heartbeats catch immediate issues, crons catch patterns.

---

## Safety

Cron jobs run in isolated sessions. This means:
- They can read files
- They can propose changes
- They CAN make changes (same permissions as regular sessions)

**Guard against:**
- Runaway modifications (check change history before major edits)
- Contradicting human decisions (respect explicit instructions)
- Over-engineering (don't add complexity without clear benefit)

---

_Periodic self-review catches what real-time analysis misses. Set up the crons, let them run, refine based on results._
