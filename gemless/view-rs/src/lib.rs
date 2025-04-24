#[unsafe(no_mangle)]
pub extern "C" fn get_string() -> *const u8 {
    b"Hello from Rust!\0".as_ptr()
}
