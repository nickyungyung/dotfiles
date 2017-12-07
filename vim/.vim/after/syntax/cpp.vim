" Vim syntax file
" Language: C++ Additions
" Maintainer: Jon Haggblad <jon@haeggblad.com>
" URL: http://www.haeggblad.com
" Last Change: 12 Oct 2016
" Version: 0.6
" Changelog:
"   0.1 - initial version.
"   0.2 - C++14
"   0.3 - Incorporate lastest changes from Mizuchi/STL-Syntax
"   0.4 - Add template function highlight
"   0.5 - Redo template function highlight to be more robust. Add options.
"   0.6 - more C++14, C++17, library concepts
"
" Additional Vim syntax highlighting for C++ (including C++11/14/17)
"
" This file contains additional syntax highlighting that I use for C++11/14
" development in Vim. Compared to the standard syntax highlighting for C++ it
" adds highlighting of (user defined) functions and the containers and types
" in the standard library / boost.
"
" Based on:
"   http://stackoverflow.com/q/736701
"   http://www.vim.org/scripts/script.php?script_id=4293
"   http://www.vim.org/scripts/script.php?script_id=2224
"   http://www.vim.org/scripts/script.php?script_id=1640
"   http://www.vim.org/scripts/script.php?script_id=3064


" -----------------------------------------------------------------------------
"  Standard library types.
"
" Mainly based on the excellent STL Syntax vim script by
" Mizuchi <ytj000@gmail.com>
"   http://www.vim.org/scripts/script.php?script_id=4293
" which in turn is based on the scripts
"   http://www.vim.org/scripts/script.php?script_id=2224
"   http://www.vim.org/scripts/script.php?script_id=1640
" -----------------------------------------------------------------------------

