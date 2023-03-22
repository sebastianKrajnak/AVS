set(CMAKE_C_COMPILER "/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/bin/intel64/icc")
set(CMAKE_C_COMPILER_ARG1 "")
set(CMAKE_C_COMPILER_ID "Intel")
set(CMAKE_C_COMPILER_VERSION "2021.1.0.20201208")
set(CMAKE_C_COMPILER_VERSION_INTERNAL "")
set(CMAKE_C_COMPILER_WRAPPER "")
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT "11")
set(CMAKE_C_COMPILE_FEATURES "c_std_90;c_function_prototypes;c_std_99;c_restrict;c_variadic_macros;c_std_11;c_static_assert")
set(CMAKE_C90_COMPILE_FEATURES "c_std_90;c_function_prototypes")
set(CMAKE_C99_COMPILE_FEATURES "c_std_99;c_restrict;c_variadic_macros")
set(CMAKE_C11_COMPILE_FEATURES "c_std_11;c_static_assert")
set(CMAKE_C17_COMPILE_FEATURES "")
set(CMAKE_C23_COMPILE_FEATURES "")

set(CMAKE_C_PLATFORM_ID "Linux")
set(CMAKE_C_SIMULATE_ID "GNU")
set(CMAKE_C_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_C_SIMULATE_VERSION "9.3.0")




set(CMAKE_AR "/apps/all/binutils/2.35-GCCcore-10.2.0/bin/ar")
set(CMAKE_C_COMPILER_AR "")
set(CMAKE_RANLIB "/apps/all/binutils/2.35-GCCcore-10.2.0/bin/ranlib")
set(CMAKE_C_COMPILER_RANLIB "")
set(CMAKE_LINKER "/apps/all/binutils/2.35-GCCcore-10.2.0/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCC )
set(CMAKE_C_COMPILER_LOADED 1)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_C_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_C_COMPILER_ENV_VAR "CC")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_C_COMPILER_ID_RUN 1)
set(CMAKE_C_SOURCE_FILE_EXTENSIONS c;m)
set(CMAKE_C_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_C_LINKER_PREFERENCE 10)

# Save compiler ABI information.
set(CMAKE_C_SIZEOF_DATA_PTR "8")
set(CMAKE_C_COMPILER_ABI "ELF")
set(CMAKE_C_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_C_LIBRARY_ARCHITECTURE "")

if(CMAKE_C_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_C_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_C_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_C_COMPILER_ABI}")
endif()

