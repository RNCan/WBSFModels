cmake_minimum_required(VERSION 3.24)

get_target_property(WBSF_BASIC_INCLUDES WBSFBasic INTERFACE_INCLUDE_DIRECTORIES)

project(ClimaticLib)

find_package(Boost CONFIG REQUIRED)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES WetnessDuration.h WetnessDuration.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as static library
add_library(ClimaticLib STATIC
  ${SOURCE_FILES}
)

target_link_libraries(ClimaticLib PUBLIC
	Boost::boost		
)

######################  AllenWave  ######################

project(AllenWave)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES AllenWaveModel.h AllenWaveModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(AllenWave SHARED
  ${SOURCE_FILES}
)

target_link_libraries(AllenWave PUBLIC
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

######################  ASCE-ETc  ######################

project(ASCE-ETc)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ETcModel.h ETcModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ASCE-ETc SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ASCE-ETc PUBLIC
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

######################  ASCE-ETsz  ######################

project(ASCE-ETsz)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ASCE-ETsz.h ASCE-ETsz.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ASCE-ETsz SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ASCE-ETsz PUBLIC
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

######################  BlueStainVariables  ######################

project(BlueStainVariables)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES BlueStainVariables.h BlueStainVariables.cpp BlueStainVariablesModel.h BlueStainVariablesModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(BlueStainVariables SHARED
  ${SOURCE_FILES}
)

target_link_libraries(BlueStainVariables PUBLIC
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

######################  CaroleCoursolle  ######################

project(CaroleCoursolle)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES CaroleCoursolle.h CaroleCoursolle.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(CaroleCoursolle SHARED
  ${SOURCE_FILES}
)

target_link_libraries(CaroleCoursolle PUBLIC
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

######################  CCBio  ######################

project(CCBio)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES CCBioModel.h CCBioModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(CCBio SHARED
  ${SOURCE_FILES}
)

target_link_libraries(CCBio PUBLIC
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

######################  ChillingDegreeDay  ######################

project(ChillingDegreeDay)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ChillingDegreeDayModel.h ChillingDegreeDayModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(ChillingDegreeDay SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ChillingDegreeDay PUBLIC
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

######################  ClimateMoistureIndex  ######################

project(ClimateMoistureIndex)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES CMIModel.h CMIModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(ClimateMoistureIndex SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ClimateMoistureIndex PUBLIC
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

######################  Climatic  ######################

project(Climatic)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES Climatic.h Climatic.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(Climatic SHARED
  ${SOURCE_FILES}
)

target_link_libraries(Climatic PUBLIC
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

######################  ClimateMoistureDeficit  ######################

project(ClimaticMoistureDeficit)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ClimaticMoistureDeficit.h ClimaticMoistureDeficit.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(ClimaticMoistureDeficit SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ClimaticMoistureDeficit PUBLIC
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

######################  ClimaticQc  ######################

project(ClimaticQc)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ClimaticQc.h ClimaticQc.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ClimaticQc SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ClimaticQc PUBLIC
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

######################  ClimaticWind  ######################

project(ClimaticWind)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ClimaticWind.h ClimaticWind.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ClimaticWind SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ClimaticWind PUBLIC
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

######################  Climdex  ######################

project(Climdex)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ClimdexModel.h ClimdexModel.cpp ClimdexVariables.h ClimdexVariables.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(Climdex SHARED
  ${SOURCE_FILES}
)

target_link_libraries(Climdex PUBLIC
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

######################  CornHeatUnits  ######################

project(CornHeatUnits)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES CornHeatUnitsModel.h CornHeatUnitsModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(CornHeatUnits SHARED
  ${SOURCE_FILES}
)

target_link_libraries(CornHeatUnits PUBLIC
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

######################  DailyVsHourly  ######################

project(DailyVsHourly)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES "Daily vs Hourly.h" "Daily vs Hourly.cpp")

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(DailyVsHourly SHARED
  ${SOURCE_FILES}
)

target_link_libraries(DailyVsHourly PUBLIC
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

######################  DailyVsNormals  ######################

project(DailyVsNormals)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale iostreams)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES "Daily vs Normals.h" "Daily vs Normals.cpp")

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(DailyVsNormals SHARED
  ${SOURCE_FILES}
)

target_link_libraries(DailyVsNormals PUBLIC
	Boost::thread		
	Boost::chrono
	Boost::filesystem
	Boost::serialization
	Boost::process
	Boost::locale
	Boost::iostreams
	WBSFBasic
	WBSFModelBased
	WBSFWeatherBased
)

######################  DegreeDay  ######################

project(DegreeDay)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES DegreeDaysModel.h DegreeDaysModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(DegreeDay SHARED
  ${SOURCE_FILES}
)

target_link_libraries(DegreeDay PUBLIC
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

######################  DegreeHour  ######################

project(DegreeHour)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES DegreeHoursModel.h DegreeHoursModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(DegreeHour SHARED
  ${SOURCE_FILES}
)

target_link_libraries(DegreeHour PUBLIC
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

######################  DewPeriod  ######################

project(DewPeriod)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES DewPeriod.h DewPeriod.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(DewPeriod SHARED
  ${SOURCE_FILES}
)

target_link_libraries(DewPeriod PUBLIC
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

######################  HourlyGenerator  ######################

project(HourlyGenerator)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES HourlyGeneratorModel.h HourlyGeneratorModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(HourlyGenerator SHARED
  ${SOURCE_FILES}
)

target_link_libraries(HourlyGenerator PUBLIC
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

######################  SpringFrost  ######################

project(SpringFrost)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES SpringFrostModel.h SpringFrostModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(SpringFrost SHARED
  ${SOURCE_FILES}
)

target_link_libraries(SpringFrost PUBLIC
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

######################  GrowingSeason  ######################

project(GrowingSeason)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES GrowingSeasonModel.h GrowingSeasonModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(GrowingSeason SHARED
  ${SOURCE_FILES}
)

target_link_libraries(GrowingSeason PUBLIC
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

######################  PotentialEvapotranspiration  ######################

project(PotentialEvapotranspiration)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES EvapotranspirationModel.h EvapotranspirationModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(PotentialEvapotranspiration SHARED
  ${SOURCE_FILES}
)

target_link_libraries(PotentialEvapotranspiration PUBLIC
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

######################  ReverseDegreeDay  ######################

project(ReverseDegreeDay)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES ReverseDegreeDay.h ReverseDegreeDay.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(ReverseDegreeDay SHARED
  ${SOURCE_FILES}
)

target_link_libraries(ReverseDegreeDay PUBLIC
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

######################  SnowMelt  ######################

project(SnowMelt)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES SnowMelt.h SnowMelt.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(SnowMelt SHARED
  ${SOURCE_FILES}
)

target_link_libraries(SnowMelt PUBLIC
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

######################  SoilTemperature  ######################

project(SoilTemperature)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES SoilTemperature.h SoilTemperature.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(SoilTemperature SHARED
  ${SOURCE_FILES}
)

target_link_libraries(SoilTemperature PUBLIC
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

######################  TminTairTmax  ######################

project(TminTairTmax)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES TminTairTmax.h TminTairTmax.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(TminTairTmax SHARED
  ${SOURCE_FILES}
)

target_link_libraries(TminTairTmax PUBLIC
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

######################  UnderbarkTemperature  ######################

project(UnderbarkTemperature)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES UnderbarkTemperature.h UnderbarkTemperature.cpp UnderbarkTemperatureModel.h UnderbarkTemperatureModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(UnderbarkTemperature SHARED
  ${SOURCE_FILES}
)

target_link_libraries(UnderbarkTemperature PUBLIC
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

######################  VaporPressureDeficit  ######################

project(VaporPressureDeficit)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES VaporPressureDeficit.h VaporPressureDeficit.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(VaporPressureDeficit SHARED
  ${SOURCE_FILES}
)

target_link_libraries(VaporPressureDeficit PUBLIC
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

######################  VHR_to_Landsat  ######################

project(VHR_to_Landsat)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES VHR_to_Landsat.h VHR_to_Landsat.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(VHR_to_Landsat SHARED
  ${SOURCE_FILES}
)

target_link_libraries(VHR_to_Landsat PUBLIC
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

######################  WetnessDuration  ######################

project(WetnessDuration)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES WetnessDuration.h WetnessDuration.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)
# Build as dynamic library
add_library(WetnessDuration SHARED
  ${SOURCE_FILES}
)

target_link_libraries(WetnessDuration PUBLIC
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

######################  WinterThaw  ######################

project(WinterThaw)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES WinterThawModel.h WinterThawModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(WinterThaw SHARED
  ${SOURCE_FILES}
)

target_link_libraries(WinterThaw PUBLIC
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

######################  WorldClimVars  ######################

project(WorldClimVars)

find_package(Boost CONFIG REQUIRED COMPONENTS thread chrono filesystem serialization process locale)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use the GLOB command to get all the source files
set(SOURCE_FILES WinterThawModel.h WinterThawModel.cpp)

include_directories( 
  ${CMAKE_CURRENT_SOURCE_DIR}    
  ${WBSF_BASIC_INCLUDES}  
)

# Build as dynamic library
add_library(WorldClimVars SHARED
  ${SOURCE_FILES}
)

target_link_libraries(WorldClimVars PUBLIC
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