project "ImGui"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

  targetdir("bin/%{prj.name}/" .. outputdir )
  objdir("bin-int/%{prj.name}/" .. outputdir )

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Development"
		runtime "Release"
		optimize "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
