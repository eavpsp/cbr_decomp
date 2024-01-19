#include "PowerPC_EABI_Support/MSL_C/MSL_Common/strtoul.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/stdio_api.h"
#include "ctype.h"
#include "errno.h"
#include "stl/limits.h"

enum scan_states {
	start          = 0x01,
	check_for_zero = 0x02,
	leading_zero   = 0x04,
	need_digit     = 0x08,
	digit_loop     = 0x10,
	finished       = 0x20,
	failure        = 0x40
};

#define final_state(scan_state) (scan_state & (finished | failure))
#define success(scan_state)     (scan_state & (leading_zero | digit_loop | finished))
#define fetch()                 (count++, (*ReadProc)(ReadProcArg, 0, __GetAChar))
#define unfetch(c)              (*ReadProc)(ReadProcArg, c, __UngetAChar)

/**
 * @note Address: 0x800CBEE0
 * @note Size: 0x378
 */
u32 __strtoul(int base, int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg, int* chars_scanned, int* negative,
              int* overflow)
{
	int scan_state = start;
	int count      = 0;
	int spaces     = 0;
	u32 value      = 0;
	u32 value_max  = 0;
	int c;

	*negative = *overflow = 0;

	if (base < 0 || base == 1 || base > 36 || max_width < 1) {
		scan_state = failure;
	} else {
		c = fetch();
	}

	if (base != 0) {
		value_max = ULONG_MAX / base;
	}

	while (count <= max_width && c != -1 && !final_state(scan_state)) {
		switch (scan_state) {
		case start:
			if (isspace(c)) {
				c = fetch();
				count--;
				spaces++;
				break;
			}

			if (c == '+') {
				c = fetch();
			} else if (c == '-') {
				c         = fetch();
				*negative = 1;
			}

			scan_state = check_for_zero;
			break;

		case check_for_zero:
			if (base == 0 || base == 16) {
				if (c == '0') {
					scan_state = leading_zero;
					c          = fetch();
					break;
				}
			}

			scan_state = need_digit;
			break;

		case 4:
			if (c == 'X' || c == 'x') {
				base       = 16;
				scan_state = need_digit;
				c          = fetch();
				break;
			}

			if (base == 0) {
				base = 8;
			}

			scan_state = digit_loop;
			break;

		case need_digit:
		case digit_loop:
			if (base == 0) {
				base = 10;
			}

			if (!value_max) {
				value_max = ULONG_MAX / base;
			}

			if (isdigit(c)) {
				if ((c -= '0') >= base) {
					if (scan_state == digit_loop) {
						scan_state = finished;
					} else {
						scan_state = failure;
					}

					c += '0';
					break;
				}
			} else if (!isalpha(c) || (toupper(c) - 'A' + 10) >= base) {
				if (scan_state == digit_loop) {
					scan_state = finished;
				} else {
					scan_state = failure;
				}

				break;
			} else {
				c = toupper(c) - 'A' + 10;
			}

			if (value > value_max) {
				*overflow = 1;
			}

			value *= base;

			if (c > (ULONG_MAX - value)) {
				*overflow = 1;
			}

			value += c;
			scan_state = digit_loop;
			c          = fetch();
			break;
		}
	}

	if (!success(scan_state)) {
		count          = 0;
		value          = 0;
		*chars_scanned = 0;
	} else {
		count--;
		*chars_scanned = count + spaces;
	}

	unfetch(c);
	return value;
}

/**
 * @note Address: 0x800CBAD4
 * @note Size: 0x40C
 */