if(CMAKE_C_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_C_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_C_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_C_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES "/apps/all/GTK+/3.24.17-GCCcore-9.3.0/include;/apps/all/libepoxy/1.5.4-GCCcore-9.3.0/include;/apps/all/Mesa/20.0.2-GCCcore-9.3.0/include;/apps/all/LLVM/9.0.1-GCCcore-9.3.0/include;/apps/all/libunwind/1.3.1-GCCcore-9.3.0/include;/apps/all/libglvnd/1.2.0-GCCcore-9.3.0/include;/apps/all/libdrm/2.4.100-GCCcore-9.3.0/include;/apps/all/zstd/1.4.4-GCCcore-9.3.0/include;/apps/all/lz4/1.9.2-GCCcore-9.3.0/include;/apps/all/Gdk-Pixbuf/2.40.0-GCCcore-9.3.0/include;/apps/all/LibTIFF/4.1.0-GCCcore-9.3.0/include;/apps/all/libjpeg-turbo/2.0.4-GCCcore-9.3.0/include;/apps/all/at-spi2-atk/2.34.2-GCCcore-9.3.0/include;/apps/all/at-spi2-core/2.36.0-GCCcore-9.3.0/include;/apps/all/DBus/1.13.12-GCCcore-9.3.0/include;/apps/all/ATK/2.36.0-GCCcore-9.3.0/include;/apps/all/Pango/1.44.7-GCCcore-9.3.0/include;/apps/all/FriBidi/1.0.9-GCCcore-9.3.0/include;/apps/all/HarfBuzz/2.6.4-GCCcore-9.3.0/include;/apps/all/ICU/66.1-GCCcore-9.3.0/include;/apps/all/cairo/1.16.0-GCCcore-9.3.0/include;/apps/all/pixman/0.38.4-GCCcore-9.3.0/include;/apps/all/GLib/2.64.1-GCCcore-9.3.0/include;/apps/all/PCRE/8.44-GCCcore-9.3.0/include;/apps/all/gettext/0.20.1-GCCcore-9.3.0/include;/apps/all/libxml2/2.9.10-GCCcore-9.3.0/include/libxml2;/apps/all/libxml2/2.9.10-GCCcore-9.3.0/include;/apps/all/XZ/5.2.5-GCCcore-9.3.0/include;/apps/all/libffi/3.3-GCCcore-9.3.0/include;/apps/all/X11/20200222-GCCcore-9.3.0/include;/apps/all/libpciaccess/0.16-GCCcore-9.3.0/include;/apps/all/fontconfig/2.13.92-GCCcore-9.3.0/include;/apps/all/util-linux/2.35-GCCcore-9.3.0/include;/apps/all/freetype/2.10.1-GCCcore-9.3.0/include/freetype2;/apps/all/libpng/1.6.37-GCCcore-9.3.0/include;/apps/all/zlib/1.2.11-GCCcore-9.3.0/include;/apps/all/expat/2.2.9-GCCcore-9.3.0/include;/apps/all/binutils/2.35-GCCcore-10.2.0/include;/apps/all/libarchive/3.4.3-GCCcore-9.3.0/include;/apps/all/cURL/7.72.0-GCCcore-9.3.0/include;/apps/all/bzip2/1.0.8-GCCcore-9.3.0/include;/apps/all/ncurses/6.2-GCCcore-9.3.0/include;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/compiler/include/intel64;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/compiler/include/icc;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/compiler/include;/usr/local/include;/apps/all/GCCcore/9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/include;/apps/all/GCCcore/9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/include-fixed;/apps/all/GCCcore/9.3.0/include;/usr/include")
set(CMAKE_C_IMPLICIT_LINK_LIBRARIES "imf;svml;irng;m;ipgo;decimal;cilkrts;stdc++;gcc;gcc_s;irc;svml;c;gcc;gcc_s;irc_s;dl;c")
set(CMAKE_C_IMPLICIT_LINK_DIRECTORIES "/apps/all/GTK+/3.24.17-GCCcore-9.3.0/lib;/apps/all/libepoxy/1.5.4-GCCcore-9.3.0/lib;/apps/all/Mesa/20.0.2-GCCcore-9.3.0/lib;/apps/all/LLVM/9.0.1-GCCcore-9.3.0/lib;/apps/all/libunwind/1.3.1-GCCcore-9.3.0/lib;/apps/all/libglvnd/1.2.0-GCCcore-9.3.0/lib;/apps/all/libdrm/2.4.100-GCCcore-9.3.0/lib;/apps/all/zstd/1.4.4-GCCcore-9.3.0/lib;/apps/all/lz4/1.9.2-GCCcore-9.3.0/lib;/apps/all/Gdk-Pixbuf/2.40.0-GCCcore-9.3.0/lib;/apps/all/LibTIFF/4.1.0-GCCcore-9.3.0/lib;/apps/all/libjpeg-turbo/2.0.4-GCCcore-9.3.0/lib64;/apps/all/at-spi2-atk/2.34.2-GCCcore-9.3.0/lib;/apps/all/at-spi2-core/2.36.0-GCCcore-9.3.0/lib;/apps/all/DBus/1.13.12-GCCcore-9.3.0/lib;/apps/all/ATK/2.36.0-GCCcore-9.3.0/lib;/apps/all/Pango/1.44.7-GCCcore-9.3.0/lib;/apps/all/FriBidi/1.0.9-GCCcore-9.3.0/lib;/apps/all/HarfBuzz/2.6.4-GCCcore-9.3.0/lib;/apps/all/ICU/66.1-GCCcore-9.3.0/lib;/apps/all/cairo/1.16.0-GCCcore-9.3.0/lib;/apps/all/pixman/0.38.4-GCCcore-9.3.0/lib;/apps/all/GLib/2.64.1-GCCcore-9.3.0/lib;/apps/all/PCRE/8.44-GCCcore-9.3.0/lib;/apps/all/gettext/0.20.1-GCCcore-9.3.0/lib;/apps/all/libxml2/2.9.10-GCCcore-9.3.0/lib;/apps/all/XZ/5.2.5-GCCcore-9.3.0/lib;/apps/all/libffi/3.3-GCCcore-9.3.0/lib64;/apps/all/libffi/3.3-GCCcore-9.3.0/lib;/apps/all/X11/20200222-GCCcore-9.3.0/lib;/apps/all/libpciaccess/0.16-GCCcore-9.3.0/lib;/apps/all/fontconfig/2.13.92-GCCcore-9.3.0/lib;/apps/all/util-linux/2.35-GCCcore-9.3.0/lib;/apps/all/freetype/2.10.1-GCCcore-9.3.0/lib;/apps/all/libpng/1.6.37-GCCcore-9.3.0/lib;/apps/all/zlib/1.2.11-GCCcore-9.3.0/lib;/apps/all/expat/2.2.9-GCCcore-9.3.0/lib;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/compiler/lib/intel64_lin;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/lib/x64;/apps/all/intel-compilers/2021.1.2/compiler/2021.1.2/linux/lib;/apps/all/binutils/2.35-GCCcore-10.2.0/lib;/apps/all/libarchive/3.4.3-GCCcore-9.3.0/lib;/apps/all/cURL/7.72.0-GCCcore-9.3.0/lib;/apps/all/bzip2/1.0.8-GCCcore-9.3.0/lib;/apps/all/ncurses/6.2-GCCcore-9.3.0/lib;/apps/all/binutils/2.35-GCCcore-10.2.0/lib64;/apps/all/libarchive/3.4.3-GCCcore-9.3.0/lib64;/apps/all/cURL/7.72.0-GCCcore-9.3.0/lib64;/apps/all/GCCcore/9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0;/apps/all/GCCcore/9.3.0/lib64;/lib64;/usr/lib64;/apps/all/GCCcore/9.3.0/lib;/lib;/usr/lib")
set(CMAKE_C_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
