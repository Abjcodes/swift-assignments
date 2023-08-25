set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows
swiftc -o controlFlow.exe controlFlow.swift %SWIFTFLAGS%
controlFlow.exe