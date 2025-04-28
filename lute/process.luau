export type ProcessResult = {
	ok: boolean,
	exitcode: number,
	stdout: string,
	stderr: string,
	signal: string?,
}

export type StdioKind = "none" | "inherit" | "default"

export type ProcessOptions = {
	env: { [string]: string }?,
	shell: boolean | string?,
	cwd: string?,
	stdio: StdioKind?,
}

return {} :: {
	run: (args: { string }, options: ProcessOptions?) -> ProcessResult,
	cwd: () -> string,
	env: { [string]: string },
	homedir: () -> string,
}
