cmake_minimum_required(VERSION 3.24)

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

project(BiophysicalSiteIndicesEcoloap)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
file(GLOB SOURCE_FILES ./*.h ./*.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(BiophysicalSiteIndicesEcoloap SHARED
  ${SOURCE_FILES}
)

target_link_libraries(BiophysicalSiteIndicesEcoloap PUBLIC
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


