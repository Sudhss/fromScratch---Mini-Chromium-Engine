# fromScratch — Phase 1–3 Task List
## Phase 1: Project Skeleton & Desktop Window
### Build System
- [ ] Rewrite root `CMakeLists.txt` for modular multi-directory structure (MinGW, C++23, Qt 6.3)
- [ ] Create `engine/CMakeLists.txt` (pure C++ static lib)
- [ ] Create `renderer/CMakeLists.txt` (forwarding)
- [ ] Create `renderer/qt/CMakeLists.txt` (Qt renderer lib)
- [ ] Create `app/CMakeLists.txt` (executable)
- [ ] Create `tests/CMakeLists.txt` (unit tests)
### Engine Core Types
- [ ] `engine/core/types.h` — Color, Rect, Point, Size, EdgeSizes, FontSpec
- [ ] `engine/core/types.cpp` — helper methods
### Graphics Abstraction
- [ ] `engine/graphics/renderer.h` — abstract Renderer interface
- [ ] `engine/graphics/display_list.h` — PaintCommand + DisplayList
- [ ] `engine/graphics/display_list.cpp` — implementation
### Qt Renderer Backend
- [ ] `renderer/qt/qt_renderer.h` — QtRenderer header
- [ ] `renderer/qt/qt_renderer.cpp` — QPainter implementation
- [ ] `renderer/qt/render_widget.h` — RenderWidget header
- [ ] `renderer/qt/render_widget.cpp` — custom QWidget paint surface
### Browser Window
- [ ] Restructure `app/main.cpp`
- [ ] `app/ui/main_window.h` — MainWindow header (toolbar, tabs, address bar)
- [ ] `app/ui/main_window.cpp` — MainWindow implementation
- [ ] Remove old `mainwindow.h`, `mainwindow.cpp`, `mainwindow.ui`
## Phase 2: Graphics Primitives
- [ ] Complete QtRenderer: fillRect, strokeRect, drawText, drawLine, drawImage, clip
- [ ] `app/ui/demo_page.h` — demo display list generator
- [ ] `app/ui/demo_page.cpp` — renders colored rects, text, lines
## Phase 3: HTML Tokenizer
- [ ] `engine/html/token.h` — Token types
- [ ] `engine/html/tokenizer.h` — Tokenizer header
- [ ] `engine/html/tokenizer.cpp` — WHATWG state machine (~20 states)
- [ ] `tests/test_tokenizer.cpp` — unit tests
- [ ] Build & verify all tests pass
