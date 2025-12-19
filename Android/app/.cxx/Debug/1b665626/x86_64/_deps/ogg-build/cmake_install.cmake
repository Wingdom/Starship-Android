# Install script for directory: /var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/var/home/wingdom/Android/ndk/26.0.10792818/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/var/home/wingdom/workspace/starship-android/Starship/Android/app/build/intermediates/cxx/Debug/1b665626/obj/x86_64/libogg.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/var/home/wingdom/Android/ndk/26.0.10792818/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libogg.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ogg" TYPE FILE FILES
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/include/ogg/config_types.h"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/include/ogg/ogg.h"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/include/ogg/os_types.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake"
         "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/CMakeFiles/Export/dee6fd410a50d06b294b496f57355584/OggTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg/OggTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/CMakeFiles/Export/dee6fd410a50d06b294b496f57355584/OggTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/CMakeFiles/Export/dee6fd410a50d06b294b496f57355584/OggTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Ogg" TYPE FILE FILES
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/OggConfig.cmake"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/OggConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/ogg.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libogg/html" TYPE FILE FILES
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/framing.html"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/index.html"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/oggstream.html"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/ogg-multiplex.html"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/fish_xiph_org.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/multiplex1.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/packets.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/pages.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/stream.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/vorbisword2.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/white-ogg.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/white-xifish.png"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/rfc3533.txt"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/rfc5334.txt"
    "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/skeleton.html"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libogg/html" TYPE DIRECTORY FILES "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-src/doc/libogg")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86_64/_deps/ogg-build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
