cmake_minimum_required(VERSION 3.5)
project(Hello-CompCert)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS -O2)

set(SOURCE_FILES
  main.c
  hello-world.c
)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} m)
