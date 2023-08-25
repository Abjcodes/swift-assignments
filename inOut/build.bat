set SWIFTFLAGS=-sdk %SDKROOT% -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows
swiftc -o inoutFns.exe inoutFns.swift %SWIFTFLAGS%
inoutFns.exe