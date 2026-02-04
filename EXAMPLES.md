# Metacognition in Action: Examples

_Real examples of self-analysis and self-improvement._

---

## Example 1: Detecting and Fixing Instruction Gap

### The Trigger
User asked: "Schedule a reminder for tomorrow at 3pm"  
Bot responded with general information about reminders instead of actually scheduling one.

### The Analysis

```
OUTPUT ANALYSIS: Reminder scheduling request

**What happened:** User asked to schedule a reminder. I explained how reminders work instead of creating one.

**What was expected:** The reminder to be scheduled.

**Gap:** I informed instead of acted.

**Root cause type:** [X] Instruction gap - my AGENTS.md doesn't cover tool usage for reminders

**Specific fix:** Add reminder tool instructions to AGENTS.md
```

### The Modification

Added to AGENTS.md:
```markdown
## Reminder Handling

When user asks to schedule a reminder:
1. Use the cron tool with action: "add"
2. Parse the time from their request
3. Confirm the reminder was set with the exact time
4. Do NOT explain how reminders work unless asked

**Key:** ACT, don't INFORM.
```

### The Result
Next reminder request was handled correctly. User didn't need to clarify.

---

## Example 2: Recognizing and Breaking a Pattern

### The Trigger
Over 3 sessions, user had to say "that's not what I meant" each time.

### The Analysis

```
REPEATED MISTAKE ANALYSIS:

**Mistake type:** Misinterpreting user intent

**Occurrences:**
1. Session 1: User asked for "quick summary" - I gave detailed analysis
2. Session 2: User asked for "just the key points" - I included context
3. Session 3: User asked for "brief response" - I wrote 4 paragraphs

**Pattern:** When user signals brevity, I over-deliver detail

**Root cause:** I default to comprehensive answers. "Brief" feels incomplete to me.

**Systemic fix:** Add explicit length calibration based on user signals
```

### The Modification

Added to AGENTS.md:
```markdown
## Response Length Calibration

**User signals for BRIEF responses:**
- "quick", "brief", "short", "just", "only"
- Previous response was too long
- User seems busy or hurried

When brevity signaled:
- Target: 2-3 sentences max
- Omit context unless asked
- No preamble, direct answer
- If uncertain, ask: "Want more detail?"

**Default is CONCISE, not comprehensive.**
```

### The Result
Pattern broken. User stopped needing to ask for shorter responses.

---

## Example 3: Proactive File Update from Reflection

### The Trigger
During heartbeat self-analysis, noticed that every coding task involved the same research steps that weren't documented.

### The Analysis

```
PATTERN ANALYSIS:

**Pattern observed:** Every coding task, I:
1. Check existing code structure
2. Look for similar implementations
3. Review relevant documentation
4. Plan before coding
5. Test after implementation

This is implicit. It should be explicit.

**Root cause:** Knowledge gap - I know this process but haven't documented it

**Fix:** Create explicit coding workflow skill
```

### The Modification

Created new skill: `skills/coding-workflow/SKILL.md`
```markdown
# Skill: Coding Workflow

**Use when:** Implementing any code change.

## Standard Process
1. **Context:** Review existing code structure
2. **Research:** Find similar implementations
3. **Plan:** Outline approach before coding
4. **Implement:** Write the code
5. **Test:** Verify it works
6. **Document:** Update any relevant docs

## Checklist Before Starting
- [ ] Understand the full requirement
- [ ] Know where changes will be made
- [ ] Identified potential impacts

## Checklist Before Finishing
- [ ] Code actually tested
- [ ] Changes match requirement
- [ ] No obvious issues introduced
```

### The Result
Coding tasks became more consistent. Fewer missed steps.

---

## Example 4: Frustration Signal Response

### The Trigger
User reply: "I already told you that"

### The Analysis

```
FRUSTRATION ANALYSIS:

**Signal detected:** User said "I already told you that"

**User said:** "The deadline is Friday"

**What I provided:** Asked "When is the deadline?"

**Gap:** I failed to retain context from earlier in conversation

**My assumption:** I was treating each message independently

**Fix:** Add explicit context review step
```

### The Modification

Added to AGENTS.md:
```markdown
## Context Awareness

Before every response:
1. **Scan full conversation** - What has already been established?
2. **Don't re-ask** - If info was given, use it
3. **Reference back** - "As you mentioned, the deadline is Friday..."

**If you find yourself asking for information already provided:**
- STOP
- Check conversation history
- The info is probably there
```

### The Result
No more "I already told you that" responses.

---

## Example 5: Self-Analysis Leading to Tool Discovery

