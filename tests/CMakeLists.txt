# ── Tests ────────────────────────────────────────────────────────────────────
# Simple test executable that links against browser_engine.
# No external test framework required — we use a lightweight custom assert macro.
# Can be migrated to Google Test later.

add_executable(test_tokenizer
    test_tokenizer.cpp
)

target_link_libraries(test_tokenizer PRIVATE browser_engine)

# Register with CTest
add_test(NAME HTMLTokenizer COMMAND test_tokenizer)
