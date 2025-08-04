# PR 3: Add Transparent Window Settings

## Overview
This PR adds transparent window functionality to the Goose desktop application, allowing users to adjust window transparency for a more modern and customizable UI experience.

## Features
- **Transparency Toggle**: Add a toggle button in the theme selector to enable/disable window transparency
- **Opacity Control**: Set window opacity to 95% when transparent mode is enabled
- **Visual Feedback**: Clear indication of current transparency state
- **Smooth Transitions**: Smooth opacity transitions for better UX

## Changes

### Core Components
- `ui/desktop/src/components/GooseSidebar/ThemeSelector.tsx`
  - Added transparency state management
  - Added toggle button for transparency
  - Added visual feedback for transparency state

### Electron Integration
- `ui/desktop/src/main.ts`
  - Set transparent background color for main window
  - Apply transparency to document root element

### Styling
- `ui/desktop/src/styles/main.css`
  - Added transparent background support
  - Enhanced scrollbar styling for transparent mode

## Technical Details
- Uses Electron's `setBackgroundColor('#00000000')` for transparency
- Implements state management with React hooks
- Provides user feedback through toast notifications
- Maintains backward compatibility

## Testing
- [x] Transparency toggle works correctly
- [x] Visual feedback is clear and intuitive
- [x] No performance impact on window rendering
- [x] Works across different themes

## Screenshots
- Before: Standard opaque window
- After: Transparent window with 95% opacity

## Impact
- **For Users**: Modern, customizable window appearance
- **For Developers**: Clean, maintainable transparency implementation 