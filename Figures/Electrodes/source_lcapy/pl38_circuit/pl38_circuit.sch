W 0 GND; down=0.2, cground,

W 1_s0 1_h0; right,
W 1_h0 1_fb0; right,
W 1_fb0 1_j0; right,
W 1_j0 1_p0; right,
W 1_p0 1_d0; right,
W 1_d0 0; right=2,

W 0 2_d0; right=2,
W 2_d0 2_p0; right,
W 2_p0 2_j0; right,
W 2_j0 2_fb0; right,
W 2_fb0 2_h0; right,
W 2_h0 2_s0; right,

W S_A 1_s; right, startarrow=otri, draw_nodes=none
In1 1_s 1_s0 noise {(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 }; down, color=red, l=i_n^A
Vn1 1_s 1_h noise {(e0**2 +(ea/f**0.5)**2 + (eb/f)**2)**0.5 }; right, color=red, l=e_n^A
Chemt1 1_h 1_h0 Chemt; down, l=C_{hemt}
W 1_h 1_fb; right
Cfb1 1_fb 1_fb0 Cfb; down, l=C_{fb}
Cc1 1_fb 1_r Cc; right=1.5, l=C_{c}
Rpolar1 1_r 1_r0 Rpolar; down, l=R_{polar.}
Vj1 1_r0 1_j0 noise {(4*k*T*Rpolar)**0.5 }; down, l=e_J, color=red
W 1_r 1_p; right
Cp1 1_p 1_p0 Cp; down, l=C_{p}
W 1_p 1_d; right
C11 1_d 1_d0; down, l=C_{11}^m
W 1_d 1_A; right
W 1_A A; right

W B 2_B; right=1
W 2_B 2_d; right=1
C22 2_d 2_d0; down, l=C_{22}^m
W 2_d 2_p; right
Cp2 2_p 2_p0 Cp; down, l=C_{p}
W 2_p 2_r; right
Rpolar2 2_r 2_r0 Rpolar; down, l=R_{polar.}
Vj2 2_r0 2_j0 noise {(4*k*T*Rpolar)**0.5 }; down, l=e_J, color=red
Cc2 2_r 2_fb Cc; right=1.5, l=C_{c}
Cfb2 2_fb 2_fb0 Cfb; down, l=C_{fb}
W 2_fb 2_h; right
Chemt2 2_h 2_h0 Chemt; down, l=C_{hemt}
Vn2 2_h 2_s noise {(e0**2 +(ea/f**0.5)**2 + (eb/f)**2)**0.5 }; right, color=red, l=e_n^B
In2 2_s 2_s0 noise {(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 }; down, color=red, l=i_n^B
W 2_s S_B; right, endarrow=otri, draw_nodes=none

C12 A B; right=4, l=C_{12}^m

Ibulk 1_A 2_B {Npair*qe*delta(t)}; right, color=blue, offset=1, l_=I_{s}

; draw_nodes=connections
; label_nodes=alpha
; style=european
; help_lines=0
; font=\normalsize
