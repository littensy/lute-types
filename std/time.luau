type durationdata = {
	seconds: number,
	nanoseconds: number,
}

type durationinterface = {
	create: (seconds: number, nanoseconds: number) -> duration,
	seconds: (seconds: number) -> duration,
	milliseconds: (milliseconds: number) -> duration,
	microseconds: (microseconds: number) -> duration,
	nanoseconds: (nanoseconds: number) -> duration,
	minutes: (minutes: number) -> duration,
	hours: (hours: number) -> duration,
	days: (days: number) -> duration,
	weeks: (weeks: number) -> duration,
	subsecmillis: (self: duration) -> number,
	subsecmicros: (self: duration) -> number,
	subsecnanos: (self: duration) -> number,
	toseconds: (self: duration) -> number,
	tomilliseconds: (self: duration) -> number,
	tomicroseconds: (self: duration) -> number,
	tonanoseconds: (self: duration) -> number,
	__index: durationinterface,
	__add: (a: duration, b: duration) -> duration,
	__sub: (a: duration, b: duration) -> duration,
	__mul: (a: duration, b: number) -> duration,
	__div: (a: duration, b: number) -> duration,
	__eq: (a: duration, b: duration) -> boolean,
	__lt: (a: duration, b: duration) -> boolean,
	__le: (a: duration, b: duration) -> boolean,
	__tostring: (self: duration) -> string,
}

export type duration = typeof(setmetatable({} :: durationdata, {} :: durationinterface))

return {} :: {
	duration: durationinterface,
}
