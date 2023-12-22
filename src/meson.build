conf_data = configuration_data({
  'COOST_SHARED' : 0,
  'CACHE_LINE_SIZE' : 64,
})
configure_file(input : '../include/co/config.h.in',
               output : 'config.h',
               configuration : conf_data)

incdir = include_directories('.', '../include')

sources = ['benchmark.cc',
    'cout.cc',
    'error.cc',
    'fast.cc',
    'fastring.cc',
    'flag.cc',
    'fs_win.cc',
    'fs.cc',
    'json.cc',
    'mem.cc',
    'os_win.cc',
    'os.cc',
    'path.cc',
    'rand.cc',
    'str.cc',
    'tasked.cc',
    'time_win.cc',
    'time.cc',
    'unitest.cc',
    'co/co.cc',
    'co/hook_win.cc',
    'co/hook.cc',
    'co/io_event.cc',
    'co/sched.cc',
    'co/sock_win.cc',
    'co/sock.cc',
    'co/context/context.S',
    #'co/detours/uimports.cpp', not list at all
    'co/epoll/epoll.cc',
    'co/epoll/iocp.cc',
    'co/epoll/kqueue.cc',
    #'co/fishhook/fishhook.c', only apple
    'hash/base64.cc',
    'hash/crc16.cc',
    'hash/md5.cc',
    'hash/murmur_hash.cc',
    'hash/sha256.cc',
    'hash/url.cc',
    'log/log.cc',
    'so/http.cc',
    'so/rpc.cc',
    'so/ssl.cc',
    'so/tcp.cc',
]
if host_machine.system() == 'windows'
    sources += ['log/StackWalker.cpp',
        'co/detours/creatwth.cpp',
        'co/detours/detours.cpp',
        'co/detours/disasm.cpp',
        'co/detours/image.cpp',
        'co/detours/modules.cpp',
    ]
endif
co = static_library('co',
    sources,
    include_directories: incdir
)
co_dep = declare_dependency(
  include_directories: incdir,
  link_with : co
)
