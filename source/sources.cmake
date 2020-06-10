if(INCLUDE__JANSSON)

get_filename_component(_tmp_source_dir "${JANSSON__BASE_DIR}/" ABSOLUTE)

include_directories(${_tmp_source_dir})
include_directories(${_tmp_source_dir}/src)

include_directories(${PROJECT_LIBRARY_DIR}/jansson_wrapper/source/jansson)

add_definitions(-DHAVE_CONFIG_H)

set(PROJECT_SOURCES 
   ${PROJECT_SOURCES} 
   
   ${_tmp_source_dir}/src/dump.c
   ${_tmp_source_dir}/src/error.c
   ${_tmp_source_dir}/src/hashtable.c
   ${_tmp_source_dir}/src/hashtable_seed.c
   ${_tmp_source_dir}/src/load.c
   ${_tmp_source_dir}/src/memory.c
   ${_tmp_source_dir}/src/pack_unpack.c
   ${_tmp_source_dir}/src/strbuffer.c
   ${_tmp_source_dir}/src/strconv.c
   ${_tmp_source_dir}/src/utf.c
   ${_tmp_source_dir}/src/value.c
)

set_source_files_properties(${_tmp_source_dir}/src/dump.c PROPERTIES COMPILE_FLAGS -Wno-unused-variable)
set_source_files_properties(${_tmp_source_dir}/src/hashtable_seed.c PROPERTIES COMPILE_FLAGS -Wno-unused-function)
set_source_files_properties(${_tmp_source_dir}/src/load.c PROPERTIES COMPILE_FLAGS -Wno-unused-variable)

endif(INCLUDE__JANSSON)


