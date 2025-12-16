# datetime-cpp

The C++ `datetime` class helps to manipulate date and time values.

Supported date diapason:

- from Jan 01 4712 BC
- to Dec 31 9999

Supported calendars:

- Julian
- Gregorian

Operations:

- addition and subtraction of two dates and times
- comparison between two datetimes
- extracting date and time parts:
    - year, month, quarter, day, day of week
    - hours, minutes, seconds and milliseconds
- inreasing and decreasing datetime with the specified datetime part
- leap year check
- conversion between calendars
- customized formatted date and time output
- parsing of datetime strings

Time accuracy: milliseconds

No timezone support

Compiler support:

- GNU, MSVC, Embarcadero (ex Borland)
- C++ 11 or higher compliant
