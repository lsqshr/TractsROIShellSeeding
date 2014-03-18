# CMake generated Testfile for 
# Source directory: /home/siqi/dummyCLI/Testing/Cxx
# Build directory: /home/siqi/dummyCLI/Testing/Cxx
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(dummyCLITest "/home/siqi/Slicer-SuperBuild-Debug/Slicer-build/Slicer" "--launcher-no-splash" "--launcher-additional-settings" "/home/siqi/dummyCLI/AdditionalLauncherSettings.ini" "--launch" "/home/siqi/dummyCLI/Testing/Cxx/dummyCLITest" "--compare" "/home/siqi/dummyCLI/Data/Baseline/dummyCLITest.nhdr" "/home/siqi/dummyCLI/Testing/Temporary/dummyCLITest.nhdr" "ModuleEntryPoint" "--sigma" "2.5" "/home/siqi/dummyCLI/Data/Input/CTHeadAxial.nhdr" "/home/siqi/dummyCLI/Testing/Temporary/dummyCLITest.nhdr")
SET_TESTS_PROPERTIES(dummyCLITest PROPERTIES  LABELS "dummyCLI")
