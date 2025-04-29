type ArgKind = "positional" | "flag" | "option"
type ArgOptions = {
	help: string?,
	aliases: { string }?,
	default: string?,
	required: boolean?,
}

type ArgData = {
	name: string,
	kind: ArgKind,
	options: ArgOptions,
}

type ParseResult = {
	values: { [string]: string },
	flags: { [string]: boolean },
	fwdArgs: { string },
}

type ParserData = {
	arguments: { [number]: ArgData },
	positional: { [number]: ArgData },
	parsed: ParseResult,
}

type ParserInterface = {
	parser: () -> Parser,
	add: (self: Parser, name: string, kind: ArgKind, options: ArgOptions) -> (),
	parse: (self: Parser, args: { string }) -> (),
	get: (self: Parser, name: string) -> boolean,
	has: (self: Parser, name: string) -> boolean,
	forwarded: (self: Parser) -> { string }?,
	help: (self: Parser) -> (),
	__index: ParserInterface,
}

export type Parser = typeof(setmetatable({} :: ParserData, {} :: ParserInterface))

return {} :: ParserInterface
