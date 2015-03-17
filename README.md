# Effing Package Manager

Create packages quickly and easily. Currently only support rpms.

## Usage

Package the contents of '$PWD/pkg' into an rpm called 'somepackage':
```base
docker run --rm -it -v $PWD/pkg:/pkg swco/fpm -s dir -t rpm -n "somepackage" -v 1.0 .
```

See the [fpm documentation](https://github.com/jordansissel/fpm/wiki) for more
info on packaging applications.

## Convenient alias
To be able to use fpm as a local app create the following alias. The only limitation is that only your current directory and any subdirectoies can be accessed by fpm.

```bash
alias fpm='docker run --rm -it -v $PWD:/pkg swco/fpm'
```