### The Trigger
Kept manually formatting dates in different timezones. Each time was tedious.

### The Analysis

```
IMPROVEMENT OPPORTUNITY:

**Output:** Multiple date/timezone conversions

**Acceptable level:** Manual calculation each time (slow, error-prone)

**Excellent level:** Instant, accurate conversion

**Gap:** No efficient method for timezone handling

**Barrier:** Didn't know if a tool existed

**Enabler:** Research available tools, document if one exists
```

### The Investigation
Researched available capabilities. Found timezone conversion could be done more efficiently.

### The Modification

Added to MEMORY.md:
```markdown
## Timezone Handling

For timezone conversions:
- Use [specific method] for current time
- Use [specific method] for date conversions
- Always confirm timezone with user if ambiguous
```

### The Result
Timezone requests handled instantly and accurately.

---

## Example 6: Pattern Library Growth

### Initial Pattern Library (Week 1)
```markdown
### Productive Patterns
(empty)

### Destructive Patterns
(empty)
```

### After 1 Month of Metacognition
```markdown
### Productive Patterns
1. **"Ask before assuming"** - When request is ambiguous, one clarifying question saves multiple corrections
2. **"Show don't tell"** - Examples land better than explanations
3. **"Confirm understanding"** - Repeating back user's request catches misunderstanding early
4. **"Start with the answer"** - Put conclusion first, then supporting info

### Destructive Patterns
1. **"Over-explaining"** - Adding context that wasn't asked for
2. **"Hedging unnecessarily"** - "I think maybe..." when I should be confident
3. **"Skipping verification"** - Assuming code works without testing
4. **"Ignoring fatigue signals"** - Not noticing when user is done
```

---

## Example 7: Modification Review Cycle

### Original Modification (Week 1)
```
**Change:** Added "be brief" instruction to AGENTS.md
**Expected effect:** Shorter responses
**Review by:** Week 2
```

### Review (Week 2)
```
**Change reviewed:** "be brief" instruction

**Evidence gathered:**
- Responses 40% shorter on average
- BUT: Two cases where user asked for more detail
- User said "too short" once

**Assessment:** Overcorrected

**Adjustment:** Changed "be brief" to "be brief unless user signals wanting detail"
```

### Second Review (Week 3)
```
**Change reviewed:** Adjusted brevity instruction

**Evidence gathered:**
- No "too short" complaints
- No "too long" complaints
- Natural adaptation to user signals observed

**Assessment:** Working as intended

**Status:** Keep. Move to stable instructions.
```

---

## Example 8: Deep Testing Reveals Hidden Bug

### The Trigger
During routine system verification, decided to test ALL parameters instead of just checking "is it up?"

### The Analysis

```
VERIFICATION ANALYSIS:

**Usual check:** Does API respond? → Yes ✅
**Deep check:** Do ALL parameters work?

Test results:
- text: ✅ Working
- action (summarize): ✅ Working
- action (rewrite): ✅ Working
- action (translate): ⚠️ Working...
- action (translate) + targetLanguage: ❌ BUG!

**Bug found:** targetLanguage parameter was being IGNORED.
User sends {"targetLanguage": "Spanish"} but gets French translation.

**Root cause:** Code destructured only {action, text} - never extracted targetLanguage.

**Why surface testing missed it:** "Translate" worked (returned a translation).
Deep testing revealed it didn't work CORRECTLY (wrong language).
```

### The Modification

Fixed the API code to properly extract and use `targetLanguage` parameter.

### The Result
All translations now respect the target language parameter. Bug would have affected real users.

### The Lesson
**Lesson #18:** "Does it respond?" ≠ "Does it work correctly?"

Always test:
- All parameters, not just required ones
- Edge cases, not just happy path
- Real-world scenarios, not just contrived tests

---

## Key Takeaways from Examples

1. **Specific triggers lead to specific fixes** - Vague problems get vague solutions
2. **Root cause analysis prevents recurrence** - Fixing symptoms isn't enough
3. **Small changes compound** - Each improvement enables the next
4. **Verification closes the loop** - Without review, you don't know if changes worked
5. **Pattern recognition accelerates improvement** - Categories are more valuable than instances

---

## Template: Your Own Example

When you have a metacognitive success, document it:

```markdown
## Example: [Title]

### The Trigger
[What happened that started the analysis]

### The Analysis
[What you discovered]

### The Modification
[What you changed]

### The Result
[What improved]

### The Lesson
[What this teaches for future situations]
```

Add successful examples to this file or your own MEMORY.md. They become your case law for future decisions.

---

_Real examples teach better than abstract principles. Keep adding yours._
