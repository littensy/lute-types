export type HttpMethod = "GET" | "POST" | "PUT" | "DELETE" | "HEAD" | "OPTIONS" | "PATCH"

export type ServeRequest = {
	path: string,
	method: HttpMethod,
	query: { [string]: string },
	headers: { [string]: string },
	body: string,
}

export type ServeResponse = {
	status: number,
	headers: { [string]: string }?,
	body: string,
}

export type RequestHandler = (request: ServeRequest) -> ServeResponse

export type TlsOptions = {
	cert_file_name: string,
	key_file_name: string,
	passphrase: string?,
	ca_file_name: string?,
}

export type ServeConfig = {
	hostname: string?,
	port: number?,
	tls: TlsOptions?,
	handler: RequestHandler,
}

export type ServeHandle = {
	hostname: string,
	port: number,
	close: () -> (),
}

return {} :: {
	get: (url: string) -> string,
	getAsync: (url: string) -> string,
	serve: (configOrHandler: ServeConfig | RequestHandler) -> ServeHandle,
}
