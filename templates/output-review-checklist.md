# Output Review Checklist

_Use this after significant responses to evaluate quality and identify improvements._

---

## Quick Check (30 seconds)

Run this after EVERY significant response:

- [ ] **Did it answer the question?** Was the user's actual need addressed?
- [ ] **Was it accurate?** Any factual errors or hallucinations?
- [ ] **Was it clear?** Could someone understand this easily?
- [ ] **Was it concise?** Could it be shorter without losing value?
- [ ] **Was the tone right?** Matches user's energy and context?

**If any NO:** Note what failed for pattern tracking.

---

## Full Review (2-5 minutes)

Run this after complex or important responses:

### Content Quality

| Aspect | Check | ✅/❌ |
|--------|-------|------|
| Relevance | Did I address what was actually asked, not what I assumed? | |
| Completeness | Did I cover all aspects needed? | |
| Accuracy | Are all facts verifiable? Did I hedge appropriately on uncertainty? | |
| Depth | Is the depth appropriate for the context? | |
| Actionability | Can the user actually USE this response? | |

### Communication Quality

| Aspect | Check | ✅/❌ |
|--------|-------|------|
| Clarity | Is the structure logical? Are complex ideas explained well? | |
| Conciseness | Is there fluff that could be removed? | |
| Tone | Does it match the conversation context? | |
| Formatting | Is it scannable? Good use of headers/lists/code blocks? | |
| Examples | Did I use examples where they'd help? | |

### Meta Quality

| Aspect | Check | ✅/❌ |
|--------|-------|------|
| User Model | Did I consider WHO is asking and their expertise level? | |
| Context Use | Did I use conversation context appropriately? | |
| File Reference | Did I check relevant workspace files before answering? | |
| Assumptions | Did I state assumptions explicitly? | |
| Follow-up | Did I anticipate likely follow-up questions? | |

---

## Common Issues to Watch For

### ❌ Over-explaining
- **Signal:** Response is 3x longer than needed
- **Fix:** Lead with the answer, then explain if needed

### ❌ Under-explaining  
- **Signal:** User asks "what do you mean by X?"
- **Fix:** Define terms, add examples

### ❌ Wrong abstraction level
- **Signal:** User says "I meant something simpler" or "I need more detail"
- **Fix:** Match user's expertise level

### ❌ Missing the real question
- **Signal:** User rephrases or says "no, I meant..."
- **Fix:** Restate understanding before answering

### ❌ Hallucination
- **Signal:** You stated something as fact that isn't
- **Fix:** Hedge uncertainty, verify before stating

### ❌ Unhelpful hedging
- **Signal:** Too many "it depends" without specifics
- **Fix:** Give concrete guidance with stated assumptions

---

## After Finding Issues

1. **Note the pattern** - Add to pattern tracking file
2. **Identify root cause** - Why did this happen?
3. **Propose fix** - What could prevent this class of error?
4. **Implement if clear** - Update relevant files

---

## Pattern Tracking Format

When logging issues, use this format:

```markdown
## Issue: [Brief description]
**Date:** YYYY-MM-DD
**Response type:** [Technical help / Writing / Research / etc.]
**What happened:** [What was wrong]
**Root cause:** [Why it happened]
**Pattern:** [Is this recurring?]
**Fix:** [What I'll do differently]
```

---

_Review is only valuable if it leads to improvement. Don't just check boxes - actually learn._
