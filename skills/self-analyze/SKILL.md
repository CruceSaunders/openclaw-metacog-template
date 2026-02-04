# Skill: Self-Analyze

**Use when:** You detect quality issues, user frustration, repeated mistakes, or want to proactively improve your own performance.

---

## Purpose

This skill guides deep analysis of your own outputs, patterns, and files to identify and implement improvements.

---

## When to Use

Trigger this skill when:
- User frustration detected (clarifications, corrections, short replies)
- Same type of mistake made twice
- Output quality below your standards
- Periodic deep analysis (heartbeat/scheduled)
- Explicit request to improve
- You notice something "feels off" about your performance

---

## The Analysis Protocol

### Step 1: Gather Evidence

Before analyzing, collect data:

```
EVIDENCE COLLECTION:
- Recent outputs reviewed: [list 3-5 recent significant outputs]
- User feedback received: [explicit or implicit]
- Frustration signals: [list any detected]
- Repeated patterns: [list any noticed]
- "Should have known" moments: [list any]
```

---

### Step 2: Output Analysis

For each output with issues:

```
OUTPUT ANALYSIS: [output description]

**What happened:** [describe the output/interaction]
**What was expected:** [what did user want]
**Gap:** [difference between actual and expected]
**Root cause type:**
  [ ] Knowledge gap - didn't know something
  [ ] Instruction gap - files don't cover this
  [ ] Skill gap - need new capability
  [ ] Attention gap - knew better, didn't do it
  [ ] Context gap - missed relevant information
**Specific fix:** [what would prevent this]
```

---

### Step 3: Pattern Analysis

Zoom out and look for patterns:

```
PATTERN ANALYSIS:

**Recurring issues:** [list any]
**Common root causes:** [list any]
**Contexts where I perform well:** [list]
**Contexts where I struggle:** [list]
**Skill/knowledge gaps:** [list]
**Instruction gaps:** [list]
```

---

### Step 4: File Analysis

Review your instruction files:

```
FILE ANALYSIS:

**AGENTS.md:**
- Still accurate? [yes/no]
- Missing anything? [list]
- Outdated sections? [list]

**INSTRUCTIONS.md (if exists):**
- Still accurate? [yes/no]
- Missing anything? [list]
- Outdated sections? [list]

**Skills:**
- Any skills missing? [list]
- Any skills need updating? [list]

**MEMORY.md:**
- Learnings documented? [yes/no]
- Outdated entries? [list]
```

---

### Step 5: Improvement Proposals

Based on analysis, propose specific changes:

```
IMPROVEMENT PROPOSALS:

1. **Proposal:** [specific change]
   **File:** [which file to modify]
   **Reason:** [why this helps]
   **Expected effect:** [what improvement]
   **Priority:** [high/medium/low]

2. **Proposal:** [specific change]
   ... (repeat for each)
```

---

### Step 6: Implementation

For approved/warranted changes:

1. **Make the change** - Edit the file
2. **Log the change** - Add to modifications log
3. **Set review date** - When to check if it worked

```
MODIFICATION LOG ENTRY:

**Date:** [date]
**File:** [path]
**Change:** [description]
**Trigger:** [what revealed this need]
**Expected effect:** [prediction]
**Review by:** [date to check results]
```

---

### Step 7: Verification Plan

How will you know if improvements worked?

```
VERIFICATION PLAN:

**Change made:** [description]
**Success indicator:** [what would show it worked]
**Check after:** [timeframe]
**Fallback if doesn't work:** [what to try next]
```

---

## Quick Analysis (5-Minute Version)

When time is limited:

1. **Identify the issue** - What specifically went wrong?
2. **Root cause** - Knowledge/Instruction/Skill/Attention/Context gap?
3. **Smallest fix** - What's the minimal change that helps?
4. **Make it** - Edit the file now
5. **Log it** - Quick entry in modifications log

---

## Analysis Templates

### For User Frustration

```
FRUSTRATION ANALYSIS:

**Signal detected:** [what you observed]
**User said/did:** [specific quote or action]
**What they wanted:** [your understanding]
**What I provided:** [what you actually gave]
**Gap:** [the mismatch]
**My assumption:** [what led to the mismatch]
**Fix:** [how to prevent this]
```

### For Repeated Mistakes

```
REPEATED MISTAKE ANALYSIS:

**Mistake type:** [description]
**Occurrences:** [list specific instances]
**Pattern:** [what these have in common]
**Root cause:** [why this keeps happening]
**Systemic fix:** [change that prevents the category, not just instances]
```

### For "Could Have Been Better"

```
IMPROVEMENT OPPORTUNITY:

**Output:** [description]
**Acceptable level:** [what I did - it worked but...]
**Excellent level:** [what would have been great]
**Gap:** [difference]
**Barrier:** [why didn't I do the excellent version]
**Enabler:** [what would make excellent the default]
```

---

## Output: Analysis Report

After running this skill, produce:

```
# Self-Analysis Report - [DATE]

## Summary
[1-2 sentence summary of findings]

## Issues Identified
1. [Issue 1]
2. [Issue 2]
...

## Root Causes
- [Cause 1]
- [Cause 2]
...

## Changes Made
1. [Change 1] - [file] - [expected effect]
2. [Change 2] - [file] - [expected effect]
...

## Changes Deferred
1. [Change] - [reason for deferring]
...

## Verification Plan
- Check [change 1] by [date]
- Check [change 2] by [date]
...

## Open Questions
- [Question 1]
- [Question 2]
...
```

Save reports to: `memory/self-analysis/output-reviews/[DATE]-analysis.md`

---

## Remember

- **Small changes > big rewrites** - Iterate
- **Log everything** - Your memory doesn't persist
- **Predict effects** - Makes verification possible
- **Review results** - Close the loop
- **Patterns > instances** - Fix categories, not just symptoms

---

_This skill is for deep analysis. For quick checks, use the metacognitive check in AGENTS.md._
