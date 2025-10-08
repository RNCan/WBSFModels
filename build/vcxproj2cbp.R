library(xml2)
#library(XML)



# Using xml2
cbp <- read_xml("/home/remi/Project/WBSFModels/build/cb/DegreeDay(Linux).cbp")


xml_text(xml_find_all(cbp, "//Unit"))



cbp[["CodeBlocks_project_file"]]





xml_data_XML <- xmlParse("/home/remi/Project/WBSFModels/build/msvc/DegreeDay.vcxproj")
xml_text(xml_find_all(xml_data_XML, "Unit"))



xml_data_XML["CodeBlocks_project_file"]

[["FileVersion"]]




# Using XML
xml_data_XML <- xmlParse("/home/remi/Project/WBSFModels/build/msvc/DegreeDay.vcxproj")
xml_data[["data"]][["location"]][["point"]]

