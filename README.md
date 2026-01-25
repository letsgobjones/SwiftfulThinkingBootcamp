# Swiftful Thinking Bootcamp

A comprehensive SwiftUI learning project covering fundamental to advanced concepts through practical examples and bootcamp-style tutorials.

## Overview

This project serves as a complete guide to SwiftUI, starting from the very basics of UI construction and progressing to complex data flow, architecture, and iOS-specific features. Each file represents a self-contained lesson or "bootcamp" module.

## Project Structure & Learning Modules

### **Basics & UI Components**
*   **1. ContentView.swift**: The entry point and structure of a basic SwiftUI View.
*   **2. TextBootcamp.swift**: Styling and formatting text, including fonts, weights, and multiline alignment.
*   **3. ShapesBootcamp.swift**: Drawing standard shapes (Circle, Rectangle, Capsule) and manipulating their size and trim.
*   **4. ColorsBootcamp.swift**: Using system colors, custom sets from Assets, and UIColors.
*   **5. GradientsBootcamp.swift**: Implementing Linear, Radial, and Angular gradients.
*   **6. IconsBootcamp.swift**: Using SF Symbols for scalable vector icons.
*   **7. ImageBootcamp.swift**: Rendering images, handling resizing, clipping, and aspect ratios.
*   **8. FrameBootcamp.swift**: Understanding view sizing and alignment with frames.
*   **9. BackgroundAndOverlayBootcamp.swift**: Layering views behind (background) or in front (overlay) of others.

### **Layout Fundamentals**
*   **10. StacksBootcamp.swift**: Organizing views horizontally (HStack), vertically (VStack), and in depth (ZStack).
*   **11. PaddingBootcamp.swift**: Managing whitespace and safe areas around views.
*   **12. SpacerBootcamp.swift**: Using dynamic spacing to push content apart within stacks.
*   **13. InitializerBootcamp.swift**: Customizing View initializers to accept parameters.
*   **14. ForEachBootcamp.swift**: Iterating over data collections to generate dynamic views.
*   **15. ScrollViewBootcamp.swift**: Creating scrollable content areas (vertical and horizontal).
*   **16. GridBootcamp.swift**: Building lazy grids (LazyVGrid, LazyHGrid) for adaptive layouts.
*   **17. SafeAreaBootcamp.swift**: Handling top and bottom safe areas on notched devices.

### **Interactivity & State Management**
*   **18. ButtonsBootcamp.swift**: Creating buttons and handling user tap actions.
*   **19. StateBootcamp.swift**: Managing local view state with `@State`.
*   **20. ExtractedFunctionsBootcamp.swift**: Refactoring logic and UI into private helper functions.
*   **21. ExtractSubviewsBootcamp.swift**: Refactoring complex UI into smaller, reusable View components.
*   **22. BindingBootcamp.swift**: Sharing state between parent and child views using `@Binding`.
*   **23. ConditionalBootcamp.swift**: Showing or hiding views based on boolean state.
*   **24. TernaryBootcamp.swift**: Writing cleaner conditional logic for modifiers using ternary operators.

### **Animations & Transitions**
*   **25. AnimationsBootcamp.swift**: Basic property animations (scale, opacity, rotation).
*   **26. AnimationTimingBootcamp.swift**: Customizing animation curves (easeIn, easeOut, spring).
*   **27. TransitionsBootcamp.swift**: Animating views entering and leaving the screen.
*   **28. SheetsBootcamp.swift**: Presenting modal sheets.
*   **29. PopoverBootcamp.swift**: Displaying popovers (standard and custom).

### **Navigation & Lists**
*   **30. NavigationViewBootcamp.swift**: Setting up navigation hierarchies and titles.
*   **31. ListBootcamp.swift**: Creating scrollable lists of rows, similar to UITableView.
*   **32. AlertBootcamp.swift**: Presenting system alerts with actions.
*   **33. ActionSheetBootcamp.swift**: Displaying bottom sheets for multiple choices.
*   **34. ContextMenuBootcamp.swift**: Adding long-press menus to views.

