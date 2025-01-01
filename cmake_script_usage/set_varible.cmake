function(f)
    set(a "a of f")
    set(b "this is b of f")
    set(c "this is c of f" PARENT_SCOPE)
    message("a: ${a}")
    message("b: ${b}")
    message("c: ${c}")
endfunction(f)

set(a "this a of parent")
f()

message("a: ${a}")
message("b: ${b}")
message("c: ${c}")


message("main \$ENV{PATH}: $ENV{PATH}")
set(ENV{PATH} "path")
message("main \$ENV{PATH}: $ENV{PATH}")

execute_process(
    COMMAND ${CMAKE_COMMAND} -P setenv.cmake
    OUTPUT_VARIABLE out
)
message("${out}")
message("main \$ENV{PATH}: $ENV{PATH}")