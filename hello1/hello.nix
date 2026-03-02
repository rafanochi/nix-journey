{
  writeShellScriptBin,
  audince ? "people",
}: 

writeShellScriptBin "hello" ''
  echo "Hello ${audince}!"
''
