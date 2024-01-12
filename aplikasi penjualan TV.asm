.MODEL LARGE
.STACK 1000H
.DATA

;OUTPUT
a1    db 10,13,10,13,'+++WELCOME TO QATHAN TV STORE+++$'
aa    db 10,13,'      ++++++++++++++++++++++++++++++$'
a2    db 10,13,'         1. TV Samsung$' 
a3    db 10,13,'         2. TV Sony$' 
a4    db 10,13,'         3. TV Sharp$'
a5    db 10,13,'         4. TV Toshiba$' 
ab    db 10,13,'      ++++++++++++++++++++++++++++++$' 

xx    db 10,13,10,13,'Masukkan pilihan anda $'

sej   db 10,13,10,13,' $'
   
a6    db 10,13,'Pilih TV : $'  

ac    db 10,13,10,13,'+Pilih TV anda dalam menu+$' 

bb    db 10,13,'+++++++++++++++++++++++++++++++++++++++++++++++++++++++$' 

bc    db 10,13,'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++$' 
    
bd    db 10,13,'++++++++++++++++++++++++++++++++++++++++++++++++++$' 

be    db 10,13,'++++++++++++++++++++++++++++++++++++++++++++++++++++++$' 
   
;TV Samsung
a7     db 10,13,'+++       1. 50" Crystal UHD 4K CU7000      800k  +++$'
a8     db 10,13,'+++       2. 50" QLED 4K Q60C               600k  +++$'
a9     db 10,13,'+++       3. 32” HD Smart TV T4501          600k  +++$'
a10    db 10,13,'+++       4. 65" OLED 4K S95C               400k  +++$'
a11    db 10,13,'+++       5. 75" Neo QLED 4K QN90C          400k  +++$'
    
;TV Sony
a12    db 10,13,'+++       1. X95L Series                    800k  +++$'
a13    db 10,13,'+++       2. X77L Series                    800k  +++$'
a14    db 10,13,'+++       3. X80L Series                    600k  +++$'
a15    db 10,13,'+++       4. X85L Series                    600k  +++$'
a16    db 10,13,'+++       5. A80L Series                    400k  +++$' 
                                                        
;TV Sharp
a17    db 10,13,'+++       1. AQUOS 2T-C32DC1i               800k  +++$'
a18    db 10,13,'+++       2. AQUOS 2T-C24DC1i               800k  +++$'
a19    db 10,13,'+++       3. AQUOS 2T-C42DD1i               600k  +++$'
a20    db 10,13,'+++       4. AQUOS 2T-C42EG1I               600k  +++$'
a21    db 10,13,'+++       5. AQUOS 2T-C32DD1i               400k  +++$' 
;TV Toshiba
a22    db 10,13,'+++       1. 24 inch 24L1600                800k  +++$'
a23    db 10,13,'+++       2. 32 inch 32P2400                600k  +++$'
a24    db 10,13,'+++       3. 32 inch 32P140                 600k  +++$'
a25    db 10,13,'+++       4. 32 inch 32L1600                400k  +++$'
a26    db 10,13,'+++       5. 49 Inch 49L5995                400k  +++$' 
    
;invalid
a27    db 10,13,'+++ Invalid Entry +++$'
a28    db 10,13,'++ Try Again ++$'
    
a29    db 10,13,'++        Pilih Orderan :       $'
a30    db 10,13,'++        jumlah        :       $'
a31    db 10,13,'++        Total Harga   :       $'   
    
a32    db 10,13,'++ 1. Back to Main Menu ++$'
a33    db 10,13,'++ 2. Exit ++$'
    
