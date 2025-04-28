type JSONPrimitive = nil | number | string | boolean
type Object = { [string]: Value }
type Array = { Value }
export type Value = JSONPrimitive | Array | Object

return {} :: {
	NULL: nil,
	serialize: (value: Value, prettyPrint: boolean?) -> string,
	deserialize: (json: string) -> Value,
}
