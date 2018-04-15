cmake_minimum_required(VERSION 3.5)
project(Hello_CompCert)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS -O2)

file(GLOB SOURCE_FILES src/*.c)
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

add_custom_target(run
  COMMAND make
  COMMAND ${PROJECT_NAME}
)
