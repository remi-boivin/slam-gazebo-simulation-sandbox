cmake_minimum_required(VERSION 3.8)
project(cpp_pubsub)
option(ENABLE_COVERAGE_TESTING "Enable coverage testing" OFF)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

# Include the 'include' directory
include_directories(include)

add_library(publisher SHARED src/publisher.cpp)
ament_target_dependencies(publisher rclcpp std_msgs)

# Ensure that the executable knows where to find the header files
add_executable(talker src/main.cpp)
ament_target_dependencies(talker rclcpp std_msgs)

# Link the library with the executable
target_link_libraries(talker publisher)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
  find_package(ament_cmake_gtest REQUIRED)
  ament_add_gtest(${PROJECT_NAME}_test test/basic_test.cpp)

  target_include_directories(${PROJECT_NAME}_test PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
  )

  ament_target_dependencies(${PROJECT_NAME}_test rclcpp std_msgs)

  # Correct usage for linking the library
  target_link_libraries(${PROJECT_NAME}_test publisher)
  if(ENABLE_COVERAGE_TESTING)
    # Link coverage flags for all targets requiring coverage data
    target_link_libraries(publisher --coverage)
    target_link_libraries(talker --coverage)

    target_compile_options(publisher PUBLIC --coverage)
    target_compile_options(talker PUBLIC --coverage)
    target_compile_options(${PROJECT_NAME}_test PUBLIC --coverage)
  endif()

endif()

install(TARGETS talker publisher
  DESTINATION lib/${PROJECT_NAME})

ament_package()
