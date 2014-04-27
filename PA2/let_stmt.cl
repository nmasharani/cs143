let x.Int <- 1, y.Int <- 2, z.Int <- 3 in (x + y + z)

let x.Int <- 1 {
	let y.Int <- 2 {
		let z.Int <- 3 in (x + y + z)
	}
}