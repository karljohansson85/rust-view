use std::ffi::CString;

#[unsafe(no_mangle)]
pub extern "C" fn get_string(name: *mut i8) -> *const i8 {
    let msg;

    unsafe {
        let name = CString::from_raw(name);
        msg = format!("Hello from {}!", name.to_str().unwrap());
        let _ = name.into_raw();
    }

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
