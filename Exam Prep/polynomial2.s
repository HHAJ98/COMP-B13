/** polynomial2(w, x, y, z)
 *  ret 4w + 7xz + 4wxy + 11
        a    b     c      d
    
 *  w in %rdi
 *  x in %rsi
 *  y in %rdx
 *  z in %rcx
 *
 *  compute a in %r8, move to %rax
 *  compute b in %r9, add to %rax
 *  compute c in %r10, add to %rax
 *  use %r11 for constants
 *  add d to %rax
 *  return
 *  
 *  TO ASSEMBLE AND LINK:
 *  Assemble:
 *  as -gstabs polynomial2.s Polynomial2Main.s -o poly2.o
 *  Link:
 *  ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -L /usr/lib/x86_64-linux-gnu -l :crt1.o -l :crti.o -l :crtn.o -lc poly2.o -o poly2
 *  
 *  Expected outputs for:
 *  10 15 6 4 -> 4071   CHECK
 *  15 8 14 3 -> 6959   CHECK
 *  11 7 17 3 -> 5438   CHECK
 *  3 10 9 1  -> 1173   CHECK
 */
    .globl  polynomial2
polynomial2:
    movl    %edi,   %r8d    # w -> r8
    movl    $4,     %r11d   # 4 -> r11
    imull   %r11d,  %r8d    # 4 * w -> r8
    movq    %r8,    %rax    # 4w -> rax

    movl    %esi,   %r9d    # x -> r9
    imull   %ecx,   %r9d    # x * z -> r9
    movl    $7,     %r11d   # 7 -> r11
    imull   %r11d,  %r9d    # 7 * x * z -> r9
    addq    %r9,    %rax    # 4w + 7xz -> rax

    movl    %edi,   %r10d   # w -> r10
    imull   %esi,   %r10d   # x * w -> r10
    imull   %edx,   %r10d   # y * x * w -> r10
    movl    $4,     %r11d   # 4 -> r11
    imull   %r11d,  %r10d   # 4 * y * x * w -> r10
    addq    %r10,   %rax    # 4w + 7xz + 4wxy -> rax

    addq    $11,    %rax    # 4w + 7xz + 4wxy + 11 -> rax
    
    ret
