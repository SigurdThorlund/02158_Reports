module hello

go 1.15

replace queue => ../queue

replace safe_queue => ../safe_queue

require (
	queue v0.0.0-00010101000000-000000000000 // indirect
	safe_queue v0.0.0-00010101000000-000000000000 // indirect
)
