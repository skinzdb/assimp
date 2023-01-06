project "assimp"
  kind "StaticLib"
  language "C++"
  cppdialect "C++17"
  staticruntime "on"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("obj/" .. outputdir .. "/%{prj.name}")

  defines {
  
  }

  files {
      "include/**",
      "code/**"
  }

  includedirs {
      "include",
      "contrib"
  }

   filter "system:windows"
      systemversion "latest"

   filter  "configurations:Debug"
       runtime "Debug"
       symbols "on"

   filter  "configurations:Release"
       runtime "Release"
       optimize "on"
