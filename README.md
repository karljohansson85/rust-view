# RustView

## Helpful links
- https://guides.rubygems.org/gems-with-extensions/
- https://github.com/flavorjones/ruby-c-extensions-explained/tree/main
- https://blog.skylight.io/introducing-helix/
- https://dev.to/leehambley/sending-complex-structs-to-ruby-from-rust-4e61

## Helpful allocation links
-  https://github.com/ruby/ruby/blob/96db72ce38b27799dd8e80ca00696e41234db6ba/doc/extension.rdoc#encapsulate-c-data-into-a-ruby-object
- https://silverhammermba.github.io/emberb/c/#data
- https://blog.peterzhu.ca/creating-ruby-strings-c/


## Notes
- you can require dynamic libraries immediately, don't need gem.
- if your rust data is pointing to ruby data, then GC will be more complicated.
- ruby(15865,0x20d444c40) malloc: *** error for object 0x105384798: pointer being freed was not allocated

## Presentation
- https://giphy.com/gifs/baby-penguin-penguins-l3cAg07WMsXD2
