-- premake5.lua
workspace "MyGUI"
   configurations { "Debug", "Release" }

    project "MyGUI"
       kind "SharedLib"
       language "C#"
       targetdir "bin/%{cfg.buildcfg}"
       location "MyGUI"

       files { "MyGUI/src/**.cs" }

       filter "configurations:Debug"
          defines { "DEBUG" }
          symbols "On"

       filter "configurations:Release"
          defines { "NDEBUG" }
          optimize "On"

    project "Example"
        kind "ConsoleApp"
        language "C#"
        targetdir "bin/%{cfg.buildcfg}"
        links { "MyGUI" }
        location "Example"

       files { "Example/src/**.cs" }

       filter "configurations:Debug"
          defines { "DEBUG" }
          symbols "On"

       filter "configurations:Release"
          defines { "NDEBUG" }
          optimize "On"
