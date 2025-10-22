######################  WaterBalance  ######################

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

project(WaterBalance)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES WaterBalance.h WaterBalance.cpp McCabeWBM.h McCabeWBM.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(WaterBalance SHARED
  ${SOURCE_FILES}
)

target_link_libraries(WaterBalance PUBLIC
	Boost::thread		
	Boost::chrono
	Boost::filesystem
	Boost::serialization
	Boost::process
	Boost::locale
	WBSFBasic
	WBSFModelBased
	WBSFWeatherBased
)
