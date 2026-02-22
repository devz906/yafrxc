if(NOT EXISTS "/workspaces/yafrxc/wine/box64/build/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /workspaces/yafrxc/wine/box64/build/install_manifest.txt")
endif(NOT EXISTS "/workspaces/yafrxc/wine/box64/build/install_manifest.txt")

file(READ "/workspaces/yafrxc/wine/box64/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    execute_process(
      COMMAND /usr/bin/cmake -E remove "$ENV{DESTDIR}${file}"
      RESULT_VARIABLE rm_retval
      OUTPUT_VARIABLE rm_out
      ERROR_VARIABLE rm_out
      OUTPUT_STRIP_TRAILING_WHITESPACE
      )
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
    endif()
  endif()
endforeach(file)
