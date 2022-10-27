# VanillePlugin-Packager

VanillePlugin Packager is a **Composer Namespaces Prefixer for WordPress Plugins**, Used to prefix [VanillePlugin WordPress Plugin Framework](https://jakiboy.github.io/VanillePlugin/) And other composer dependencies.  
Resolve **dependencies versions conflicts of WordPress plugins** built using Composer, Without ~~hardcoding~~.

Works also for non Composer plugins, By Wrapping your dependencies with your own custom namespace, in order to avoid conflicts with **other plugins that are loading the same dependencies in different versions**.

<a href="https://jakiboy.github.io/VanillePlugin-Packager/">
	<img src="https://raw.githubusercontent.com/Jakiboy/VanillePlugin-Packager/master/console.png" alt="VanillePlugin Packager">
</a>

## ⚡ Installing:

```
composer global require --dev jakiboy/vanilleplugin-packager
```

## 🔧 Getting Started:

### Display packager help:
```bash
vanilleplugin -h
```

### Regenerate dependency namespaces:
```bash
vanilleplugin -regd -d "Foo/Bar/src" -l "FooBar" -p "prefix"
```

### Regenerate dependency namespaces with disabled capitalization (StudlyCaps):
```bash
vanilleplugin -regd -d "Foo/Bar/src" -l "FooBar" -p "\!prefix"
```

### Regenerate dependency namespaces using random prefix:
```bash
vanilleplugin -regd -d "Foo/Bar/src" -l "FooBar"
```

### Regenerate VanillePlugin namespaces using random prefix:
```bash
vanilleplugin -reg
```

### Regenerate VanillePlugin namespaces:
```bash
vanilleplugin -reg "prefix"
```

### Regenerate VanillePlugin namespaces with disabled capitalization (StudlyCaps):
```bash
vanilleplugin -reg "\!prefix"
```

### Test packaging prefixed namespaces with disabled capitalization (StudlyCaps):
```bash
vanilleplugin -test "\!prefix"
```

## 📋 Options:

```
-d dependency source path (inside vendor folder)
```

```
-l dependency librairy name (Used in Namespaces)
```

```
-p Custom prefix
```

## 📋 Commands:

```
-regd Regenerate dependency namespaces
```

```
-reg Regenerate VanillePlugin namespaces
```

```
-test Test custom prefix after process
```

## Contributing:

Please read [CONTRIBUTING.md](https://github.com/Jakiboy/VanillePlugin-Packager/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning:

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/Jakiboy/VanillePlugin-Packager/tags). 

## Authors:

* **Jihad Sinnaour** - [Jakiboy](https://github.com/Jakiboy) (*Initial work*)

See also the full list of [contributors](https://github.com/Jakiboy/VanillePlugin-Packager/contributors) who participated in this project. Any suggestions (Pull requests) are welcome!

## License:

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Jakiboy/VanillePlugin-Packager/blob/master/LICENSE) file for details.

## Todo:

* Rebuild with **symfony/console**.
* Add **phpunit/phpunit**.
* Use **.phar**.
* Use dynamic **vendor** directory.
* Use dynamic **system** (Plugin) directory.
* Use **regex(i)** instead of pathinfo().

## ⭐ Support:

Please give it a Star if you like the project.

## 💡 Notice:

* *Tested with VanillePlugin & many composer dependencies (e.g. [Twig](https://twig.symfony.com/), [Phpfastcache](https://www.phpfastcache.com/)), But use it at your own risk*.
