
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(GLUT REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

include_directories(${MyProject_SOURCE_DIR}/Main/include
                    ${OPENGL_INCLUDE_DIRS}
                    ${GLUT_INCLUDE_DIRS}
                    ${GLEW_INCLUDE_DIRS}
                    )
# I assume you want to use LibProject as a library in MainProject.
include_directories(${MyProject_SOURCE_DIR}/Libs/include)
link_directories(${MyProject_SOURCE_DIR}/Libs/src)
link_directories(${MyProject_SOURCE_DIR}/Main/src)
add_executable(Main main.cpp)
target_link_libraries(Main Libs ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} glfw GLEW::GLEW glm::glm ${CMAKE_DL_LIBS})