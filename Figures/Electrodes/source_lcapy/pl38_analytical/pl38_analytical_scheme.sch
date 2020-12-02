W 0 GND; down=0.2, cground

W 1_j0 1_d0; right
W 1_d0 0; right

W 0 2_d0; right
W 2_d0 2_j0; right

W S_A 1_r; right, startarrow=otri, draw_nodes=none
Rpolar1 1_r 1_r0 Rpolar; down, l=R_{polar.}
Vj1 1_r0 1_j0 {(4*k*T*Rpolar)**0.5 }; down, l=e_J^A, color=red
W 1_r 1_d; right
C11 1_d 1_d0; down, l=C_{11}^m
W 1_d 1_A; right
W 1_A A; right

W B 2_B; right
W 2_B 2_d; right
C22 2_d 2_d0; down, l=C_{22}^m
W 2_d 2_r; right
Rpolar2 2_r 2_r0 Rpolar; down, l=R_{polar.}
Vj2 2_r0 2_j0 {(4*k*T*Rpolar)**0.5 }; down, l=e_J^B, color=red
W 2_r S_B; right, endarrow=otri, draw_nodes=none

C12 A B; right=2, l=C_{12}^m

Ibulk 1_A 2_B {Npair*qe*delta(t)}; right, color=blue, offset=1, l_=I_{s}

; draw_nodes=connections
; label_nodes=alpha
; style=european
; help_lines=0
