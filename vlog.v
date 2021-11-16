module main

import vweb
import time

struct App{
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8081)
}

['/index']
pub fn (mut app App) index() vweb.Result {
	message := 'Hello, world from Vweb!'
	return $vweb.html()
}

['/time']
fn (mut app App) time() vweb.Result {
	hour := time.now().format()
	return $vweb.html()
}