syntax keyword cppSTLconstant badbit
syntax keyword cppSTLconstant cerr
syntax keyword cppSTLconstant cin
syntax keyword cppSTLconstant clog
syntax keyword cppSTLconstant cout
syntax keyword cppSTLconstant digits
syntax keyword cppSTLconstant digits10
syntax keyword cppSTLconstant eofbit
syntax keyword cppSTLconstant failbit
syntax keyword cppSTLconstant goodbit
syntax keyword cppSTLconstant has_denorm
syntax keyword cppSTLconstant has_denorm_loss
syntax keyword cppSTLconstant has_infinity
syntax keyword cppSTLconstant has_quiet_NaN
syntax keyword cppSTLconstant has_signaling_NaN
syntax keyword cppSTLconstant is_bounded
syntax keyword cppSTLconstant is_exact
syntax keyword cppSTLconstant is_iec559
syntax keyword cppSTLconstant is_integer
syntax keyword cppSTLconstant is_modulo
syntax keyword cppSTLconstant is_signed
syntax keyword cppSTLconstant is_specialized
syntax keyword cppSTLconstant max_digits10
syntax keyword cppSTLconstant max_exponent
syntax keyword cppSTLconstant max_exponent10
syntax keyword cppSTLconstant min_exponent
syntax keyword cppSTLconstant min_exponent10
syntax keyword cppSTLconstant nothrow
syntax keyword cppSTLconstant npos
syntax keyword cppSTLconstant radix
syntax keyword cppSTLconstant round_style
syntax keyword cppSTLconstant tinyness_before
syntax keyword cppSTLconstant traps
syntax keyword cppSTLconstant wcerr
syntax keyword cppSTLconstant wcin
syntax keyword cppSTLconstant wclog
syntax keyword cppSTLconstant wcout
syntax keyword cppSTLexception bad_alloc
syntax keyword cppSTLexception bad_array_new_length
syntax keyword cppSTLexception bad_exception
syntax keyword cppSTLexception bad_typeid bad_cast
syntax keyword cppSTLexception domain_error
syntax keyword cppSTLexception exception
syntax keyword cppSTLexception invalid_argument
syntax keyword cppSTLexception length_error
syntax keyword cppSTLexception logic_error
syntax keyword cppSTLexception out_of_range
syntax keyword cppSTLexception overflow_error
syntax keyword cppSTLexception range_error
syntax keyword cppSTLexception runtime_error
syntax keyword cppSTLexception underflow_error
syntax keyword cppSTLtype numeric_limits
syntax keyword cppSTLios boolalpha
syntax keyword cppSTLios dec
syntax keyword cppSTLios defaultfloat
syntax keyword cppSTLios endl
syntax keyword cppSTLios ends
syntax keyword cppSTLios fixed
syntax keyword cppSTLios floatfield
syntax keyword cppSTLios flush
syntax keyword cppSTLios get_money
syntax keyword cppSTLios get_time
syntax keyword cppSTLios hex
syntax keyword cppSTLios hexfloat
syntax keyword cppSTLios internal
syntax keyword cppSTLios noboolalpha
syntax keyword cppSTLios noshowbase
syntax keyword cppSTLios noshowpoint
syntax keyword cppSTLios noshowpos
syntax keyword cppSTLios noskipws
syntax keyword cppSTLios nounitbuf
syntax keyword cppSTLios nouppercase
syntax keyword cppSTLios oct
syntax keyword cppSTLios put_money
syntax keyword cppSTLios put_time
syntax keyword cppSTLios resetiosflags
syntax keyword cppSTLios scientific
syntax keyword cppSTLios setbase
syntax keyword cppSTLios setfill
syntax keyword cppSTLios setiosflags
syntax keyword cppSTLios setprecision
syntax keyword cppSTLios setw
syntax keyword cppSTLios showbase
syntax keyword cppSTLios showpoint
syntax keyword cppSTLios showpos
syntax keyword cppSTLios skipws
syntax keyword cppSTLios unitbuf
syntax keyword cppSTLios uppercase
"syntax keyword cppSTLios ws
syntax keyword cppSTLiterator back_insert_iterator
syntax keyword cppSTLiterator bidirectional_iterator
syntax keyword cppSTLiterator const_iterator
syntax keyword cppSTLiterator const_reverse_iterator
syntax keyword cppSTLiterator forward_iterator
syntax keyword cppSTLiterator front_insert_iterator
syntax keyword cppSTLiterator input_iterator
syntax keyword cppSTLiterator insert_iterator
syntax keyword cppSTLiterator istreambuf_iterator
syntax keyword cppSTLiterator istream_iterator
syntax keyword cppSTLiterator iterator
syntax keyword cppSTLiterator ostream_iterator
syntax keyword cppSTLiterator output_iterator
syntax keyword cppSTLiterator random_access_iterator
syntax keyword cppSTLiterator raw_storage_iterator
syntax keyword cppSTLiterator reverse_bidirectional_iterator
syntax keyword cppSTLiterator reverse_iterator
syntax keyword cppSTLiterator_tag bidirectional_iterator_tag
syntax keyword cppSTLiterator_tag forward_iterator_tag
syntax keyword cppSTLiterator_tag input_iterator_tag
syntax keyword cppSTLiterator_tag output_iterator_tag
syntax keyword cppSTLiterator_tag random_access_iterator_tag
syntax keyword cppSTLnamespace rel_ops
syntax keyword cppSTLnamespace std
syntax keyword cppSTLnamespace experimental
syntax keyword cppSTLtype allocator
syntax keyword cppSTLtype auto_ptr
syntax keyword cppSTLtype basic_filebuf
syntax keyword cppSTLtype basic_fstream
syntax keyword cppSTLtype basic_ifstream
syntax keyword cppSTLtype basic_iostream
syntax keyword cppSTLtype basic_istream
syntax keyword cppSTLtype basic_istringstream
syntax keyword cppSTLtype basic_ofstream
syntax keyword cppSTLtype basic_ostream
syntax keyword cppSTLtype basic_ostringstream
syntax keyword cppSTLtype basic_streambuf
syntax keyword cppSTLtype basic_string
syntax keyword cppSTLtype basic_stringbuf
syntax keyword cppSTLtype basic_stringstream
syntax keyword cppSTLtype binary_compose
syntax keyword cppSTLtype binder1st
syntax keyword cppSTLtype binder2nd
syntax keyword cppSTLtype bitset
syntax keyword cppSTLtype char_traits
syntax keyword cppSTLtype char_type
syntax keyword cppSTLtype const_mem_fun1_t
syntax keyword cppSTLtype const_mem_fun_ref1_t
syntax keyword cppSTLtype const_mem_fun_ref_t
syntax keyword cppSTLtype const_mem_fun_t
syntax keyword cppSTLtype const_pointer
syntax keyword cppSTLtype const_reference
syntax keyword cppSTLtype container_type
syntax keyword cppSTLtype deque
syntax keyword cppSTLtype difference_type
syntax keyword cppSTLtype div_t
syntax keyword cppSTLtype double_t
syntax keyword cppSTLtype filebuf
syntax keyword cppSTLtype first_type
syntax keyword cppSTLtype float_denorm_style
syntax keyword cppSTLtype float_round_style
syntax keyword cppSTLtype float_t
syntax keyword cppSTLtype fstream
syntax keyword cppSTLtype gslice_array
syntax keyword cppSTLtype ifstream
syntax keyword cppSTLtype imaxdiv_t
syntax keyword cppSTLtype indirect_array
syntax keyword cppSTLtype int_type
syntax keyword cppSTLtype ios_base
syntax keyword cppSTLtype iostream
syntax keyword cppSTLtype istream
syntax keyword cppSTLtype istringstream
syntax keyword cppSTLtype istrstream
syntax keyword cppSTLtype iterator_traits
syntax keyword cppSTLtype key_compare
syntax keyword cppSTLtype key_type
syntax keyword cppSTLtype ldiv_t
syntax keyword cppSTLtype list
syntax keyword cppSTLtype lldiv_t
syntax keyword cppSTLtype map
syntax keyword cppSTLtype mapped_type
syntax keyword cppSTLtype mask_array
syntax keyword cppSTLtype mem_fun1_t
syntax keyword cppSTLtype mem_fun_ref1_t
syntax keyword cppSTLtype mem_fun_ref_t
syntax keyword cppSTLtype mem_fun_t
syntax keyword cppSTLtype multimap
syntax keyword cppSTLtype multiset
syntax keyword cppSTLtype nothrow_t
syntax keyword cppSTLtype off_type
syntax keyword cppSTLtype ofstream
syntax keyword cppSTLtype ostream
syntax keyword cppSTLtype ostringstream
syntax keyword cppSTLtype ostrstream
syntax keyword cppSTLtype pair
syntax keyword cppSTLtype pointer
syntax keyword cppSTLtype pointer_to_binary_function
syntax keyword cppSTLtype pointer_to_unary_function
syntax keyword cppSTLtype pos_type
syntax keyword cppSTLtype priority_queue
syntax keyword cppSTLtype queue
syntax keyword cppSTLtype reference
syntax keyword cppSTLtype second_type
syntax keyword cppSTLtype sequence_buffer
syntax keyword cppSTLtype set
syntax keyword cppSTLtype sig_atomic_t
syntax keyword cppSTLtype size_type
syntax keyword cppSTLtype slice_array
syntax keyword cppSTLtype stack
syntax keyword cppSTLtype streambuf
syntax keyword cppSTLtype streamsize
syntax keyword cppSTLtype string
syntax keyword cppSTLtype stringbuf
syntax keyword cppSTLtype stringstream
syntax keyword cppSTLtype strstream
syntax keyword cppSTLtype strstreambuf
syntax keyword cppSTLtype temporary_buffer
syntax keyword cppSTLtype test_type
syntax keyword cppSTLtype time_t
syntax keyword cppSTLtype tm
syntax keyword cppSTLtype traits_type
syntax keyword cppSTLtype type_info
syntax keyword cppSTLtype u16string
syntax keyword cppSTLtype u32string
syntax keyword cppSTLtype unary_compose
syntax keyword cppSTLtype unary_negate
syntax keyword cppSTLtype valarray
syntax keyword cppSTLtype value_compare
syntax keyword cppSTLtype value_type
syntax keyword cppSTLtype vector
syntax keyword cppSTLtype wfilebuf
syntax keyword cppSTLtype wfstream
syntax keyword cppSTLtype wifstream
syntax keyword cppSTLtype wiostream
syntax keyword cppSTLtype wistream
syntax keyword cppSTLtype wistringstream
syntax keyword cppSTLtype wofstream
syntax keyword cppSTLtype wostream
syntax keyword cppSTLtype wostringstream
syntax keyword cppSTLtype wstreambuf
syntax keyword cppSTLtype wstring
syntax keyword cppSTLtype wstringbuf
syntax keyword cppSTLtype wstringstream

