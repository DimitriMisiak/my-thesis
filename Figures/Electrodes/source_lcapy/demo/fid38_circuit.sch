W 0 GND; down=0.2, cground, ultra thick

W 3_0 3_ej0; right, ultra thick
W 3_ej0 3_i0; right, ultra thick
W 3_i0 3_r0; right, ultra thick
W 3_r0 3_p0; right, ultra thick
W 3_p0 3_d0; right, ultra thick
W 3_d0 0; right=3, ultra thick

W 0 4_d0; right=3, ultra thick
W 4_d0 4_p0; right, ultra thick
W 4_p0 4_r0; right, ultra thick
W 4_r0 4_i0; right, ultra thick
W 4_i0 4_ej0; right, ultra thick
W 4_ej0 4_0; right, ultra thick

W 1_0 1_ej0; right, ultra thick
W 1_ej0 1_i0; right, ultra thick
W 1_i0 1_r0; right, ultra thick
W 1_r0 1_p0; right, ultra thick
W 1_p0 1_d0; right, ultra thick

W 2_d0 2_p0; right, ultra thick
W 2_p0 2_j0; right, ultra thick
W 2_j0 2_fb0; right, ultra thick
W 2_fb0 2_h0; right, ultra thick
W 2_h0 2_s0; right, ultra thick
W 2_s0 2_0; right, ultra thick

W 1_0 3_0; down=3, ultra thick
W 2_0 4_0; down=3, ultra thick

Ij1 1_ej 1_ej0 noise {(4*k*T*Rpolar)**0.5 /Rpolar}; down, l=i_{j,N}, color=red
W 1_ej 1_i; right
In1 1_i 1_i0 noise {Cc*(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 /(Cc + Cfb + Chemt)}; down, l=i_{n,N}, color=red
W 1_i 1_r
Zhemt1 1_r 1_r0 {((Cc + Cfb + Chemt)/(Cc*(Cfb + Chemt)))/(s + (Cc + Cfb + Chemt)/(Cc*Cfb*Rpolar + Cc*Chemt*Rpolar))}; down, l=Z_{hemt}
W 1_r 1_p; right
Cp1 1_p 1_p0 Cp; down, l=C_{p}
W 1_p 1_d; right
C11 1_d 1_d0; down, l=C_{11}
W 1_d 1_A; right=1
W 1_A A; right=1

W B 2_B; right=1
W 2_B 2_d; right=1
C22 2_d 2_d0; down, l=C_{22}
W 2_d 2_p; right
Cp2 2_p 2_p0 Cp; down, l=C_{p}
W 2_p 2_r; right
Rpolar2 2_r 2_r0 Rpolar; down, l=R_{load}
Vj2 2_r0 2_j0 noise {(4*k*T*Rpolar)**0.5 }; down, l=e_J, color=red
Cc2 2_r 2_fb Cc; right=1.5, l=C_{c}
Cfb2 2_fb 2_fb0 Cfb; down, l=C_{fb}
W 2_fb 2_h; right
Chemt2 2_h 2_h0 Chemt; down, l=C_{hemt}
Vn2 2_h 2_s noise {(e0**2 +(ea/f**0.5)**2 + (eb/f)**2)**0.5 }; right, color=red, l=e_n
In2 2_s 2_s0 noise {(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 }; down, color=red, l=i_n
W 2_s S_B; right, endarrow=otri, draw_nodes=none

W D 4_D; right=1
W 4_D 4_d; right=1
C44 4_d 4_d0; down, l=C_{44}
W 4_d 4_p; right
Cp4 4_p 4_p0 Cp; down, l=C_{p}
W 4_p 4_r; right
Zhemt4 4_r 4_r0 {((Cc + Cfb + Chemt)/(Cc*(Cfb + Chemt)))/(s + (Cc + Cfb + Chemt)/(Cc*Cfb*Rpolar + Cc*Chemt*Rpolar))}; down, l=Z_{hemt}
W 4_r 4_i; right
In4 4_i 4_i0 noise {Cc*(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 /(Cc + Cfb + Chemt)}; down, l=i_{n,N}, color=red
W 4_i 4_ej; right
Ij4 4_ej 4_ej0 noise {(4*k*T*Rpolar)**0.5 /Rpolar}; down, l=i_{j,N}, color=red

Ij3 3_ej 3_ej0 noise {(4*k*T*Rpolar)**0.5 /Rpolar}; down, l=i_{j,N}, color=red
W 3_ej 3_i; right
In3 3_i 3_i0 noise {Cc*(i0**2 +(ia*(f)**0.5)**2 + (ib*f)**2)**0.5 /(Cc + Cfb + Chemt)}; down, l=i_{n,N}, color=red
W 3_i 3_r; right
Zhemt3 3_r 3_r0 {((Cc + Cfb + Chemt)/(Cc*(Cfb + Chemt)))/(s + (Cc + Cfb + Chemt)/(Cc*Cfb*Rpolar + Cc*Chemt*Rpolar))}; down, l=Z_{hemt}
W 3_r 3_p; right
Cp3 3_p 3_p0 Cp; down, l=C_{p}
W 3_p 3_d; right
C33 3_d 3_d0; down, l=C_{33}
W 3_d 3_C; right=1
W 3_C C; right=1

C13 A C; down=4
C12 A B; right=4
C24 B D; down=4
C34 C D; right=4

W A 14; rotate=-45
C14 14 D; free, scale=0.75

W B 23; rotate=-135
C23 23 C; free, scale=0.75

Iequator 1_A 3_C {Npair*qe*delta(t)}; down, color=blue, l_=I_{equator}
Iveto 1_A 2_B {Npair*qe*delta(t)}; right, color=blue, offset=1, l^=I_{veto}
Ibulk 2_B 4_D {Npair*qe*delta(t)}; down, color=blue, l^=I_{bulk}

; draw_nodes=connections
; label_nodes=alpha
; style=european
; help_lines=0
