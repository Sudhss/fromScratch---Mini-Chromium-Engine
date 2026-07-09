cmake_minimum_required(VERSION 3.20)

project(fromScratch
    VERSION 0.1.0
    DESCRIPTION "Mini Chromium-Inspired Browser Engine"
    LANGUAGES CXX
)

# ── C++ Standard ────────────────────────────────────────────────────────────
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# ── Export compile commands for IDE support ──────────────────────────────────
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ── Qt Auto-tools ────────────────────────────────────────────────────────────
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# ── Subdirectories (order matters: dependencies first) ──────────────────────

# Engine: pure C++ library — no Qt dependency
add_subdirectory(engine)

# Renderer backends (currently: Qt)
add_subdirectory(renderer)

# Application executable
add_subdirectory(app)

# Tests
enable_testing()
add_subdirectory(tests)
