# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\LENOVO\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.8194.17\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\LENOVO\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\202.8194.17\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/odev_01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/odev_01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/odev_01.dir/flags.make

CMakeFiles/odev_01.dir/main.cpp.obj: CMakeFiles/odev_01.dir/flags.make
CMakeFiles/odev_01.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/odev_01.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\odev_01.dir\main.cpp.obj -c C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\main.cpp

CMakeFiles/odev_01.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/odev_01.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\main.cpp > CMakeFiles\odev_01.dir\main.cpp.i

CMakeFiles/odev_01.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/odev_01.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\main.cpp -o CMakeFiles\odev_01.dir\main.cpp.s

# Object files for target odev_01
odev_01_OBJECTS = \
"CMakeFiles/odev_01.dir/main.cpp.obj"

# External object files for target odev_01
odev_01_EXTERNAL_OBJECTS =

odev_01.exe: CMakeFiles/odev_01.dir/main.cpp.obj
odev_01.exe: CMakeFiles/odev_01.dir/build.make
odev_01.exe: CMakeFiles/odev_01.dir/linklibs.rsp
odev_01.exe: CMakeFiles/odev_01.dir/objects1.rsp
odev_01.exe: CMakeFiles/odev_01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable odev_01.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\odev_01.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/odev_01.dir/build: odev_01.exe

.PHONY : CMakeFiles/odev_01.dir/build

CMakeFiles/odev_01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\odev_01.dir\cmake_clean.cmake
.PHONY : CMakeFiles/odev_01.dir/clean

CMakeFiles/odev_01.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01 C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01 C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug C:\Users\LENOVO\Documents\GitHub\Tasarim-Oruntuleri\ODEV01\odev-01\cmake-build-debug\CMakeFiles\odev_01.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/odev_01.dir/depend

