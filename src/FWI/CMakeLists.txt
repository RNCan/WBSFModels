cmake_minimum_required(VERSION 3.25)

project(FBPLib)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES FWI.h FWI.cpp FBP.h FBP.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}  
)

# Build as static library
add_library(FBPLib STATIC
  ${SOURCE_FILES}
)

target_link_libraries(FBPLib PUBLIC
	WBSFBasic
	WBSFModelBased
	WBSFWeatherBased
)

######################  FBP  ######################

project(FBP)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES "FWI(new from wang2015).h" "FWI(new from wang2015).cpp" FWI-Model.h FWI-Model.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}  
)

# Build as dynamic library
add_library(FBP SHARED
  ${SOURCE_FILES}  
)

target_link_libraries(FBP PUBLIC
	FBPLib
)

######################  FWI  ######################

project(FWI)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES "FWI(new from wang2015).h" "FWI(new from wang2015).cpp" FWI-Model.h FWI-Model.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}  
)

# Build as dynamic library
add_library(FWI SHARED
  ${SOURCE_FILES}  
)

target_link_libraries(FWI PUBLIC
	FBPLib
)

######################  FWIDroughtCode  ######################

project(FWIDroughtCode)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES DroughtCodeModel.h DroughtCodeModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}  
)

# Build as dynamic library
add_library(FWIDroughtCode SHARED
  ${SOURCE_FILES}  
)

target_link_libraries(FWIDroughtCode PUBLIC
	FBPLib
)

######################  SummerMoisture  ######################

project(SummerMoisture)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES SummerMoisture.h SummerMoisture.cpp SummerMoistureModel.h SummerMoistureModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}  
)

# Build as dynamic library
add_library(SummerMoisture SHARED
  ${SOURCE_FILES}  
)

target_link_libraries(SummerMoisture PUBLIC
	FBPLib
)