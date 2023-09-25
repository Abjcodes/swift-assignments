set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows
swiftc -o solid.exe solid.swift %SWIFTFLAGS%
solid.exe