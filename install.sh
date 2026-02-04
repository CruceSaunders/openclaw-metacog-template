#!/bin/bash
# Metacognition Template Installer for OpenClaw Bots
# Usage: ./install.sh /path/to/your/bot/workspace

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║     Metacognition Template Installer v1.2.4               ║"
echo "║     Give any OpenClaw bot the ability to self-improve     ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

# Check for target directory
if [ -z "$1" ]; then
    echo -e "${RED}Error: Please provide target workspace path${NC}"
    echo "Usage: ./install.sh /path/to/your/bot/workspace"
    echo ""
    echo "Example: ./install.sh ~/clawd"
    exit 1
fi

TARGET="$1"

# Verify target exists
if [ ! -d "$TARGET" ]; then
    echo -e "${RED}Error: Target directory does not exist: $TARGET${NC}"
    exit 1
fi

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "${YELLOW}Installing metacognition template to: $TARGET${NC}"
echo ""

# Step 1: Create memory structure
echo "📁 Creating memory structure..."
mkdir -p "$TARGET/memory/self-analysis/output-reviews"
touch "$TARGET/memory/self-analysis/pattern-log.md"
touch "$TARGET/memory/self-analysis/modifications.md"
touch "$TARGET/memory/self-analysis/improvements.md"

# Initialize pattern-log.md if empty
if [ ! -s "$TARGET/memory/self-analysis/pattern-log.md" ]; then
    cat > "$TARGET/memory/self-analysis/pattern-log.md" << 'EOF'
# Pattern Log

Track recurring patterns in your outputs and behavior.

---

## Productive Patterns (Amplify)

| Pattern | Evidence | First Seen |
|---------|----------|------------|
| _Add patterns that lead to good outcomes_ | | |

---

## Destructive Patterns (Eliminate)

| Pattern | Evidence | First Seen |
|---------|----------|------------|
| _Add patterns that waste time or cause issues_ | | |

---

_Update this file as you notice patterns in your behavior._
EOF
fi

# Initialize modifications.md if empty
if [ ! -s "$TARGET/memory/self-analysis/modifications.md" ]; then
    cat > "$TARGET/memory/self-analysis/modifications.md" << 'EOF'
# Self-Modifications Log

Track every change you make to your own files.

---

## Log Format

```
### [DATE] - [FILE MODIFIED]
**Trigger:** What revealed this gap?
**Change:** What was changed?
**Expected Effect:** What should improve?
**Review Date:** When to check if it worked?
**Status:** Pending review / Verified working / Reverted
```

---

## Modifications

_Add entries below as you modify your files._

EOF
fi

# Initialize improvements.md if empty
if [ ! -s "$TARGET/memory/self-analysis/improvements.md" ]; then
    cat > "$TARGET/memory/self-analysis/improvements.md" << 'EOF'
# Improvements Log

Track ideas and implemented improvements.

---

## Ideas (Not Yet Implemented)

| Idea | Category | Priority | Noted |
|------|----------|----------|-------|
| | | | |

---

## Implemented

| Improvement | Result | Date |
|-------------|--------|------|
| | | |

---

_Ideas become implementations. Implementations become habits._
EOF
fi

echo -e "${GREEN}✓ Memory structure created${NC}"

# Step 2: Copy core documentation
echo "📄 Copying core documentation..."
cp "$SCRIPT_DIR/METACOG-OVERLAY.md" "$TARGET/"
cp "$SCRIPT_DIR/EXAMPLES.md" "$TARGET/memory/self-analysis/"
echo -e "${GREEN}✓ Core documentation copied${NC}"

# Step 3: Copy skills
echo "🔧 Installing self-analyze skill..."
mkdir -p "$TARGET/skills/self-analyze"
cp "$SCRIPT_DIR/skills/self-analyze/SKILL.md" "$TARGET/skills/self-analyze/"
echo -e "${GREEN}✓ Self-analyze skill installed${NC}"

# Step 4: Copy templates
echo "📋 Copying templates..."
mkdir -p "$TARGET/memory/self-analysis/templates"
cp "$SCRIPT_DIR/templates/"*.md "$TARGET/memory/self-analysis/templates/" 2>/dev/null || true
echo -e "${GREEN}✓ Templates copied${NC}"

# Step 5: Backup and update AGENTS.md
if [ -f "$TARGET/AGENTS.md" ]; then
    echo "📝 Backing up AGENTS.md..."
    cp "$TARGET/AGENTS.md" "$TARGET/AGENTS.md.backup.$(date +%Y%m%d%H%M%S)"
    
    echo ""
    echo -e "${YELLOW}⚠️  MANUAL STEP REQUIRED:${NC}"
    echo "   Add the contents of AGENTS-ADDITIONS.md to your AGENTS.md"
    echo "   Reference: $SCRIPT_DIR/AGENTS-ADDITIONS.md"
else
    echo -e "${YELLOW}Note: No AGENTS.md found. You'll need to create one.${NC}"
fi

# Step 6: Backup and update HEARTBEAT.md
if [ -f "$TARGET/HEARTBEAT.md" ]; then
    echo "📝 Backing up HEARTBEAT.md..."
    cp "$TARGET/HEARTBEAT.md" "$TARGET/HEARTBEAT.md.backup.$(date +%Y%m%d%H%M%S)"
    
    echo -e "${YELLOW}⚠️  MANUAL STEP REQUIRED:${NC}"
    echo "   Add the contents of HEARTBEAT-ADDITIONS.md to your HEARTBEAT.md"
    echo "   Reference: $SCRIPT_DIR/HEARTBEAT-ADDITIONS.md"
fi

# Final summary
echo ""
echo "═══════════════════════════════════════════════════════════"
echo -e "${GREEN}✓ Installation complete!${NC}"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "Files installed:"
echo "  📁 $TARGET/memory/self-analysis/"
echo "  📁 $TARGET/skills/self-analyze/"
echo "  📄 $TARGET/METACOG-OVERLAY.md"
echo ""
echo "Next steps:"
echo "  1. Review METACOG-OVERLAY.md (your bot's metacognition guide)"
echo "  2. Add AGENTS-ADDITIONS.md content to your AGENTS.md"
echo "  3. Add HEARTBEAT-ADDITIONS.md content to your HEARTBEAT.md"
echo "  4. Run first self-analysis: 'Run a self-analysis on your recent outputs'"
echo ""
echo "Full documentation: $SCRIPT_DIR/README.md"
echo "Integration guide:  $SCRIPT_DIR/INTEGRATION-GUIDE.md"
echo ""
echo -e "${GREEN}🧠 Your bot is now ready to think about its thinking!${NC}"
echo ""
