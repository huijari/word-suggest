(include "io.h")
(include <stdio.h>)
(include <stdlib.h>)

(function readNumber () -> uint16_t
	(decl ((uint16_t value)))
	(scanf "%hu\\n" &value)
	(return value))

(function readWord () -> char*
	(decl ((char* value = (malloc (* 8192 (sizeof char))))))
	(scanf "%8191s\\n" value)
	(return value))

(function writeWord ((char* word)) -> void
	(printf "%s\\n" word))
