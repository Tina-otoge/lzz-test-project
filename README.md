# Lzz test project

This is a very simple project that experiments with Lzz, the "Lazy C++
Compiler".

# Requirements
- lzz, tested with lzz2, build can be downloaded at http://www.lazycplusplus.com/download.html
- A C++ compiler, tested with GCC 9.3.1 and clang 9.0.1

# Building
```bash
make
```

# Conclusion
Lzz is fun to use, however the header file being generated at compile time makes
it impossible for current IDE tools to provide completion and error checking
correctly, maybe there are way around this idk.

I like C and C++ however I don't like the way it works makes it that the
developer has to duplicate code very often. Adding `const` to a method after
implementing it makes me change both the source file and the header, which is
definitely not how things should be.

I dream of a compiler that will read the whole source once to index all the
symbols/prototypes and then will proceed to compile.
