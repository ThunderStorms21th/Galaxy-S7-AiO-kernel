cflags-y	+= -os

obj-$(CONFIG_LAZYPLUG)			+= lazyplug.o
# CFLAGS_lazyplug.o			+= -finline-functions
CFLAGS_lazyplug.o := -Wno-implicit-function-declaration
