cmake_minimum_required(VERSION 3.25)

project(ActiaInterruptaLib)

find_package(Boost CONFIG REQUIRED)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ActiaInterrupta.h ActiaInterrupta.cpp ActiaInterruptaEquations.h ActiaInterruptaEquations.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  #${WBSF_BASIC_INCLUDES}/..
  ${WBSF_BASIC_INCLUDES}
)

# Build as static library
add_library(ActiaInterruptaLib STATIC
  ${SOURCE_FILES}
)

target_link_libraries(ActiaInterruptaLib PUBLIC
	Boost::boost		
)

project(ActiaInterruptaBiology)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ActiaInterruptaModel.h ActiaInterruptaModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}   
  #${WBSF_BASIC_INCLUDES}/..
  ${WBSF_BASIC_INCLUDES}
)

# Build as dynamic library
add_library(ActiaInterruptaBiology SHARED  
  ${SOURCE_FILES}  
)

target_link_libraries(ActiaInterruptaBiology PUBLIC
	Boost::thread		
	Boost::chrono
	Boost::filesystem
	Boost::serialization
	Boost::process
	Boost::locale
	WBSFBasic
	WBSFModelBased
	WBSFWeatherBased
	ActiaInterruptaLib
)
