# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54427)
set(VERSION_MAJOR 19)
set(VERSION_MINOR 16)
set(VERSION_PATCH 9)
set(VERSION_GITHASH c4c9f8c10704d869507f62d68c89762dfb6e6376)
set(VERSION_DESCRIBE v19.16.9.37-stable)
set(VERSION_STRING 19.16.9.37)
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()

if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")
set (VERSION_SO "${VERSION_STRING}")

math (EXPR VERSION_INTEGER "${VERSION_PATCH} + ${VERSION_MINOR}*1000 + ${VERSION_MAJOR}*1000000")

if(YANDEX_OFFICIAL_BUILD)
    set(VERSION_OFFICIAL " (official build)")
endif()
