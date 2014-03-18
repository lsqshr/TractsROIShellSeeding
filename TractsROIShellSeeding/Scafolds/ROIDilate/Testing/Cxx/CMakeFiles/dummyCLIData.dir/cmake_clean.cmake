FILE(REMOVE_RECURSE
  "CMakeFiles/dummyCLIData"
  "../../Data/Baseline/dummyCLITest.nhdr.md5-stamp"
  "../../Data/Baseline/dummyCLITest.nhdr"
  "../../Data/Baseline/dummyCLITest.raw.md5-stamp"
  "../../Data/Baseline/dummyCLITest.raw"
  "../../Data/Input/CTHeadAxial.nhdr.md5-stamp"
  "../../Data/Input/CTHeadAxial.nhdr"
  "../../Data/Input/CTHeadAxial.raw.gz.md5-stamp"
  "../../Data/Input/CTHeadAxial.raw.gz"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/dummyCLIData.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
