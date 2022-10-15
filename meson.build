project('madlibs-vala', 'vala', 'c')

deps = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gee-0.8'),
]

sources = files(
    'main.vala',
    'src/basic_madlibs.vala',
    'src/template_madlibs.vala',
)

executable('madlibs',
    sources,
    dependencies: deps,
    install: false,
)