syntax keyword cppSTLtype mbstate_t

syntax keyword cppSTLconstant MB_LEN_MAX
syntax keyword cppSTLconstant MB_CUR_MAX
syntax keyword cppSTLconstant __STDC_UTF_16__
syntax keyword cppSTLconstant __STDC_UTF_32__

syntax keyword cppSTLtype wctrans_t
syntax keyword cppSTLtype wctype_t
syntax keyword cppSTLtype wint_t

syntax keyword cppSTLconstant WEOF
syntax keyword cppSTLconstant WCHAR_MIN
syntax keyword cppSTLconstant WCHAR_MAX


if !exists("cpp_no_cpp11")
    syntax keyword cppSTLconstant nullptr

    " containers (array, vector, list, *map, *set, ...)
    syntax keyword cppSTLtype array

    " atomic
    syntax keyword cppSTLtype atomic
    syntax keyword cppSTLtype atomic_flag
    syntax keyword cppSTLtype atomic_bool
    syntax keyword cppSTLtype atomic_char
    syntax keyword cppSTLtype atomic_schar
    syntax keyword cppSTLtype atomic_uchar
    syntax keyword cppSTLtype atomic_short
    syntax keyword cppSTLtype atomic_ushort
    syntax keyword cppSTLtype atomic_int
    syntax keyword cppSTLtype atomic_uint
    syntax keyword cppSTLtype atomic_long
    syntax keyword cppSTLtype atomic_ulong
    syntax keyword cppSTLtype atomic_llong
    syntax keyword cppSTLtype atomic_ullong
    syntax keyword cppSTLtype atomic_char16_t
    syntax keyword cppSTLtype atomic_char32_t
    syntax keyword cppSTLtype atomic_wchar_t
    syntax keyword cppSTLtype atomic_int_least8_t
    syntax keyword cppSTLtype atomic_uint_least8_t
    syntax keyword cppSTLtype atomic_int_least16_t
    syntax keyword cppSTLtype atomic_uint_least16_t

    syntax keyword cppSTLtype atomic_int_least32_t
    syntax keyword cppSTLtype atomic_uint_least32_t
    syntax keyword cppSTLtype atomic_int_least64_t
    syntax keyword cppSTLtype atomic_uint_least64_t
    syntax keyword cppSTLtype atomic_int_fast8_t
    syntax keyword cppSTLtype atomic_uint_fast8_t
    syntax keyword cppSTLtype atomic_int_fast16_t
    syntax keyword cppSTLtype atomic_uint_fast16_t
    syntax keyword cppSTLtype atomic_int_fast32_t
    syntax keyword cppSTLtype atomic_uint_fast32_t
    syntax keyword cppSTLtype atomic_int_fast64_t
    syntax keyword cppSTLtype atomic_uint_fast64_t
    syntax keyword cppSTLtype atomic_intptr_t
    syntax keyword cppSTLtype atomic_uintptr_t
    syntax keyword cppSTLtype atomic_size_t
    syntax keyword cppSTLtype atomic_ptrdiff_t
    syntax keyword cppSTLtype atomic_intmax_t
    syntax keyword cppSTLtype atomic_uintmax_t
    syntax keyword cppSTLconstant ATOMIC_FLAG_INIT
    syntax keyword cppSTLenum memory_order

    " chrono
    syntax keyword cppSTLnamespace chrono
    syntax keyword cppSTLcast duration_cast
    syntax keyword cppSTLcast time_point_cast
    syntax keyword cppSTLtype duration
    syntax keyword cppSTLtype system_clock
    syntax keyword cppSTLtype steady_clock
    syntax keyword cppSTLtype high_resolution_clock
    syntax keyword cppSTLtype time_point
    syntax keyword cppSTLtype nanoseconds
    syntax keyword cppSTLtype microseconds
    syntax keyword cppSTLtype milliseconds
    syntax keyword cppSTLtype seconds
    syntax keyword cppSTLtype minutes
    syntax keyword cppSTLtype hours
    syntax keyword cppSTLtype treat_as_floating_point
    syntax keyword cppSTLtype duration_values
    " syntax keyword cppSTLtype rep period

    " condition_variable
    syntax keyword cppSTLtype condition_variable

    " cstddef
    syntax keyword cppSTLtype nullptr_t max_align_t

    " exception
    syntax keyword cppSTLtype exception_ptr
    syntax keyword cppSTLtype nested_exception

    " forward_list
    syntax keyword cppSTLtype forward_list

    " functional
    syntax keyword cppSTLexception bad_function_call
    syntax keyword cppSTLconstant _1 _2 _3 _4 _5 _6 _7 _8 _9
    syntax keyword cppSTLtype hash
    syntax keyword cppSTLtype is_bind_expression
    syntax keyword cppSTLtype is_placeholder
    syntax keyword cppSTLtype reference_wrapper

    " future
    syntax keyword cppSTLtype future
    syntax keyword cppSTLtype packaged_task
    syntax keyword cppSTLtype promise
    syntax keyword cppSTLtype shared_future
    syntax keyword cppSTLenum future_status
    syntax keyword cppSTLenum future_errc
    syntax keyword cppSTLenum launch
    syntax keyword cppSTLexception future_error

    " initializer_list
    syntax keyword cppSTLtype initializer_list

    " io
    syntax keyword cppSTLenum io_errc

    " iterator
    syntax keyword cppSTLiterator move_iterator

    " limits
    syntax keyword cppSTLconstant max_digits10

    " locale
    syntax keyword cppSTLtype wstring_convert
    syntax keyword cppSTLtype wbuffer_convert
    syntax keyword cppSTLtype codecvt_utf8
    syntax keyword cppSTLtype codecvt_utf16
    syntax keyword cppSTLtype codecvt_utf8_utf16
    syntax keyword cppSTLtype codecvt_mode

    " memory
    syntax keyword cppSTLtype unique_ptr
    syntax keyword cppSTLtype shared_ptr
    syntax keyword cppSTLtype weak_ptr
    syntax keyword cppSTLtype owner_less
    syntax keyword cppSTLtype enable_shared_from_this
    syntax keyword cppSTLtype default_delete
    syntax keyword cppSTLtype allocator_traits
    syntax keyword cppSTLtype allocator_type
    syntax keyword cppSTLtype allocator_arg_t
    syntax keyword cppSTLtype uses_allocator
    syntax keyword cppSTLtype scoped_allocator_adaptor
    syntax keyword cppSTLtype pointer_safety
    syntax keyword cppSTLtype pointer_traits
    syntax keyword cppSTLconstant allocator_arg
    syntax keyword cppSTLexception bad_weak_ptr
    syntax keyword cppSTLcast static_pointer_cast
    syntax keyword cppSTLcast dynamic_pointer_cast
    syntax keyword cppSTLcast const_pointer_cast

    " mutex
    syntax keyword cppSTLtype mutex
    syntax keyword cppSTLtype timed_mutex
    syntax keyword cppSTLtype recursive_mutex
    syntax keyword cppSTLtype recursive_timed_mutex
    syntax keyword cppSTLtype lock_guard
    syntax keyword cppSTLtype unique_lock
    syntax keyword cppSTLtype defer_lock_t
    syntax keyword cppSTLtype try_to_lock_t
    syntax keyword cppSTLtype adopt_lock_t
    syntax keyword cppSTLtype once_flag
    syntax keyword cppSTLtype condition_variable_any
    syntax keyword cppSTLenum cv_status
    syntax keyword cppSTLconstant defer_lock try_to_lock adopt_lock
    " Note: unique_lock has method 'mutex()', but already set as cppSTLtype

    " new
    syntax keyword cppSTLexception bad_array_new_length

    " numerics, cmath
    syntax keyword cppSTLconstant HUGE_VALF
    syntax keyword cppSTLconstant HUGE_VALL
    syntax keyword cppSTLconstant INFINITY
    syntax keyword cppSTLconstant NAN
    syntax keyword cppSTLconstant math_errhandling
    syntax keyword cppSTLconstant MATH_ERRNO
    syntax keyword cppSTLconstant MATH_ERREXCEPT
    syntax keyword cppSTLconstant FP_NORMAL
    syntax keyword cppSTLconstant FP_SUBNORMAL
    syntax keyword cppSTLconstant FP_ZERO
    syntax keyword cppSTLconstant FP_INFINITY
    syntax keyword cppSTLconstant FP_NAN
    syntax keyword cppSTLconstant FLT_EVAL_METHOD

    " random
    syntax keyword cppSTLtype linear_congruential_engine
    syntax keyword cppSTLtype mersenne_twister_engine
    syntax keyword cppSTLtype subtract_with_carry_engine
    syntax keyword cppSTLtype discard_block_engine
    syntax keyword cppSTLtype independent_bits_engine
    syntax keyword cppSTLtype shuffle_order_engine
    syntax keyword cppSTLtype random_device
    syntax keyword cppSTLtype default_random_engine
    syntax keyword cppSTLtype minstd_rand0
    syntax keyword cppSTLtype minstd_rand
    syntax keyword cppSTLtype mt19937
    syntax keyword cppSTLtype mt19937_64
    syntax keyword cppSTLtype ranlux24_base
    syntax keyword cppSTLtype ranlux48_base
    syntax keyword cppSTLtype ranlux24
    syntax keyword cppSTLtype ranlux48
    syntax keyword cppSTLtype knuth_b
    syntax keyword cppSTLtype uniform_int_distribution
    syntax keyword cppSTLtype uniform_real_distribution
    syntax keyword cppSTLtype bernoulli_distribution
    syntax keyword cppSTLtype binomial_distribution
    syntax keyword cppSTLtype negative_binomial_distribution
    syntax keyword cppSTLtype geometric_distribution
    syntax keyword cppSTLtype poisson_distribution
    syntax keyword cppSTLtype exponential_distribution
    syntax keyword cppSTLtype gamma_distribution
    syntax keyword cppSTLtype weibull_distribution
    syntax keyword cppSTLtype extreme_value_distribution
    syntax keyword cppSTLtype normal_distribution
    syntax keyword cppSTLtype lognormal_distribution
    syntax keyword cppSTLtype chi_squared_distribution
    syntax keyword cppSTLtype cauchy_distribution
    syntax keyword cppSTLtype fisher_f_distribution
    syntax keyword cppSTLtype student_t_distribution
    syntax keyword cppSTLtype discrete_distribution
    syntax keyword cppSTLtype piecewise_constant_distribution
    syntax keyword cppSTLtype piecewise_linear_distribution
    syntax keyword cppSTLtype seed_seq

    " ratio
    syntax keyword cppSTLtype ratio
    syntax keyword cppSTLtype yocto
    syntax keyword cppSTLtype zepto
    syntax keyword cppSTLtype atto
    syntax keyword cppSTLtype femto
    syntax keyword cppSTLtype pico
    syntax keyword cppSTLtype nano
    syntax keyword cppSTLtype micro
    syntax keyword cppSTLtype milli
    syntax keyword cppSTLtype centi
    syntax keyword cppSTLtype deci
    syntax keyword cppSTLtype deca
    syntax keyword cppSTLtype hecto
    syntax keyword cppSTLtype kilo
    syntax keyword cppSTLtype mega
    syntax keyword cppSTLtype giga
    syntax keyword cppSTLtype tera
    syntax keyword cppSTLtype peta
    syntax keyword cppSTLtype exa
    syntax keyword cppSTLtype zetta
    syntax keyword cppSTLtype yotta
    syntax keyword cppSTLtype ratio_add
    syntax keyword cppSTLtype ratio_subtract
    syntax keyword cppSTLtype ratio_multiply
    syntax keyword cppSTLtype ratio_divide
    syntax keyword cppSTLtype ratio_equal
    syntax keyword cppSTLtype ratio_not_equal
    syntax keyword cppSTLtype ratio_less
    syntax keyword cppSTLtype ratio_less_equal
    syntax keyword cppSTLtype ratio_greater
    syntax keyword cppSTLtype ratio_greater_equal

    " regex
    syntax keyword cppSTLtype basic_regex
    syntax keyword cppSTLtype sub_match
    syntax keyword cppSTLtype match_results
    syntax keyword cppSTLtype regex_traits
    syntax keyword cppSTLtype regex_match regex_search regex_replace
    syntax keyword cppSTLiterator regex_iterator
    syntax keyword cppSTLiterator regex_token_iterator
    syntax keyword cppSTLexception regex_error
    syntax keyword cppSTLtype syntax_option_type match_flag_type error_type

    " system_error
    syntax keyword cppSTLenum errc
    syntax keyword cppSTLtype system_error
    syntax keyword cppSTLtype error_code
    syntax keyword cppSTLtype error_condition
    syntax keyword cppSTLtype error_category
    syntax keyword cppSTLtype is_error_code_enum
    syntax keyword cppSTLtype is_error_condition_enum

    " thread
    syntax keyword cppSTLnamespace this_thread
    syntax keyword cppSTLtype thread

    " tuple
    syntax keyword cppSTLtype tuple
    syntax keyword cppSTLtype tuple_size
    syntax keyword cppSTLtype tuple_element
    " syntax keyword cppSTLconstant ignore

    " typeindex
    syntax keyword cppSTLtype type_index

    " type_traits
    syntax keyword cppSTLtype is_void
    syntax keyword cppSTLtype is_integral
    syntax keyword cppSTLtype is_floating_point
    syntax keyword cppSTLtype is_array
    syntax keyword cppSTLtype is_enum
    syntax keyword cppSTLtype is_union
    syntax keyword cppSTLtype is_class
    syntax keyword cppSTLtype is_function
    syntax keyword cppSTLtype is_pointer
    syntax keyword cppSTLtype is_lvalue_reference
    syntax keyword cppSTLtype is_rvalue_reference
    syntax keyword cppSTLtype is_member_object_pointer
    syntax keyword cppSTLtype is_member_function_pointer
    syntax keyword cppSTLtype is_fundamental
    syntax keyword cppSTLtype is_arithmetic
    syntax keyword cppSTLtype is_scalar
    syntax keyword cppSTLtype is_object
    syntax keyword cppSTLtype is_compound
    syntax keyword cppSTLtype is_reference
    syntax keyword cppSTLtype is_member_pointer
    syntax keyword cppSTLtype is_const
    syntax keyword cppSTLtype is_volatile
    syntax keyword cppSTLtype is_trivial
    syntax keyword cppSTLtype is_trivially_copyable
    syntax keyword cppSTLtype is_standard_layout
    syntax keyword cppSTLtype is_pod
    syntax keyword cppSTLtype is_literal_type
    syntax keyword cppSTLtype is_empty
    syntax keyword cppSTLtype is_polymorphic
    syntax keyword cppSTLtype is_abstract
    syntax keyword cppSTLtype is_signed
    syntax keyword cppSTLtype is_unsigned
    syntax keyword cppSTLtype is_constructible
    syntax keyword cppSTLtype is_trivially_constructible
    syntax keyword cppSTLtype is_nothrow_constructible
    syntax keyword cppSTLtype is_default_constructible
    syntax keyword cppSTLtype is_trivially_default_constructible
    syntax keyword cppSTLtype is_nothrow_default_constructible
    syntax keyword cppSTLtype is_copy_constructible
    syntax keyword cppSTLtype is_trivially_copy_constructible
    syntax keyword cppSTLtype is_nothrow_copy_constructible
    syntax keyword cppSTLtype is_move_constructible
    syntax keyword cppSTLtype is_trivially_move_constructible
    syntax keyword cppSTLtype is_nothrow_move_constructible
    syntax keyword cppSTLtype is_assignable
    syntax keyword cppSTLtype is_trivially_assignable
    syntax keyword cppSTLtype is_nothrow_assignable
    syntax keyword cppSTLtype is_copy_assignable
    syntax keyword cppSTLtype is_trivially_copy_assignable
    syntax keyword cppSTLtype is_nothrow_copy_assignable
    syntax keyword cppSTLtype is_move_assignable
    syntax keyword cppSTLtype is_trivially_move_assignable
    syntax keyword cppSTLtype is_nothrow_move_assignable
    syntax keyword cppSTLtype is_destructible
    syntax keyword cppSTLtype is_trivially_destructible
    syntax keyword cppSTLtype is_nothrow_destructible
    syntax keyword cppSTLtype has_virtual_destructor
    syntax keyword cppSTLtype alignment_of
    syntax keyword cppSTLtype rank
    syntax keyword cppSTLtype extent
    syntax keyword cppSTLtype is_same
    syntax keyword cppSTLtype is_base_of
    syntax keyword cppSTLtype is_convertible
    syntax keyword cppSTLtype remove_cv
    syntax keyword cppSTLtype remove_const
    syntax keyword cppSTLtype remove_volatile
    syntax keyword cppSTLtype add_cv
    syntax keyword cppSTLtype add_const
    syntax keyword cppSTLtype add_volatile
    syntax keyword cppSTLtype remove_reference
    syntax keyword cppSTLtype add_lvalue_reference
    syntax keyword cppSTLtype add_rvalue_reference
    syntax keyword cppSTLtype remove_pointer
    syntax keyword cppSTLtype add_pointer
    syntax keyword cppSTLtype make_signed
    syntax keyword cppSTLtype make_unsigned
    syntax keyword cppSTLtype remove_extent
    syntax keyword cppSTLtype remove_all_extents
    syntax keyword cppSTLtype aligned_storage
    syntax keyword cppSTLtype aligned_union
    syntax keyword cppSTLtype decay
    syntax keyword cppSTLtype enable_if
    syntax keyword cppSTLtype conditional
    syntax keyword cppSTLtype common_type
    syntax keyword cppSTLtype underlying_type
    syntax keyword cppSTLtype result_of
    syntax keyword cppSTLtype integral_constant
    syntax keyword cppSTLtype true_type
    syntax keyword cppSTLtype false_type

    " unordered_map, unordered_set, unordered_multimap, unordered_multiset
    syntax keyword cppSTLtype unordered_map
    syntax keyword cppSTLtype unordered_set
    syntax keyword cppSTLtype unordered_multimap
    syntax keyword cppSTLtype unordered_multiset
    syntax keyword cppSTLtype hasher
    syntax keyword cppSTLtype key_equal
    syntax keyword cppSTLiterator local_iterator
    syntax keyword cppSTLiterator const_local_iterator

    " utility
    syntax keyword cppSTLtype piecewise_construct_t
    syntax keyword cppSTLconstant piecewise_construct

    " raw string literals
    syntax region cppRawString matchgroup=cppRawDelimiter start=@\%(u8\|[uLU]\)\=R"\z([[:alnum:]_{}[\]#<>%:;.?*\+\-/\^&|~!=,"']\{,16}\)(@ end=/)\z1"/ contains=@Spell

    syn match cNumber "0b[01]\+"
