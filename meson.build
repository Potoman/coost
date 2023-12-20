project('c++ coost', 'c', 'cpp',
  version : '1.0.0',
  license : 'MIT',
)

args_coost = ['-Wall', '-O2', '-g', '-Wno-sign-compare', '-Wno-strict-aliasing']
add_global_arguments(args_coost, language : 'c')
add_global_arguments(args_coost, language : 'cpp')
add_project_link_arguments('-lws2_32', language : 'cpp')

subdir('src')
subdir('gen')
subdir('unitest')
subdir('test')
