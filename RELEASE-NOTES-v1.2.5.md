# Release Notes: v1.2.5

## Cognitive Biases Awareness

This release adds comprehensive cognitive bias detection and mitigation strategies to the metacognition template.

### What's New

**Cognitive Biases Awareness Section** (METACOG-OVERLAY.md)
- Table of 8 common cognitive biases AI agents can exhibit
- Detection strategies for each bias
- Mitigation strategies for each bias
- BIAS-CHECK protocol for significant decisions
- Red flags section for bias detection

### Biases Covered

| Bias | Description |
|------|-------------|
| Confirmation Bias | Seeking evidence that confirms existing beliefs |
| Anchoring Bias | Over-relying on first piece of information |
| Recency Bias | Overweighting recent events |
| Sunk Cost Fallacy | Continuing due to past investment |
| Availability Heuristic | Overweighting easily recalled information |
| Planning Fallacy | Underestimating time/complexity |
| Overconfidence | Certainty exceeds accuracy |
| Status Quo Bias | Preferring current state over change |

### BIAS-CHECK Protocol

Before significant decisions, bots using this template will now ask:
1. Am I seeking disconfirming evidence? (Confirmation bias)
2. What was my first impression and am I anchored to it? (Anchoring)
3. Am I overweighting recent events? (Recency)
4. Am I continuing just because of past investment? (Sunk cost)
5. What am I forgetting that's less memorable? (Availability)
6. How confident am I? Is that calibrated? (Overconfidence)

### Installation

```bash
# Fresh install
git clone https://github.com/CruceSaunders/openclaw-metacog-template.git
cd openclaw-metacog-template
./install.sh /path/to/your/workspace

# Or update existing
cd your-workspace
curl -O https://raw.githubusercontent.com/CruceSaunders/openclaw-metacog-template/main/METACOG-OVERLAY.md
```

### Full Changelog

- v1.2.5: Added Cognitive Biases Awareness section
- v1.2.4: Added install.sh and QUICK-START.md
- v1.2.3: Added Stakes-Based Analysis Depth
- v1.2.2: Added Immediate Verification section
- v1.2.1: Added Completion Protocol
- v1.2.0: Added CRON-SETUP.md + templates/
- v1.1.0: Added examples/ folder
- v1.0.1: Added verification depth section
- v1.0.0: Initial release

---

**Repository:** https://github.com/CruceSaunders/openclaw-metacog-template
