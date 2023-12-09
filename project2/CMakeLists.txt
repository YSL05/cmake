cmake_minimum_required(VERSION 3.10)

project(project2)

# bin 目录下存最后生成的可执行文件
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 设置源码文件的目录存在SRC_LIST变量
aux_source_directory (src SRC_LIST)

# 指定头文件的路径
include_directories(include)

# 生成指定的执行文件
add_executable(main2 ${SRC_LIST})

