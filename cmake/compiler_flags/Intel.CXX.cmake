if(NOT DEFINED ENV{CXXFLAGS})
    if(CMAKE_CXX_COMPILER_ID MATCHES Intel)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-unknown-pragmas -std=c++11")
        set(CMAKE_CXX_FLAGS_RELEASE "-debug -O2 -DNDEBUG")
        set(CMAKE_CXX_FLAGS_DEBUG "-O0 -debug -DDEBUG")
    endif()
endif()