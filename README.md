PlistLib
========

# Feature

- Add suffix to specified key of the plist file.
	- Nested key is not supported.

# Usage

```
./PlistLib_Release plist_path targetKeyName suffix
```

```
# ex
./PlistLib_Release hoge.plist CFBundleDisplayName Test
→ output: filePath: hoge.plist. key: CFBundleDisplayName ( AppName + Test )
and overwritten with modified value.
```

