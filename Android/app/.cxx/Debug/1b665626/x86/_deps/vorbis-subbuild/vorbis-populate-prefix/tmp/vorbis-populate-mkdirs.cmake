# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-src")
  file(MAKE_DIRECTORY "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-src")
endif()
file(MAKE_DIRECTORY
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-build"
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix"
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/tmp"
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/src/vorbis-populate-stamp"
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/src"
  "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/src/vorbis-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/src/vorbis-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/var/home/wingdom/workspace/starship-android/Starship/Android/app/.cxx/Debug/1b665626/x86/_deps/vorbis-subbuild/vorbis-populate-prefix/src/vorbis-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
