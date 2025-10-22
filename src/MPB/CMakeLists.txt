cmake_minimum_required(VERSION 3.24)

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

project(ClimaticMPB)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ClimaticMPB.h ClimaticMPB.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ClimaticMPB SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ClimaticMPB PUBLIC
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

#cmake_minimum_required(VERSION 3.24)

#project(MPBLib)

#set(CMAKE_CXX_STANDARD 17)

#set(SOURCE_FILES MPBColdTolerance.h MPBColdTolerance.cpp MPBDevRates.h MPBDevRates.cpp DevelopementVector.h DevelopementVector.cpp)

#include_directories( 
#  ${CMAKE_CURRENT_SOURCE_DIR}  
#  ${CMAKE_CURRENT_SOURCE_DIR}/../../msvc/stdafx
#  ${CMAKE_CURRENT_SOURCE_DIR}/../../wbs/src
#  ${EXTERNAL_PROJECTS_DIR}  
#)

# Build as static library
#add_library(MPBLib STATIC
#  ${SOURCE_FILES}
#)

#add_subdirectory(CTModel)
#add_subdirectory(iModel)
#add_subdirectory(SLRModel)

