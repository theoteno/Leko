# Leko
Fork of a Chess game for Elementary OS

# Building from source - Dependencies

gtk_dependency = dependency('gtk+-3.0')
granite_dependency = dependency('granite', version: '>= 5.3.0')
gee_dependency = dependency('gee-0.8')
gmodule_dependency = dependency('gmodule-2.0')
glib_dependency = dependency('glib-2.0')
gobject_dependency = dependency('gobject-2.0')


## Building

```bash
git clone https://github.com/theoteno/Leko
cd leko
meson build --prefix=/usr
cd build
ninja && sudo ninja install
```
