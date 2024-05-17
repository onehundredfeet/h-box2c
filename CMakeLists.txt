cmake_minimum_required(VERSION 3.10)

if (NOT PATH_TO_IDL) 
set(PATH_TO_IDL "ext/hl-idl")
endif()


include(${PATH_TO_IDL}/h-idl-preamble.cmake)

#you need to modify this yourself
project(box2c)



# a bunch of pre-configured options that may or may not be useful
# it attempts to cover most of what is used for basic libraries
# you can reference the paths defined here to help make your cmake code more portable
include(${PATH_TO_IDL}/h-idl-defines.cmake)


set( PROJECT_ADDITIONAL_SOURCES 
"${CMAKE_CURRENT_SOURCE_DIR}/ext/enkiTS/src/TaskScheduler.cpp"
)

set (PROJECT_ADDITIONAL_INCLUDES
"${CMAKE_CURRENT_SOURCE_DIR}/ext/box2c/include"
"${CMAKE_CURRENT_SOURCE_DIR}/ext/enkiTS/src"
)



if (APPLE)
set(PLAT_DIR "osx")
elseif(WIN32)
set(PLAT_DIR "win64")
elseif(UNIX)
set( PLAT_DIR "linux64")
endif()


add_subdirectory(ext/cpptrace)

set (PROJECT_ADDITIONAL_LIB_DIRS
#"build/box2c"
)


set(PROJECT_ADDITIONAL_LIBS
"${CMAKE_CURRENT_SOURCE_DIR}/build_box2c/src/libbox2d.a"
cpptrace-lib
)


include(${PATH_TO_IDL}/h-idl-configure.cmake)


