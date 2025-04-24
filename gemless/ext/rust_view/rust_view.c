#include "rust_view.h"

extern const char *get_string(void);


VALUE rb_mRustView;

static VALUE
method_hello(VALUE self)
{
  return rb_str_new_cstr(get_string());
}

void
Init_rust_view(void)
{
  rb_mRustView = rb_define_module("RustView");
  rb_define_method(rb_mRustView, "hello", method_hello, 0);
}
