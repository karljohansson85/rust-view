#include "ruby.h"

extern const char *get_string(char * name);
extern const void *drop_string(void * s);

void cRustView_free(void* data);
static VALUE cRustView_alloc(VALUE klass);
static VALUE cRustView_initialize(VALUE self, VALUE name);
static VALUE cRustView_to_s(VALUE self);
void Init_rust_view(void);

VALUE rb_cRustView;

static const rb_data_type_t rust_view_type = {
  .function =
  {
    .dfree = cRustView_free,
  },
  .flags = RUBY_TYPED_FREE_IMMEDIATELY,
};

void cRustView_free(void* data) {
  drop_string(data);
}

static VALUE cRustView_alloc(VALUE klass) {
  return TypedData_Wrap_Struct(klass, &rust_view_type, NULL);
}

static VALUE cRustView_initialize(VALUE self, VALUE name) {
  char* name_cstring = StringValueCStr(name);
  RTYPEDDATA_DATA(self) = (void*) get_string(name_cstring);
  return self;
}

static VALUE cRustView_to_s(VALUE self) {
  char *data;
  TypedData_Get_Struct(self, char, &rust_view_type, data);
  return rb_str_new_static(data, strlen(data));
}

void Init_rust_view(void) {
  rb_cRustView = rb_define_class("RustView", rb_cObject);

  rb_define_alloc_func(rb_cRustView, cRustView_alloc);

  rb_define_method(rb_cRustView, "initialize", cRustView_initialize, 1);
  rb_define_method(rb_cRustView, "to_s", cRustView_to_s, 0);
}
