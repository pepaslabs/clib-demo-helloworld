# clib-demo-helloworld
An example C program which demonstrates using [clib](https://github.com/clibs/clib) packages.

(Use this as boilerplate which you can fork and edit.)

## Using this project as a starting point

Here's how this project works:

* This project uses [clib](https://github.com/clibs/clib)-style dependencies
  * which are listed in `package.json`
  * the sources for which reside in `dep/`
    * the sources can be updated by running `clib install`
  * all `dep/*/*.c` files will get compiled into `dep/*/*.o` files
* This project produces a single (unix) binary
  * the name of which is determined by the first line of the Makefile (`BIN = helloworld`)
  * the sources for which reside in `src/`
  * all `src/*.c` files will get compiled into `src/*.o` files
  * all `deps/*/*.o` and `src/*.o` files will be linked to create the `helloworld` binary

## License

[MIT](https://opensource.org/licenses/MIT)