u64 __strtoull(int base, int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg, int* chars_scanned, int* negative,
               int* overflow)
{
	int scan_state = start;
	int count      = 0;
	int spaces     = 0;
	u64 value      = 0;
	u64 value_max  = 0;
	u64 ullmax     = ULLONG_MAX;
	int c;

	*negative = *overflow = 0;

	if (base < 0 || base == 1 || base > 36 || max_width < 1) {
		scan_state = failure;
	} else {
		c = fetch();
	}

	if (base != 0) {
		value_max = ULLONG_MAX / base;
	}

	while (count <= max_width && c != -1 && !final_state(scan_state)) {
		switch (scan_state) {
		case start:
			if (isspace(c)) {
				c = fetch();
				count--;
				spaces++;
				break;
			}

			if (c == '+') {
				c = fetch();
			} else if (c == '-') {
				c         = fetch();
				*negative = 1;
			}

			scan_state = check_for_zero;
			break;

		case check_for_zero:
			if (base == 0 || base == 16) {
				if (c == '0') {
					scan_state = leading_zero;
					c          = fetch();
					break;
				}
			}

			scan_state = need_digit;
			break;

		case leading_zero:
			if (c == 'X' || c == 'x') {
				base       = 16;
				scan_state = need_digit;
				c          = fetch();
				break;
			}

			if (base == 0) {
				base = 8;
			}

			scan_state = digit_loop;
			break;

		case need_digit:
		case digit_loop:
			if (base == 0) {
				base = 10;
			}

			if (!value_max) {
				value_max = ullmax / base;
			}

			if (isdigit(c)) {
				if ((c -= '0') >= base) {
					if (scan_state == digit_loop) {
						scan_state = finished;
					} else {
						scan_state = failure;
					}

					c += '0';
					break;
				}
			} else if (!isalpha(c) || (toupper(c) - 'A' + 10) >= base) {
				if (scan_state == digit_loop) {
					scan_state = finished;
				} else {
					scan_state = failure;
				}

				break;
			} else {
				c = toupper(c) - 'A' + 10;
			}

			if (value > value_max) {
				*overflow = 1;
			}

			value *= base;

			if (c > (ullmax - value)) {
				*overflow = 1;
			}

			value += c;
			scan_state = digit_loop;
			c          = fetch();
			break;
		}
	}

	if (!success(scan_state)) {
		count = 0;
		value = *chars_scanned = 0;
	} else {
		count--;
		*chars_scanned = count + spaces;
	}

	unfetch(c);
	return value;
}

/**
 * @note Address: 0x800CBA28
 * @note Size: 0xAC
 */
u32 strtoul(const char* str, char** end, int base)
{
	u32 value;
	int count, negative, overflow;

	__InStrCtrl isc;
	isc.NextChar         = (char*)str;
	isc.NullCharDetected = 0;

	value = __strtoul(base, 0x7FFFFFFF, &__StringRead, (void*)&isc, &count, &negative, &overflow);

	if (end) {
		*end = (char*)str + count;
	}

	if (overflow) {
		value = ULONG_MAX;
		errno = 0x22;
	} else if (negative) {
		value = -value;
	}

	return value;
}

/**
 * @note Address: N/A
 * @note Size: 0xB4
 */
void strtoull(void)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: 0x800CB938
 * @note Size: 0xF0
 */
s32 strtol(const char* str, char** end, int base)
{
	u32 uvalue;
	s32 svalue;
	int count, negative, overflow;

	__InStrCtrl isc;
	isc.NextChar         = (char*)str;
	isc.NullCharDetected = 0;

	uvalue = __strtoul(base, 0x7FFFFFFF, &__StringRead, (void*)&isc, &count, &negative, &overflow);

	if (end) {
		*end = (char*)str + count;
	}

	if (overflow || (!negative && uvalue > LONG_MAX) || (negative && uvalue > -LONG_MIN)) {
		svalue = (negative ? -LONG_MIN : LONG_MAX);
		errno  = ERANGE;
	} else {
		svalue = (negative ? (s32)-uvalue : (s32)uvalue);
	}

	return svalue;
}

/**
 * @note Address: N/A
 * @note Size: 0x124
 */
void strtoll(void)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0xC0
 */
int atoi(const char* str)
{
	// UNUSED FUNCTION
}

/**
 * @note Address: N/A
 * @note Size: 0xC0
 */
void atol(void)
{
	// UNUSED FUNCTION
}
