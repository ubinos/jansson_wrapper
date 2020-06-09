if(INCLUDE__JANSSON)

get_filename_component(_tmp_source_dir "${JANSSON__BASE_DIR}/" ABSOLUTE)

include_directories(${_tmp_source_dir})
include_directories(${_tmp_source_dir}/src)
include_directories(${CMAKE_CURRENT_LIST_DIR}/../source/jansson)

add_definitions(-DHAVE_CONFIG_H)

set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/dump.c)
set_source_files_properties(${_tmp_source_dir}/src/dump.c PROPERTIES COMPILE_FLAGS -Wno-unused-variable)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/error.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/hashtable.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/hashtable_seed.c)
set_source_files_properties(${_tmp_source_dir}/src/hashtable_seed.c PROPERTIES COMPILE_FLAGS -Wno-unused-function)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/load.c)
set_source_files_properties(${_tmp_source_dir}/src/load.c PROPERTIES COMPILE_FLAGS -Wno-unused-variable)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/memory.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/pack_unpack.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/strbuffer.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/strconv.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/utf.c)
set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/src/value.c)

endif(INCLUDE__JANSSON)


