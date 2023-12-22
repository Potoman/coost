project('c++ coost', 'c', 'cpp',
  version : '1.0.0',
  license : 'MIT',
)

args_coost = ['-Wall', '-O2', '-g', '-Wno-sign-compare', '-Wno-strict-aliasing']
add_global_arguments(args_coost, language : 'c')
add_global_arguments(args_coost, language : 'cpp')

if host_machine.system() == 'windows'
  add_project_link_arguments('-lws2_32', language : 'cpp')
elif host_machine.system() == 'linux'
  add_project_link_arguments('-ldl', '-latomic', '-lpthread', language : 'cpp')
endif

subdir('src')
subdir('gen')
subdir('unitest')
subdir('test')
