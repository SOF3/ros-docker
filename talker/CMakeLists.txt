cmake_minimum_required(VERSION 2.8.3)
project(talker)
find_package(catkin REQUIRED COMPONENTS
	rospy
	message_generation
	std_msgs
	geometry_msgs
	sensor_msgs
)
catkin_python_setup()
add_message_files(FILES
	Message.msg
)

add_service_files(FILES
	Service.srv
)
generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs)
catkin_package(
	#	INCLUDE_DIRS include
	LIBRARIES ${PROJECT_NAME}
	CATKIN_DEPENDS message_runtime
	#	DEPENDS
)

include_directories(include ${catkin_INCLUDE_DIRS})
#link_directories()

# add_library(${PROJECT_NAME} INTERFACE)
# target_include_directories(${PROJECT_NAME} INTERFACE include)
# add_dependencies(ps4_to_msg ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
# target_link_libraries(ps4_to_msg ${catkin_LIBRARIES})

# ## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
# DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
# FILES_MATCHING PATTERN "*.hpp"
# PATTERN ".svn" EXCLUDE
# )

#add_dependencies(
#	${PROJECT_NAME}
#	${${PROJECT_NAME}_EXPORTED_TARGETS}
#	${catkin_EXPORTED_TARGETS}
#)
#add_executable()
#target_link_libraries()