endif " C++11


if !exists("cpp_no_cpp14")
    " chrono
    syntax keyword cppSTLnamespace literals
    syntax keyword cppSTLnamespace chrono_literals

    " utility
    syntax keyword cppSTLtype integer_sequence
    syntax keyword cppSTLtype index_sequence
    syntax keyword cppSTLtype make_integer_sequence
    syntax keyword cppSTLtype make_index_sequence
    syntax keyword cppSTLtype index_sequence_for

    " shared_mutex
    syntax keyword cppSTLtype shared_timed_mutex
    syntax keyword cppSTLtype shared_lock

    " string
    syntax keyword cppSTLnamespace string_literals

    " tuple
    syntax keyword cppSTLtype tuple_element_t

    " type_traits
    syntax keyword cppSTLtype is_null_pointer
    syntax keyword cppSTLtype remove_cv_t
    syntax keyword cppSTLtype remove_const_t
    syntax keyword cppSTLtype remove_volatile_t
    syntax keyword cppSTLtype add_cv_t
    syntax keyword cppSTLtype add_const_t
    syntax keyword cppSTLtype add_volatile_t
    syntax keyword cppSTLtype remove_reference_t
    syntax keyword cppSTLtype add_lvalue_reference_t
    syntax keyword cppSTLtype add_rvalue_reference_t
    syntax keyword cppSTLtype remove_pointer_t
    syntax keyword cppSTLtype add_pointer_t
    syntax keyword cppSTLtype make_signed_t
    syntax keyword cppSTLtype make_unsigned_t
    syntax keyword cppSTLtype remove_extent_t
    syntax keyword cppSTLtype remove_all_extents_t
    syntax keyword cppSTLtype aligned_storage_t
    syntax keyword cppSTLtype aligned_union_t
    syntax keyword cppSTLtype decay_t
    syntax keyword cppSTLtype enable_if_t
    syntax keyword cppSTLtype conditional_t
    syntax keyword cppSTLtype common_type_t
    syntax keyword cppSTLtype underlying_type_t
    syntax keyword cppSTLtype result_of_t
