# RedFox32\_Filesystem

## CONSTANTS

_The following values are in Bytes_
```
FS_ROOT_SIZE = 2048
FS_DISK_MAP_SIZE = (Num Cylinders * Num Sectors per Cylinder * Num Heads) / 8
FS_DIRECTORY_MAP_SIZE = 2048
```

## STRUCTURES
**FS Root**
Identifier
> 4 character string constant "RFFS"
Disk Map
> byte array of size FS\_DISK\_MAP\_SIZE
Root Pointer
> A FS\_CHS\_Address structure


