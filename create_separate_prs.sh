#!/bin/bash

# Script to create separate PRs from the large PR #3826
# This script creates focused branches for each feature

echo "🚀 Creating separate PRs from PR #3826..."

# Step 1: Ensure we're on the main branch and it's up to date
echo "📋 Step 1: Updating main branch..."
git checkout main
git pull origin main

# Step 2: Create PR 3 - Transparent Window Settings
echo "🎨 Step 2: Creating PR 3 - Transparent Window Settings..."
git checkout -b feature/transparent-window-settings

# Copy relevant files for transparent windows
echo "📁 Copying transparent window files..."
# These files will be manually copied from the current branch

# Step 3: Create PR 4 - Chat History Deletion
echo "🗑️ Step 3: Creating PR 4 - Chat History Deletion..."
git checkout main
git checkout -b feature/chat-history-deletion

# Copy relevant files for chat history deletion
echo "📁 Copying chat history deletion files..."
# These files will be manually copied from the current branch

echo "✅ Branches created successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Switch to feature/transparent-window-settings"
echo "2. Copy relevant files from current branch"
echo "3. Create PR with PR3_TRANSPARENT_WINDOWS.md description"
echo ""
echo "4. Switch to feature/chat-history-deletion"
echo "5. Copy relevant files from current branch"
echo "6. Create PR with PR4_CHAT_HISTORY_DELETION.md description"
echo ""
echo "🔗 Files to copy for PR 3:"
echo "- ui/desktop/src/components/GooseSidebar/ThemeSelector.tsx"
echo "- ui/desktop/src/main.ts (transparency parts)"
echo "- ui/desktop/src/styles/main.css (transparency styles)"
echo ""
echo "🔗 Files to copy for PR 4:"
echo "- ui/desktop/src/components/sessions/DeleteSessionModal.tsx"
echo "- ui/desktop/src/components/sessions/SessionListView.tsx"
echo "- ui/desktop/src/sessions.ts"
echo "- ui/desktop/src/api/ (deletion related)" 