### **User Input Forms**
*   **35. TextFieldsBootcamp.swift**: Capturing single-line user text input.
*   **36. TextEditorBootcamp.swift**: Handling multi-line text input.
*   **37. ToggleBootcamp.swift**: Creating switches for boolean states.
*   **38. PickerBootcamp.swift**: Selecting options from a list or wheel.
*   **39. ColorPickerBootcamp.swift**: Using the native system color picker.
*   **40. DatePickerBootcamp.swift**: Selecting dates and times.
*   **41. StepperBootcamp.swift**: Incrementing or decrementing values.
*   **42. SliderBootcamp.swift**: Selecting a value from a continuous range.

### **Architecture & Data Flow**
*   **43. TabViewBootcamp.swift**: Creating bottom tab bar navigation and page styles.
*   **44. DarkModeBootcamp.swift**: Adapting UI for light and dark color schemes.
*   **45. DocumentationBootcamp.swift**: Writing documentation comments for code clarity.
*   **46. OnAppearBootcamp.swift**: Triggering actions when a view appears or disappears.
*   **47. IfLetGuardBootcamp.swift**: Safely unwrapping optional data in SwiftUI.
*   **48. TapGestureBootcamp.swift**: Handling custom tap gestures.
*   **49. ModelBootcamp.swift**: Structuring data with custom Models.
*   **50. ViewModelBootcamp.swift**: Implementing the MVVM architecture with `ObservableObject`.
*   **51. EnvironmentObjectBootcamp.swift**: Injecting global dependencies across the app.
*   **52. AppStorageBootcamp.swift**: Persisting simple user settings (UserDefaults wrapper).
*   **53. OnboardingBootcamp/**: A complete mini-app demonstrating a user onboarding flow.

### **Advanced SwiftUI 2.0+ Features**
*   **54. AsyncImageBootcamp.swift**: Loading images from URLs asynchronously.
*   **55. BackgroundMaterialsBootcamp.swift**: Using blur and glass effects (ultraThinMaterial).
*   **56. TextSelectionBootcamp.swift**: Enabling text copy/share features.
*   **57. ButtonStyleBootcamp.swift**: Creating custom button styles.
*   **58. ListSwipeActionsBootcamp.swift**: Adding custom swipe actions to list rows.
*   **59. BadgesBootcamp.swift**: Adding notification badges to tab items and lists.
*   **60. FocusStateBootcamp.swift**: Managing keyboard focus programmatically.
*   **61. SubmitTextFieldBootcamp.swift**: Handling keyboard return key actions.
*   **62. NavigationStackBootcamp.swift**: Using the new data-driven NavigationStack (iOS 16+).
*   **63. ToolbarBootcamp.swift**: Customizing navigation bars and keyboard toolbars.
*   **64. ResizableSheetBootcamp.swift**: Creating bottom sheets with custom detents (sizes).
*   **65. SafeAreaInsetsBootcamp.swift**: Reading precise safe area geometry.
*   **66. GroupBootcamp.swift**: Grouping views for layout and modifier application.
*   **67. AnimationUpdatedBootcamp.swift**: Exploring newer animation APIs.
*   **68. MenuBootcamp.swift**: Creating pull-down menus.
*   **69. NativePopoverBootcamp.swift**: Using the native iOS popover presentation.
*   **70. AnyLayoutBootcamp.swift**: Switching layouts dynamically (e.g., between HStack and VStack).
*   **71. ViewThatFitsBootcamp.swift**: Choosing the best view for the available space.
*   **72. NavigationSplitViewBootcamp.swift**: Building master-detail interfaces for iPad/Mac.
*   **73. GridViewBootcamp.swift**: Advanced grid layouts (Grid vs LazyGrid).
*   **74. ContentUnavailableViewBootcamp.swift**: Standard empty states for views.
*   **75. ControlGroupMenuBootcamp.swift**: Grouping controls visually.
*   **76. ObservableBootcamp.swift**: Using the new `@Observable` macro (iOS 17+).

## Getting Started

1.  Clone the repository.
2.  Open `SwiftfulThinkingBootcamp.xcodeproj` in Xcode.
3.  Navigate to any file in the Project Navigator.
4.  Check the **Preview Canvas** to see the code in action immediately.

## Requirements

*   iOS 17.0+ (for latest features)
*   Xcode 15.0+
*   Swift 5.9+

## License

This project is for educational purposes.
