return {} :: typeof(vector) & {
	withx: (vec: vector, x: number) -> vector,
	withy: (vec: vector, y: number) -> vector,
	withz: (vec: vector, z: number) -> vector,
}
