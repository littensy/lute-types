export type CpuTimes = {
	sys: number,
	idle: number,
	irq: number,
	nice: number,
	user: number,
}

export type CpuInfo = {
	model: string,
	speed: number,
	times: CpuTimes,
}

return {} :: {
	os: string,
	arch: string,
	cpus: () -> { CpuInfo },
	threadcount: () -> number,
}