endif " C++14


if !exists("cpp_no_cpp17")
    " any
    syntax keyword cppSTLtype any
    syntax keyword cppSTLexception bad_any_cast
    syntax keyword cppSTLcast any_cast

    " atomic
    syntax keyword cppSTLconstant is_always_lock_free

    " chrono
    syntax keyword cppSTLbool treat_as_floating_point_v

    " execution
    syntax keyword cppSTLnamespace execution
    syntax keyword cppSTLconstant seq par par_unseq
    syntax keyword cppSTLbool is_execution_policy_v
    syntax keyword cppSTLtype sequenced_policy
    syntax keyword cppSTLtype parallel_policy
    syntax keyword cppSTLtype parallel_unsequenced_policy
    syntax keyword cppSTLtype is_execution_policy

    " filesystem
    syntax keyword cppSTLnamespace filesystem
    syntax keyword cppSTLexception filesystem_error
    syntax keyword cppSTLtype path
    syntax keyword cppSTLtype directory_entry
    syntax keyword cppSTLtype directory_iterator
    syntax keyword cppSTLtype recursive_directory_iterator
    syntax keyword cppSTLtype file_status
    syntax keyword cppSTLtype space_info
    syntax keyword cppSTLtype file_time_type
    syntax keyword cppSTLenum file_type
    syntax keyword cppSTLenum perms
    syntax keyword cppSTLenum copy_options
    syntax keyword cppSTLenum directory_options
    syntax keyword cppSTLConstant preferred_separator
    syntax keyword cppSTLconstant available
    " syntax keyword cppSTLconstant capacity
    " syntax keyword cppSTLconstant free
    " Note: wstring, u8string, u16string, u32string already set as cppSTLtype
    " Note: 'is_empty' already set as cppSTLtype

    " functional
    syntax keyword cppSTLtype default_order
    syntax keyword cppSTLtype default_order_t
    syntax keyword cppSTLtype default_searcher
    syntax keyword cppSTLtype boyer_moore_searcher
    syntax keyword cppSTLtype boyer_moore_horspool_searcher
    syntax keyword cppSTLbool is_bind_expression_v
    syntax keyword cppSTLbool is_placeholder_v

    " memory
    syntax keyword cppSTLcast reinterpret_pointer_cast

    " memory_resource
    syntax keyword cppSTLtype polymorphic_allocator
    syntax keyword cppSTLtype memory_resource
    syntax keyword cppSTLtype synchronized_pool_resource
    syntax keyword cppSTLtype unsynchronized_pool_resource
    syntax keyword cppSTLtype pool_options
    syntax keyword cppSTLtype monotonic_buffer_resource

    " new
    syntax keyword cppSTLconstant hardware_destructive_interference_size
    syntax keyword cppSTLconstant hardware_constructive_interference_size

    " optional
    syntax keyword cppSTLtype optional
    syntax keyword cppSTLtype nullopt_t
    syntax keyword cppSTLexception bad_optional_access
    syntax keyword cppSTLconstant nullopt

    " string_view
    syntax keyword cppSTLtype basic_string_view
    syntax keyword cppSTLtype string_view
    syntax keyword cppSTLtype wstring_view
    syntax keyword cppSTLtype u16string_view
    syntax keyword cppSTLtype u32string_view

    " system_error
    syntax keyword cppSTLbool is_error_code_enum_v
    syntax keyword cppSTLbool is_error_condition_enum_v

    " thread
    syntax keyword cppSTLtype shared_mutex

    " tuple
    syntax keyword cppSTLconstant tuple_size_v

    " type_traits
    syntax keyword cppSTLbool is_void_v
    syntax keyword cppSTLbool is_null_pointer_v
    syntax keyword cppSTLbool is_integral_v
    syntax keyword cppSTLbool is_floating_point_v
    syntax keyword cppSTLbool is_array_v
    syntax keyword cppSTLbool is_enum_v
    syntax keyword cppSTLbool is_union_v
    syntax keyword cppSTLbool is_class_v
    syntax keyword cppSTLbool is_function_v
    syntax keyword cppSTLbool is_pointer_v
    syntax keyword cppSTLbool is_lvalue_reference_v
    syntax keyword cppSTLbool is_rvalue_reference_v
    syntax keyword cppSTLbool is_member_object_pointer_v
    syntax keyword cppSTLbool is_member_function_pointer_v
    syntax keyword cppSTLbool is_fundamental_v
    syntax keyword cppSTLbool is_arithmetic_v
    syntax keyword cppSTLbool is_scalar_v
    syntax keyword cppSTLbool is_object_v
    syntax keyword cppSTLbool is_compound_v
    syntax keyword cppSTLbool is_reference_v
    syntax keyword cppSTLbool is_member_pointer_v
    syntax keyword cppSTLbool is_const_v
    syntax keyword cppSTLbool is_volatile_v
    syntax keyword cppSTLbool is_trivial_v
    syntax keyword cppSTLbool is_trivially_copyable_v
    syntax keyword cppSTLbool is_standard_layout_v
    syntax keyword cppSTLbool is_pod_v
    syntax keyword cppSTLbool is_literal_type_v
    syntax keyword cppSTLbool is_empty_v
    syntax keyword cppSTLbool is_polymorphic_v
    syntax keyword cppSTLbool is_abstract_v
    syntax keyword cppSTLbool is_signed_v
    syntax keyword cppSTLbool is_unsigned_v
    syntax keyword cppSTLbool is_constructible_v
    syntax keyword cppSTLbool is_trivially_constructible_v
    syntax keyword cppSTLbool is_nothrow_constructible_v
    syntax keyword cppSTLbool is_default_constructible_v
    syntax keyword cppSTLbool is_trivially_default_constructible_v
    syntax keyword cppSTLbool is_nothrow_default_constructible_v
    syntax keyword cppSTLbool is_copy_constructible_v
    syntax keyword cppSTLbool is_trivially_copy_constructible_v
    syntax keyword cppSTLbool is_nothrow_copy_constructible_v
    syntax keyword cppSTLbool is_move_constructible_v
    syntax keyword cppSTLbool is_trivially_move_constructible_v
    syntax keyword cppSTLbool is_nothrow_move_constructible_v
    syntax keyword cppSTLbool is_assignable_v
    syntax keyword cppSTLbool is_trivially_assignable_v
    syntax keyword cppSTLbool is_nothrow_assignable_v
    syntax keyword cppSTLbool is_copy_assignable_v
    syntax keyword cppSTLbool is_trivially_copy_assignable_v
    syntax keyword cppSTLbool is_nothrow_copy_assignable_v
    syntax keyword cppSTLbool is_move_assignable_v
    syntax keyword cppSTLbool is_trivially_move_assignable_v
    syntax keyword cppSTLbool is_nothrow_move_assignable_v
    syntax keyword cppSTLbool is_destructible_v
    syntax keyword cppSTLbool is_trivially_destructible_v
    syntax keyword cppSTLbool is_nothrow_destructible_v
    syntax keyword cppSTLbool has_virtual_destructor_v
    syntax keyword cppSTLbool is_same_v
    syntax keyword cppSTLbool is_base_of_v
    syntax keyword cppSTLbool is_convertible_v
    syntax keyword cppSTLbool is_callable_v
    syntax keyword cppSTLbool is_nowthrow_callable_v
    syntax keyword cppSTLbool conjunction_v
    syntax keyword cppSTLbool disjunction_v
    syntax keyword cppSTLbool negation_v
    syntax keyword cppSTLconstant alignment_of_v
    syntax keyword cppSTLconstant rank_v
    syntax keyword cppSTLconstant extent_v
    syntax keyword cppSTLtype bool_constant
    syntax keyword cppSTLtype is_callable
    syntax keyword cppSTLtype is_nowthrow_callable
    syntax keyword cppSTLtype conjunction
    syntax keyword cppSTLtype disjunction
    syntax keyword cppSTLtype negation

    " unordered_map, unordered_set, unordered_multimap, unordered_multiset
    syntax keyword cppSTLtype node_type
    syntax keyword cppSTLtype insert_return_type

    " utility
    syntax keyword cppSTLtype in_place_tag
    syntax keyword cppSTLtype in_place_t
    syntax keyword cppSTLtype in_place_type_t
    syntax keyword cppSTLtype in_place_index_t

    " variant
    syntax keyword cppSTLtype variant
    syntax keyword cppSTLtype monostate
    syntax keyword cppSTLtype variant_size
    syntax keyword cppSTLtype variant_alternative
    syntax keyword cppSTLtype variant_alternative_t
    syntax keyword cppSTLconstant variant_size_v
    syntax keyword cppSTLconstant variant_npos
    syntax keyword cppSTLexception bad_variant_access
endif " C++17


" Highlight
hi link cppSTLbool         Boolean
hi link cppSTLconstant     Constant
hi link cppSTLnamespace    Constant
hi link cppSTLtype         Type
hi link cppSTLexception    Exception
hi link cppSTLiterator     Type
hi link cppSTLiterator_tag Type
hi link cppSTLenum         Type
hi link cppSTLios          Function
hi link cppSTLcast         Statement " be consistent with official syntax
hi link cppRawString       String
hi link cppRawDelimiter    Delimiter
