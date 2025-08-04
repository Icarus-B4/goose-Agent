# PR Splitting Guide - From PR #3826 to Focused PRs

## Overview
This guide helps you split the large PR #3826 into smaller, focused PRs as requested by the maintainers.

## Current Situation
- **Problem**: PR #3826 is too large and contains multiple unrelated features
- **Solution**: Split into focused PRs, one per feature
- **Feedback**: Maintainers want smaller, reviewable PRs

## PR 3: Transparent Window Settings

### Files to Include
```
ui/desktop/src/components/GooseSidebar/ThemeSelector.tsx
ui/desktop/src/main.ts (transparency-related changes only)
ui/desktop/src/styles/main.css (transparency styles only)
```

### Steps
1. **Create new branch**:
   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/transparent-window-settings
   ```

2. **Copy relevant changes** from current branch:
   ```bash
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/components/GooseSidebar/ThemeSelector.tsx
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/main.ts
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/styles/main.css
   ```

3. **Review and clean up**:
   - Remove any unrelated changes
   - Keep only transparency-related modifications
   - Ensure clean, focused commits

4. **Create PR** with description from `PR3_TRANSPARENT_WINDOWS.md`

## PR 4: Chat History Deletion

### Files to Include
```
ui/desktop/src/components/sessions/DeleteSessionModal.tsx
ui/desktop/src/components/sessions/SessionListView.tsx
ui/desktop/src/sessions.ts
ui/desktop/src/api/types.gen.ts (deletion-related types)
ui/desktop/src/api/sdk.gen.ts (deletion-related functions)
```

### Steps
1. **Create new branch**:
   ```bash
   git checkout main
   git checkout -b feature/chat-history-deletion
   ```

2. **Copy relevant changes**:
   ```bash
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/components/sessions/DeleteSessionModal.tsx
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/components/sessions/SessionListView.tsx
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/sessions.ts
   git checkout feature/typescript-fixes-rebased -- ui/desktop/src/api/
   ```

3. **Review and clean up**:
   - Remove any unrelated changes
   - Keep only deletion-related modifications
   - Ensure proper error handling and security

4. **Create PR** with description from `PR4_CHAT_HISTORY_DELETION.md`

## Best Practices for New PRs

### 1. **Single Responsibility**
- Each PR should address only one feature or fix
- Keep changes focused and minimal

### 2. **Clear Descriptions**
- Use English descriptions (not German)
- Include clear overview and technical details
- List all affected files

### 3. **Clean Git History**
- Use meaningful commit messages
- Avoid large, unrelated changes
- Keep commits atomic and focused

### 4. **No Binary Files**
- Don't include unnecessary binary files
- Keep PRs lightweight and reviewable

### 5. **Proper Testing**
- Include testing information
- Document any breaking changes
- Provide screenshots when relevant

## Next Steps

1. **Close PR #3826** - It's too large and problematic
2. **Create PR 3** - Transparent window settings
3. **Create PR 4** - Chat history deletion
4. **Create remaining PRs** for other features:
   - TypeScript fixes
   - Code artifacts integration
   - MCP developer modules
   - Desktop app integration

## Success Criteria

- ✅ Each PR is focused on one feature
- ✅ Descriptions are in English
- ✅ No unnecessary binary files
- ✅ Clean, reviewable changes
- ✅ Proper testing documentation
- ✅ Maintainer-friendly format

## Benefits

- **Easier Reviews**: Smaller, focused changes
- **Faster Merging**: Less controversial changes
- **Better Quality**: More attention to detail
- **Professional Approach**: Follows open-source best practices 