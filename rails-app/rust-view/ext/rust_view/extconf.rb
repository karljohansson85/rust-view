require "mkmf"

$LDFLAGS << " $(srcdir)/../../view-rs/target/release/libview_rs.a"

create_makefile("rust_view")
