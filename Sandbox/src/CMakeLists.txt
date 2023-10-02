
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(GLUT REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

include_directories(${MyProject_SOURCE_DIR}/Sandbox/include
                    ${OPENGL_INCLUDE_DIRS}
                    ${GLUT_INCLUDE_DIRS}
                    ${GLEW_INCLUDE_DIRS}
                    )
# I assume you want to use LibProject as a library in HazelProject.
include_directories(${MyProject_SOURCE_DIR}/Hazel/include)
link_directories(${MyProject_SOURCE_DIR}/Hazel/src)
link_directories(${MyProject_SOURCE_DIR}/Sandbox/src)
#add_executable(Sandbox Sandbox.cpp)
add_executable(Sandbox SandboxApp.cpp)
target_link_libraries(Sandbox Hazel ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} glfw GLEW::GLEW glm::glm ${CMAKE_DL_LIBS})