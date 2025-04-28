export type task = {
	success: boolean?,
	result: any,
	co: thread,
}

return {} :: {
	create: <T...>(fn: (T...) -> (), T...) -> task,
	await: (t: task) -> (),
	awaitall: (...task) -> (),
}
