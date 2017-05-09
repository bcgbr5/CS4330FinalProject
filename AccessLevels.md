## Access Levels
**Swift** allows access restriction in a similar style to the C# or Java, public, default, protected, private, scheme, but has a few modification from the default.

* **Open or Public Access**: are essentially the same as C#'s public access, that is to say any code from anywhere can access it.
* **Internal Access**: simialar to C#'s Internal access which is essentially the same as Java's default access. Items in the same module can access it.
* **File Private**: Allows access only from within the current document.  Unique and allows for variables to be treated like a public variable in the document in which they are defined, but treated differently elsewhere.
*  **Private Access**: Restructed to the "[entity enclosing the decalration](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html)" 

Swift does away with protected as an access level and allows different levels of extension/modification to the class depoending on tyhe access level of the class.

* Classes with any access level other than **Open** can only be subclassed from withing their module.
* Classes with any access level other than **Open** can only be overridden by subclasses from within their module.
* **Open** classes can be overridden and overrridded by subclasses from thier own module or any module that imports them.

Swift also places rettrictions on access levels and types in relation to functions.  A public function can't return a File private type, because the recieving class may not have the same definition of that data type, or that data type at all.  Similarly a public function can't take as a parameter a File private type.

**C#** follows fairly standard Java style permission levels, with the caveat that Java's "default" is renamed to "Internal" and that internal can be stacked with some other permission levels.