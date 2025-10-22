######################  SoilMoistureIndex  ######################

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

project(StandardizedPrecipitationEvapotranspirationIndex)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES SPEIModel.h SPEIModel.cpp spei.h spei.cpp pdfs.h pdfs.cpp lmoments.h lmoments.cpp auxiliary.h auxiliary.cpp Thornthwaite.h Thornthwaite.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(StandardizedPrecipitationEvapotranspirationIndex SHARED
  ${SOURCE_FILES}
)

target_link_libraries(StandardizedPrecipitationEvapotranspirationIndex PUBLIC
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
