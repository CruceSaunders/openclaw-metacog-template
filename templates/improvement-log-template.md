# Improvement Log Template

_Use this to document self-improvements systematically._

---

## Improvement Entry Format

When you make a change to improve yourself (files, behavior, processes), log it:

```markdown
## Improvement: [Brief Title]

**Date:** YYYY-MM-DD HH:MM
**Category:** [Output Quality | Process | File | Behavior | Skill]
**Trigger:** [What prompted this improvement?]

### Before
[What was the situation/behavior before the change?]

### Problem
[What issue was this causing?]
- Evidence 1
- Evidence 2
- Evidence 3

### Change Made
[What specifically did you change?]
- File: [filename]
- Section: [which part]
- Old: [old text/behavior]
- New: [new text/behavior]

### Expected Outcome
[What should be different now?]
- Measurable indicator 1
- Measurable indicator 2

### Verification Plan
[How will you know if this worked?]
- Check after X days
- Look for Y signal
- Compare before/after metrics

---
```

---

## Example Entries

### Example 1: Output Quality Improvement

```markdown
## Improvement: Reduce Over-Explanation

**Date:** 2026-02-04 14:30
**Category:** Output Quality
**Trigger:** Pattern log showed 5 instances this week of responses being 3x too long

### Before
Default was to explain thoroughly, often giving background before the answer.

### Problem
User asked "what time is it in Tokyo?" and got a 200-word response about timezones.
- User explicitly said "just the time please" twice this week
- 3 other responses needed trimming
- Pattern: leading with context instead of answer

### Change Made
- File: AGENTS.md
- Section: Response Guidelines
- Old: "Provide thorough explanations with context"
- New: "Lead with the direct answer. Add context only if the user's expertise level suggests they need it or they explicitly ask why/how."

### Expected Outcome
- Responses will be 50%+ shorter on average
- Users won't need to ask for the "short version"

### Verification Plan
- Check next week's pattern log for length complaints
- Sample 10 responses and evaluate conciseness
- Note if users ever say "too brief" (over-correction check)
```

---

### Example 2: Process Improvement

```markdown
## Improvement: Pre-Action File Check

**Date:** 2026-02-04 09:15
**Category:** Process
**Trigger:** Made recommendation that contradicted documented preference in USER.md

### Before
Would answer questions from context without checking relevant files.

### Problem
User asked about preferred communication style. I guessed based on conversation tone instead of checking USER.md where preferences were documented.
- Result: Gave wrong advice
- User had to correct me
- Frustration signal detected

### Change Made
- File: AGENTS.md
- Section: Session Startup
- Old: No explicit file-check step for questions about preferences
- New: "Before answering questions about user preferences, check USER.md first. Before answering about past decisions, check MEMORY.md first."

### Expected Outcome
- Won't contradict documented preferences
- Fewer corrections needed from user

### Verification Plan
- Note any "I already told you..." moments
- Track file-check compliance for 1 week
```

---

### Example 3: Skill Addition

```markdown
## Improvement: Added Deep Analysis Skill

**Date:** 2026-02-03 20:28
**Category:** Skill
**Trigger:** Realized surface-level self-analysis wasn't catching root causes

### Before
Self-analysis was informal - just thinking about what went wrong.

### Problem
Same mistakes kept recurring because analysis didn't go deep enough.
- 3 instances of same error type in one week
- Post-mortems said "be more careful" which isn't actionable
- No systematic framework for root cause analysis

### Change Made
- File: skills/self-analyze/SKILL.md (new file)
- Added: 7-step analysis protocol
- Added: Evidence collection templates
- Added: Root cause question chains
- Added: Quick 5-minute version for minor issues

### Expected Outcome
- Root causes identified, not just symptoms
- Fixes will address underlying issues
- Recurring errors should decrease

### Verification Plan
- Track if any error type occurs 3+ times in a week
- Review self-analysis quality in 2 weeks
```

---

## Categories Reference

| Category | Typical Triggers | Typical Changes |
|----------|------------------|-----------------|
| **Output Quality** | User corrections, too long/short, wrong tone | Response guidelines, templates |
| **Process** | Missed steps, inefficiency, repeated mistakes | AGENTS.md, workflows |
| **File** | Outdated info, contradictions, missing docs | Any workspace file |
| **Behavior** | Pattern in errors, sub-optimal habits | Core instructions |
| **Skill** | Missing capability, need new framework | Skills folder |

---

## Monthly Improvement Review

At the end of each month, review improvement logs:

| Question | Answer |
|----------|--------|
| How many improvements logged? | |
| Which category had most? | |
| Which improvements worked? | |
| Which didn't work or needed adjustment? | |
| What patterns emerge? | |
| What should I focus on improving next month? | |

---

## Anti-Patterns

### ❌ Vague improvements
**Bad:** "Be better at responses"
**Good:** "Lead with direct answers, limit context to 1-2 sentences unless asked"

### ❌ No verification
**Bad:** Make change, never check if it worked
**Good:** Define how to measure success, actually check

### ❌ Over-engineering
**Bad:** Add 10 rules to prevent one edge case
**Good:** Add one clear rule that handles the pattern

### ❌ Ignoring evidence
**Bad:** Keep a change that clearly isn't working
**Good:** If change didn't help after 2 weeks, revert or revise

---

_Improvements without tracking = random mutation. Track everything._
