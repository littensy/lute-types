export type array<T> = { T }
export type dictionary<T> = { [string]: T }

return {} :: typeof(table) & {
	map: <K, A, B>(table: { [K]: A }, f: (A) -> B) -> { [K]: B },
	filter: <K, V>(table: { [K]: V }, predicate: (V) -> boolean) -> { [K]: V },
	fold: <K, V, A>(table: { [K]: V }, f: (A, V) -> A, initial: A) -> A,
}
