# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\fromScratch_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\fromScratch_autogen.dir\\ParseCache.txt"
  "fromScratch_autogen"
  )
endif()
