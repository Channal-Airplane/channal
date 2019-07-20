extern crate ws;

fn main() {
    ws::listen("127.0.0.1:3012", |out| move |msg| {
        println!("Client Msg {}", msg);
        out.send(msg)
    }).unwrap()
}
