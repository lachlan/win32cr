{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link("delayimp")]
{% end %}
@[Link("user32")]
{% if compare_versions(Crystal::VERSION, "1.8.2") <= 0 %}
@[Link(ldflags: "/IGNORE:4199")]
{% end %}
lib LibWin32
  D3DCOMPILER_DLL = "d3dcompiler_47.dll"
  D3DCOMPILE_OPTIMIZATION_LEVEL2 = 49152_u32
  D3D_COMPILE_STANDARD_FILE_INCLUDE = 1_u32

end