.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax 
    
    TOP:
    
    mov ah,9
    lea dx,a1
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h
    
     
    
    mov ah,9
    lea dx,aa
    int 21h
    
    mov ah,9
    lea dx,a2
    int 21h       
    
    mov ah,9
    lea dx,a3
    int 21h 
    
    mov ah,9
    lea dx,a4
    int 21h
    
    mov ah,9
    lea dx,a5
    int 21h
    
    mov ah,9
    lea dx,ab
    int 21h 
    
    mov ah,9
    lea dx,sej
    int 21h  
    
    
    
    mov ah,9
    lea dx,a6
    int 21h  
         
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je  Samsung 
    
    cmp bh,2
    je  Sony 
    
    cmp bh,3
    je  Sharp
    
    cmp bh,4
    je  Toshiba 
                
    jmp invalid            

    
     Samsung:
    
    mov ah,9     ;TV Samsung starts
    lea dx,ac
    int 21h    
    
    mov ah,9
    lea dx,sej
    int 21h      
    
    mov ah,9
    lea dx,bb
    int 21h
    
    
    mov ah,9
    lea dx,a7           ;1
    int 21h
    
    mov ah,9
    lea dx,a8           ;2
    int 21h
    
    mov ah,9            
    lea dx,a9           ;3
    int 21h  
    
    mov ah,9
    lea dx,a10          ;4
    int 21h
    
    mov ah,9
    lea dx,a11          ;5
    int 21h             
              
    mov ah,9
    lea dx,bb
    int 21h
              
   
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48  
    
    
    cmp bl,1
    je eighty
    
    cmp bl,2
    je sixty
    
    cmp bl,3
    je sixty
    
    cmp bl,4
    je fourty
    
    cmp bl,5
    je fourty
    
    jmp invalid 
    
    sixty:
    
    mov bl,6 
    mov ah,9
    lea dx,a30
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31 
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h   
    
    
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    jmp exit
    
    eighty:
    
    mov bl,8 
    mov ah,9
    lea dx,a30
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31 
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h   
    
    
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    jmp exit 
    
    
    Sony:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h     
    
    
    mov ah,9
    lea dx,bd
    int 21h
    
    mov ah,9
    lea dx,a12            ;1
    int 21h
    
    mov ah,9
    lea dx,a13            ;2
    int 21h
    
    mov ah,9
    lea dx,a14            ;3
    int 21h
    
    mov ah,9
    lea dx,a15            ;4
    int 21h 
    
    mov ah,9
    lea dx,a16            ;5
    int 21h  
    
    mov ah,9
    lea dx,bd
    int 21h 
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je eighty
    
    cmp bl,2
    je eighty
    
    cmp bl,3
    je sixty
    
    cmp bl,4
    je sixty
    
    cmp bl,5
    je fourty 
    
    jmp invalid 
    
    fourty:
    
    mov bl,4 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    jmp exit 
     
     
    
    Sharp:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h 
             
             
    mov ah,9
    lea dx,bc
    int 21h 
     
    mov ah,9
    lea dx,a17            ;1
    int 21h
    
    mov ah,9
    lea dx,a18            ;2
    int 21h
    
    mov ah,9
    lea dx,a19            ;3
    int 21h
    
    mov ah,9
    lea dx,a20            ;4
    int 21h 
    
    mov ah,9
    lea dx,a21            ;5
    int 21h 
    
    mov ah,9
    lea dx,bc
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
   
    cmp bl,1
    je eighty
    
    cmp bl,2
    je eighty
    
    cmp bl,3
    je sixty
    
    cmp bl,4
    je sixty
    
    cmp bl,5
    je fourty
    
    jmp invalid
    
    
    
    Toshiba:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h    
    
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a22            ;1
    int 21h
    
    mov ah,9
    lea dx,a23            ;2
    int 21h
    
    mov ah,9
    lea dx,a24            ;3
    int 21h
    
    mov ah,9
    lea dx,a25            ;4
    int 21h 
    
    mov ah,9
    lea dx,a26            ;5
    int 21h 
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je eighty
    
    cmp bl,2
    je sixty
    
    cmp bl,3
    je sixty
    
    cmp bl,4
    je fourty
    
    cmp bl,5
    je fourty
    
    jmp invalid 
    
    
    invalid:
        
    mov ah,9    
    lea dx,a27
    int 21h 
    
    
    mov ah,9
    lea dx,a28 
    int 21h 
    
    
    
    jmp exit
    
    
          
    
     exit:
     
     mov ah,4ch
     int 21h
     main endp
END MAIN