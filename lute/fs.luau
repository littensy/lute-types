export type FileHandle = {}

export type FileType = "unknown" | "file" | "dir" | "link" | "fifo" | "socket" | "char" | "block"

export type FileMode = number

export type OpenMode = "r" | "w" | "x" | "a" | "+" | string

return {} :: {
	close: (handle: FileHandle) -> (),
	listdir: (path: string) -> { { name: string, type: FileType } },
	mkdir: (path: string, mode: FileMode?) -> (),
	open: (path: string, mode: OpenMode?) -> FileHandle,
	read: (handle: FileHandle) -> string,
	readasync: (path: string) -> string,
	readfiletostring: (path: string) -> string,
	remove: (path: string) -> (),
	rmdir: (path: string) -> (),
	type: (path: string) -> FileType,
	write: (handle: FileHandle, data: string) -> (),
	writestringtofile: (path: string, data: string) -> (),
}
