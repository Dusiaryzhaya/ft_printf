ft_printf is a custom implementation of the standard printf() function in C, part of the 42 School curriculum. The goal is to recreate printf() from scratch without using the standard library’s version.
Concept:

The project focuses on formatted output, variadic functions, and buffer management, reinforcing string manipulation, memory handling, and bitwise operations.
Key Features:

Handles various format specifiers:
        %c → Character
        %s → String
        %p → Pointer address
        %d / %i → Integer
        %u → Unsigned integer
        %x / %X → Hexadecimal
        %% → Percent sign
        
Uses va_list and va_arg for handling variable arguments.
Optimized output buffering to minimize write calls.
Manages edge cases like NULL pointers and minimum/maximum integer values.
Ensures correctness and performance while following standard printf behavior.
