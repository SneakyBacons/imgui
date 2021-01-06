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
		"imgui_demo.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_glfw.h",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_glfw.cpp"
	}

	includedirs
    {
		"",
		"../GLFW/include",
		"../GLAD/include"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:MemoryProfile"
	  	runtime "Release"
	  	optimize "on"

	filter "configurations:Development"
		runtime "Release"
		optimize "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
