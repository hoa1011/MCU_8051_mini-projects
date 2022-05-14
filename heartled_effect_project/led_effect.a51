; Viet chuong trinh tao 3 hieu ung led khong dung Timer

ORG 0000h
	ljmp main_pro
ORG 0030h	
	main_pro:
	mov R6, #5
	lap_effect1:
	lcall hieu_ung1
	djnz R6, lap_effect1 ;lap chay hieu ung 1 x 6 lan
	mov R6, #1
	lap_effect2:
	lcall hieu_ung2
	djnz R6, lap_effect2 ;lap chay hieu ung x 2 lan
	mov R6,#4
	lap_effect3:
	lcall hieu_ung3
	djnz R6, lap_effect3 ;lap chay hieu ung 3 x 5 lan
	ljmp main_pro
	
	;long delay
	mov R4, #10
	delay1:
	mov R0,#4
	delay1_loop1:
	mov R1,#250
	delay1_loop2:	
	djnz R1, delay1_loop2
	djnz R0,delay1_loop1
	djnz R4, delay1
	ret
	
	;short delay
	mov R5, #2
	delay2:
	mov R2,#5
	delay2_loop1:
	mov R3,#320
	delay2_loop2:	
	djnz R3, delay2_loop2
	djnz R2,delay2_loop1
	djnz R5, delay2
	ret
	
	hieu_ung1:
	clr A
	mov A, #00h
	
	mov P0,A
	mov P1,A
	mov P2, A
	mov P3,A
	
	acall delay1
	
	mov A, #0FFh
	mov P0,A
	mov P1,A
	mov P2, A
	mov P3,A
	
	acall delay1
	
	ret
	

	hieu_ung2:
	clr A
	mov P1,A
	mov P0,A
	mov P2,A
	mov P3,A
	
	cpl P1.0
	acall delay2
	cpl P1.1
	acall delay2
	cpl P1.2
	acall delay2
	cpl P1.3
	acall delay2
	cpl P1.4
	acall delay2
	cpl P1.5
	acall delay2
	cpl P1.6
	acall delay2
	cpl P1.7
	acall delay2
	
	cpl P2.0
	acall delay2
	cpl P2.1
	acall delay2
	cpl P2.2
	acall delay2
	cpl P2.3
	acall delay2
	cpl P2.4
	acall delay2
	cpl P2.5
	acall delay2
	cpl P2.6
	acall delay2
	cpl P2.7
	acall delay2
	
	cpl P3.0
	acall delay2
	cpl P3.1
	acall delay2
	cpl P3.2
	acall delay2
	cpl P3.3
	acall delay2
	cpl P3.4
	acall delay2
	cpl P3.5
	acall delay2
	cpl P3.6
	acall delay2
	cpl P3.7
	acall delay2
	
	cpl P0.0
	acall delay2
	cpl P0.1
	acall delay2
	cpl P0.2
	acall delay2
	cpl P0.3
	acall delay2
	cpl P0.4
	acall delay2
	cpl P0.5
	acall delay2
	cpl P0.6
	acall delay2
	cpl P0.7
	acall delay2
	ret

	hieu_ung3:
	;1 -> 2 -> 3 -> 0
	clr A
	mov P1,A
	mov P0,A
	mov P2,A
	mov P3,A
	
	cpl P1.0
	cpl P2.0
	cpl P3.0
	cpl P0.0

	acall delay2
	
	cpl P1.1
	cpl P2.1
	cpl P3.1
	cpl P0.1
	
	acall delay2
	
	cpl P1.2
	cpl P2.2
	cpl P3.2
	cpl P0.2
	
	acall delay2
	
	cpl P1.3
	cpl P2.3
	cpl P3.3
	cpl P0.3
	
	acall delay2
	
	cpl P1.4
	cpl P2.4
	cpl P3.4
	cpl P0.4
	
	acall delay2
	
	cpl P1.5
	cpl P2.5
	cpl P3.5
	cpl P0.5
	
	acall delay2
	
	cpl P1.6
	cpl P2.6
	cpl P3.6
	cpl P0.6

	acall delay2
	
	cpl P1.7
	cpl P2.7
	cpl P3.7
	cpl P0.7	
	acall delay2
	
	ret
END