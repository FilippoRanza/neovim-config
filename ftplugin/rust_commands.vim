:command -nargs=1 Test :normal! o#[test]<Esc>ofn test_<args>() {}<Esc>i<Cr><Esc>O
:command Debug :normal! "dyiwodbg!{&<Esc>"dpa};
:noremap dbg :Debug<Cr>
:command Impl :normal!?struct<Cr><Esc>wvt{y}o<Esc>oimpl <Esc>pi {<Esc>o<Esc>o}<Esc>kcc 

