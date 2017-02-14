/********************************************************************
 * AUTHORS: Mate Soos, Trevor Hansen
 *
 * BEGIN DATE: November, 2005
 *
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
********************************************************************/


#include "stp/Util/GitSHA1.h"
const char* stp::get_git_version_sha()
{
    static const char version_sha[] = "deeeed76be3b05c82b05f92c5b9e2411732de575";
    return version_sha;
}

const char* stp::get_git_version_tag()
{
    static const char version_tag[] = "2.1.2";
    return version_tag;
}

/* #undef STP_TIMESTAMPS */

const char* stp::get_compilation_env()
{
    static const char compilation_env[] =
    "CMAKE_CXX_COMPILER = /usr/bin/c++ | "
    "CMAKE_CXX_FLAGS = -std=c++11  -Wall -Wextra -pedantic -Wunused -Wsign-compare -Wtype-limits -Wuninitialized -Wno-deprecated -Wstrict-aliasing -Wpointer-arith -Wformat-nonliteral -Winit-self -Wunreachable-code | "
    "COMPILE_DEFINES =  -DNDEBUG -D__STDC_LIMIT_MACROS | "
    "ONLY_SIMPLE = OFF | "
    "Boost_FOUND = 1 | "
    "BUILD_SHARED_LIBS = OFF | "
    "TUNE_NATIVE = OFF | "
    "COVERAGE = OFF | "
    "FORCE_CMS = OFF | "
    "LIBS = /home/map2check/devel_tool/map_src_on_docker/release/lib/libminisat.a | "
    "ENABLE_TESTING = OFF | "
    "ENABLE_PYTHON_INTERFACE = OFF | "
    "PYTHON_EXECUTABLE =  | "
    "PYTHON_LIBRARY =  | "
    "PYTHON_INCLUDE_DIRS =  | "
    " | compilation date time = "
#ifdef STP_TIMESTAMPS
    __DATE__ " " __TIME__
#else
    "unknown"
#endif
    ;
    return compilation_env;
}
