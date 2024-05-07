return {
  "Civitasv/cmake-tools.nvim",
  cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G "Unix Makefiles"' },
  -- cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
  cmake_build_directory = "build/${variant:buildType}",
}
