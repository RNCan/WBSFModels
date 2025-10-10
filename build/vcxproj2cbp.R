library(xml2)
library(stringr)
#library(XML)



# Using xml2
#cbp <- read_xml("/home/remi/Project/WBSFModels/build/cb/DegreeDay(Linux).cbp")
#cbp <- read_xml("E:/ProjectCP/WBSFModels/build/cb/DegreeDay(Linux).cbp")


# Find all files nodes anywhere in the document
#cbp_files <- xml_find_all(cbp, ".//Unit")

#remove these nodes from the template project
#xml_remove(cbp_files)

#template = cbp
platform = "(Windows)"
path = "E:/ProjectCP/WBSFModels/build/"


workspace_str = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?>
<CodeBlocks_workspace_file>
	<Workspace title=\"Workspace\">
	</Workspace>
</CodeBlocks_workspace_file>"

workspace = read_xml(workspace_str)
workspace_parent = xml_find_first(workspace, "//Workspace")



#Find all vcxproj files
vcxprojets = list.files(path = paste0(path,"msvc/"), pattern = ".vcxproj$", recursive = FALSE, full.names = TRUE)


for( i in 1:length(vcxprojets))
{
#i=32

	file_title = sub("\\.[^.]+$", "", basename(vcxprojets[i]))
	file_name_out = sprintf( "%s%s.cbp", file_title,platform);
	file_path_out = sprintf( "%scb/%s", path,file_name_out);
	print(file_title)

	
	#read template code::black oproject file (xml)
	template <- read_xml(paste0(path,"cb/Template",platform,".cbp"))
	
	#read vcx project (xml file)
	vcxproj <- read_xml(vcxprojets[i])
	#remove namespace
	vcxproj = xml_ns_strip(vcxproj)
	
	
	project_name = xml_text(xml_find_first(vcxproj, "//ProjectName"))
	if(is.na(project_name))
		project_name=file_title
	
	
	
	
	#replace title
	xml_title = xml_find_first(template, "//Project/Option[@title]")
	xml_attr(xml_title, "title") <- project_name
	
	
	#replace 
	xml_outputs = xml_find_all(template, "//Build/Target/Option[@output]")
	for( j in 1:length(xml_outputs) )
	{
		
		output = xml_attr(xml_outputs[j], "output")
		output = sub("DegreeDay", project_name, output)
		xml_attr(xml_outputs[j], "output") <- output
	}
	
	

	#find all include
	vcxproj_include = xml_attr(xml_find_all(vcxproj, ".//ItemGroup/ClInclude"), "Include")
	vcxproj_include = c( vcxproj_include,  xml_attr(xml_find_all(vcxproj, ".//ItemGroup/ClCompile"), "Include") );

	parent_node <- xml_find_first(template, "//Project")
	# Add all includes to the parent
	for( j in 1:length(vcxproj_include) )
	{
		xml_add_child(parent_node, "Unit", filename=vcxproj_include[j])
	}


	#change Additional Directories
	IncludeDirectories = xml_text(xml_find_first(vcxproj, ".//AdditionalIncludeDirectories"))
	
	#remove some directory
	
	IncludeDirectories = sub(";C:\\\\local\\\\boost_1_89_0", "", IncludeDirectories)
	IncludeDirectories = sub(";C:\\\\local\\\\boost_1_89_0", "", IncludeDirectories)
	IncludeDirectories = sub(";C:\\\\local\\\\gdal-3-11-3", "", IncludeDirectories)
	IncludeDirectories = sub(";C:\\\\local\\\\gsl-2-4-0", "", IncludeDirectories)
	IncludeDirectories = unlist(str_split(IncludeDirectories, ";"))
	
	
	#LibDirectory = xml_text(xml_find_first(vcxproj, ".//AdditionalLibraryDirectories"))

	parent_node <- xml_find_all(template, "//Build/Target/Compiler")#/Add[@directory]
	
	for( j in 1:length(parent_node) )
	{
		#xml_attr(parent_node[j], "directory") <- IncludeDirectories
		for(k in 1:length(IncludeDirectories) )
			xml_add_child(parent_node, "Add", directory=IncludeDirectories[k])
	}

	if(file_title=="EntomophagaMaimaiga")
	{
		parent_node <- xml_find_all(template, "//Build/Target/Linker")
		for( j in 1:length(parent_node) )
		{
			xml_add_child(parent_node, "Add", library="libgsl.a")
		}
	}
	
	if(file_title=="WaterBalance")
	{
		parent_node <- xml_find_all(template, "//Build/Target/Linker")
		for( j in 1:length(parent_node) )
		{
			xml_add_child(parent_node, "Add", library="libgdal.a")
		}
	}


	# View the modified document
	#print(parent_node)

	write_xml(template, file_path_out)
	
	
	#add this project to the workspace
	xml_add_child(workspace_parent, "Project", filename=file_name_out)
	#print(workspace)
}




#save worspace 
write_xml(workspace, sprintf( "%scb/AllModels%s.workspace", path,platform))


