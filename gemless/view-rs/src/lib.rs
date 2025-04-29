use std::ffi::CString;

#[unsafe(no_mangle)]
pub extern "C" fn get_string() -> *const i8 {
    let msg = "Hello from Rust!";
    let cstr = CString::new(msg).unwrap();
    cstr.into_raw()
}

#[unsafe(no_mangle)]
pub extern "C" fn drop_string(s: *mut i8) {
    if s.is_null() {
        return;
    }

    unsafe {
        let _ = CString::from_raw(s);
    }
}
