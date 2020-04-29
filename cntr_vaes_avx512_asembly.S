.data

.align 16
ONE:
.octa	0x00000000000000000000000000000001

.align 64
SHUF_MASK:
.octa	0x000102030405060708090A0B0C0D0E0F
.octa   0x000102030405060708090A0B0C0D0E0F
.octa   0x000102030405060708090A0B0C0D0E0F
.octa   0x000102030405060708090A0B0C0D0E0F

.align 64
ddq_add_13_16:
.octa	0x0000000000000000000000000000000d
.octa   0x0000000000000000000000000000000e
.octa   0x0000000000000000000000000000000f
.octa   0x00000000000000000000000000000010

.align 64
ddq_add_9_12:
.octa   0x00000000000000000000000000000009
.octa   0x0000000000000000000000000000000a
.octa   0x0000000000000000000000000000000b
.octa   0x0000000000000000000000000000000c

.align 64
ddq_add_5_8:
.octa   0x00000000000000000000000000000005
.octa   0x00000000000000000000000000000006
.octa   0x00000000000000000000000000000007
.octa   0x00000000000000000000000000000008

.align 64
ddq_add_1_4:
.octa   0x00000000000000000000000000000001
.octa   0x00000000000000000000000000000002
.octa   0x00000000000000000000000000000003
.octa   0x00000000000000000000000000000004

.align 64
ddq_add_12_15:
.octa   0x0000000000000000000000000000000c
.octa   0x0000000000000000000000000000000d
.octa   0x0000000000000000000000000000000e
.octa   0x0000000000000000000000000000000f

.align 64
ddq_add_8_11:
.octa   0x00000000000000000000000000000008
.octa   0x00000000000000000000000000000009
.octa   0x0000000000000000000000000000000a
.octa   0x0000000000000000000000000000000b

.align 64
ddq_add_4_7:
.octa   0x00000000000000000000000000000004
.octa   0x00000000000000000000000000000005
.octa   0x00000000000000000000000000000006
.octa   0x00000000000000000000000000000007

.align 64
ddq_add_0_3:
.octa   0x00000000000000000000000000000000
.octa   0x00000000000000000000000000000001
.octa   0x00000000000000000000000000000002
.octa   0x00000000000000000000000000000003

.align 64
ddq_add_16:
.octa   0x00000000000000000000000000000010
.octa   0x00000000000000000000000000000010
.octa   0x00000000000000000000000000000010
.octa   0x00000000000000000000000000000010

.align 64
byte_len_to_mask_table:
.quad   0x0007000300010000
.quad   0x007f003f001f000f
.quad   0x07ff03ff01ff00ff
.quad   0x7fff3fff1fff0fff
.quad   0xffff

.align 64
byte64_len_to_mask_table:
.octa   0x00000000000000010000000000000000
.octa   0x00000000000000070000000000000003
.octa   0x000000000000001f000000000000000f
.octa   0x000000000000007f000000000000003f
.octa   0x00000000000001ff00000000000000ff
.octa   0x00000000000007ff00000000000003ff
.octa   0x0000000000001fff0000000000000fff
.octa   0x0000000000007fff0000000000003fff
.octa   0x000000000001ffff000000000000ffff
.octa   0x000000000007ffff000000000003ffff
.octa   0x00000000001fffff00000000000fffff
.octa   0x00000000007fffff00000000003fffff
.octa   0x0000000001ffffff0000000000ffffff
.octa   0x0000000007ffffff0000000003ffffff
.octa   0x000000001fffffff000000000fffffff
.octa   0x000000007fffffff000000003fffffff
.octa   0x00000001ffffffff00000000ffffffff
.octa   0x00000007ffffffff00000003ffffffff
.octa   0x0000001fffffffff0000000fffffffff
.octa   0x0000007fffffffff0000003fffffffff
.octa   0x000001ffffffffff000000ffffffffff
.octa   0x000007ffffffffff000003ffffffffff
.octa   0x00001fffffffffff00000fffffffffff
.octa   0x00007fffffffffff00003fffffffffff
.octa   0x0001ffffffffffff0000ffffffffffff
.octa   0x0007ffffffffffff0003ffffffffffff
.octa   0x001fffffffffffff000fffffffffffff
.octa   0x007fffffffffffff003fffffffffffff
.octa   0x01ffffffffffffff00ffffffffffffff
.octa   0x07ffffffffffffff03ffffffffffffff
.octa   0x1fffffffffffffff0fffffffffffffff
.octa   0x7fffffffffffffff3fffffffffffffff
.octa   0xffffffffffffffff

.align 16
initial_12_IV_counter:
.octa   0x01000000000000000000000000000000

mask_16_bytes:
.octa	0x000000000000ffff

.align 16
shift_tab_16:
.byte	0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
.byte	0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
.byte	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
.byte	0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f
.byte	0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
.byte	0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff

.text

#define xmm0z	zmm0
#define zmm8y	ymm8
#define zmm13y	ymm13
#define zmm12y	ymm12
#define zmm13x	xmm13
#define zmm8x	xmm8
#define zmm12x	xmm12
#define zmm7y	ymm7
#define zmm11y	ymm11
#define zmm7x	xmm7
#define zmm11x	xmm11
#define zmm6y	ymm6
#define zmm10y	ymm10
#define zmm6x	xmm6
#define zmm10x	xmm10
#define xmm0y	ymm0
#define zmm5y	ymm5
#define zmm9y	ymm9
#define xmm0x	xmm0
#define zmm5x	xmm5
#define zmm9x	xmm9
#define zmm17y	ymm17
#define zmm18y	ymm18
#define zmm19y	ymm19
#define zmm20y	ymm20
#define zmm21y	ymm21
#define zmm22y	ymm22
#define zmm23y	ymm23
#define zmm24y	ymm24
#define zmm25y	ymm25
#define zmm26y	ymm26
#define zmm27y	ymm27
#define zmm17x	xmm17
#define zmm18x	xmm18
#define zmm19x	xmm19
#define zmm20x	xmm20
#define zmm21x	xmm21
#define zmm22x	xmm22
#define zmm23x	xmm23
#define zmm24x	xmm24
#define zmm25x	xmm25
#define zmm26x	xmm26
#define zmm27x	xmm27
#define zmm28x  xmm28
#define zmm28y  ymm28
#define zmm29y  ymm29
#define zmm29x  xmm29
#define zmm30y  ymm30
#define zmm31y  ymm31
#define zmm30x  xmm30
#define zmm31x  xmm31

#define ZKEY0	%zmm17
#define ZKEY1   %zmm18
#define ZKEY2   %zmm19
#define ZKEY3   %zmm20
#define ZKEY4   %zmm21
#define ZKEY5   %zmm22
#define ZKEY6   %zmm23
#define ZKEY7   %zmm24
#define ZKEY8   %zmm25
#define ZKEY9   %zmm26
#define ZKEY10  %zmm27
#define ZKEY11  %zmm28
#define ZKEY12  %zmm29
#define ZKEY13  %zmm30
#define ZKEY14  %zmm31

#define _aes_enc_key_expanded	0
#define _aes_dec_key_expanded	8
#define _aes_key_len_in_bytes	16
#define _src			24
#define _dst			32
#define _cipher_start_src_offset_in_bytes	40
#define _msg_len_to_cipher			48
#define _iv			56
#define _iv_len_in_bytes	64
#define _auth_tag_output	72
#define _auth_tag_output_len_in_bytes	80
#define _status			88
#define _cipher_mode		92
#define _cipher_direction	96
#define _hash_alg		100
#define _chain_order		104
#define _user_data		108
#define _user_data2		112

#define STS_COMPLETED_AES      1

#define STACK_FRAME_SIZE        40
#define str(reg,y)      reg##y
#define str2(reg,y)     str(reg,y)
#define str1(reg,y)     str2(reg,y)
#define YWORD(reg)      str1(reg, y)
#define XWORD(reg)      str1(reg, x)
#define ZWORD(reg)      str1(reg, z)
#define DWORD(reg)      str1(reg, d)
#define WORD(reg)       str1(reg, w)
#define BYTE(reg)       str1(reg, b)

#define KEY             %rdi
#define EXP_ENC_KEYS    %rsi
#define EXP_DEC_KEYS    %rdx

#define FUNC_SAVE(CNTR_TYPE)	\
	mov     %rsp, %rax;	\
        sub     $STACK_FRAME_SIZE, %rsp;	\
        and     $~63, %rsp;	\
        mov     %r12, (%rsp);	\
        mov     %r13, 0x8(%rsp);	\
.ifc CNTR_TYPE, CNTR_BIT;	\
        mov     %r14, 0x10(%rsp);	\
.endif;	\
        mov     %rax, 0x18(%rsp);	\

#define FUNC_RESTORE(CNTR_TYPE)	\
	vzeroupper;		\
	mov	(%rsp), %r12;   \
	mov     0x8(%rsp), %r13;\
.ifc CNTR_TYPE, CNTR_BIT;	\
        mov     0x10(%rsp), %r14;	\
.endif; \
	mov     0x18(%rsp), %rsp;	\

#define XVPSLLB(reg, num, shuf_tab, tmp_gp)	\
	lea     shift_tab_16 + 16(%rip), tmp_gp;        	\
        sub     num, tmp_gp;    		\
        vmovdqu (tmp_gp), shuf_tab;		\
        vpshufb shuf_tab, reg, reg;

#define PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZIN_OUT, ZTMP0, ZTMP1, ZTMP2, IA0, IA1, blocks_to_skip, FULL_PARTIAL, MASKREG, DATA_OFFSET, NUM_ARGS)  \
.set offset, (((blocks_to_skip) / 4) * 64);			\
.set num_left_blocks,(((blocks_to_skip) & 3) + 1);	\
.if NUM_ARGS == 13;     \
.ifc FULL_PARTIAL, partial;     \
        vmovdqu8        offset(CYPH_PLAIN_OUT, DATA_OFFSET), ZTMP0{MASKREG};       \
.else;  \
        vmovdqu8        offset(CYPH_PLAIN_OUT, DATA_OFFSET), ZTMP0;        \
.endif; \
.else;\
        ZMM_LOAD_MASKED_BLOCKS_0_16(num_left_blocks, CYPH_PLAIN_OUT, offset, ZTMP0, no_zmm, no_zmm, no_zmm, MASKREG)    \
.endif; \
        mov     %rcx, IA0;                              \
        mov     $0xff, DWORD(IA1);                      \
        mov     BYTE(RBITS), %cl;                       \
        shr     %cl, DWORD(IA1);                        \
        mov     IA0, %rcx;                              \
        vmovq   IA1, XWORD(ZTMP1);                      \
        mov     LENGTH, IA1;                            \
        sub     $(blocks_to_skip * 16 + 1), IA1;        \
        XVPSLLB(XWORD(ZTMP1), IA1, XWORD(ZTMP2), IA0)   \
.if num_left_blocks == 4;       \
        vshufi64x2      $0x15, ZTMP1, ZTMP1, ZTMP1;     \
.elseif num_left_blocks == 3;   \
        vshufi64x2      $0x45, ZTMP1, ZTMP1, ZTMP1;     \
.elseif num_left_blocks == 2;   \
        vshufi64x2      $0x51, ZTMP1, ZTMP1, ZTMP1;     \
.endif; \
        vpternlogq      $0x50, ZTMP1, ZTMP1, ZIN_OUT;   \
        vpternlogq      $0xF8, ZTMP1, ZTMP0, ZIN_OUT;

#define ZMM_AESENC_ROUND_BLOCKS_0_16(L0B0_3, L0B4_7, L0B8_11, L0B12_15, KEY, ROUND, D0_3, D4_7, D8_11, D12_15, NUMBL, NROUNDS) \
.if ROUND < 1; \
ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(NUMBL, vpxorq, L0B0_3, L0B4_7, L0B8_11, L0B12_15, L0B0_3, L0B4_7, L0B8_11, L0B12_15, KEY, KEY, KEY, KEY) \
.endif; \
.if (ROUND >= 1) && (ROUND <= NROUNDS); \
ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(NUMBL, vaesenc, L0B0_3, L0B4_7, L0B8_11, L0B12_15, L0B0_3, L0B4_7, L0B8_11, L0B12_15, KEY, KEY, KEY, KEY) \
.endif; \
.if ROUND > NROUNDS; \
ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(NUMBL, vaesenclast, L0B0_3, L0B4_7, L0B8_11, L0B12_15, L0B0_3, L0B4_7, L0B8_11, L0B12_15, KEY, KEY, KEY, KEY) \
.ifnc D0_3, no_data; \
.ifnc D4_7, no_data; \
.ifnc D8_11, no_data; \
.ifnc D12_15, no_data; \
ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(NUMBL, vpxorq, L0B0_3, L0B4_7, L0B8_11, L0B12_15, L0B0_3, L0B4_7, L0B8_11, L0B12_15, D0_3, D4_7, D8_11, D12_15) \
.endif; \
.endif; \
.endif; \
.endif; \
.endif;

#define ZMM_LOAD_MASKED_BLOCKS_0_16(NUM_BLOCKS, INP, DATA_OFFSET, DST0, DST1, DST2, DST3, MASK) \
.set src_offset,0;      \
.set blocks_left, NUM_BLOCKS; \
.if NUM_BLOCKS <= 4; \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST0){MASK}{z}; \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST0){MASK}{z}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST0{MASK}{z}; \
        .endif; \
.elseif NUM_BLOCKS > 4 && NUM_BLOCKS <= 8;      \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST1){MASK}{z}; \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST1){MASK}{z}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST1{MASK}{z}; \
        .endif; \
.elseif NUM_BLOCKS > 8 && NUM_BLOCKS <= 12;       \
         vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
         vmovdqu8        src_offset+DATA_OFFSET(INP), DST1; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST2){MASK}{z}; \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST2){MASK}{z}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST2{MASK}{z}; \
        .endif; \
.else;  \
         vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
         vmovdqu8        src_offset+DATA_OFFSET(INP), DST1; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST2; \
        .set blocks_left, blocks_left - 4;      \
        .set src_offset, src_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST3){MASK}{z}; \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST3){MASK}{z}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST3{MASK}{z}; \
        .endif; \
.endif; \

#define ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(NUM_BLOCKS, OPCODE, DST0, DST1, DST2, DST3, SRC1_0, SRC1_1, SRC1_2, SRC1_3, SRC2_0, SRC2_1, SRC2_2, SRC2_3) \
.set blocks_left,NUM_BLOCKS; \
.if NUM_BLOCKS < 4; \
        .if blocks_left == 1; \
                OPCODE        XWORD(SRC2_0), XWORD(SRC1_0), XWORD(DST0); \
        .elseif blocks_left == 2; \
                OPCODE        YWORD(SRC2_0), YWORD(SRC1_0), YWORD(DST0); \
        .elseif blocks_left == 3; \
                OPCODE        SRC2_0, SRC1_0, DST0; \
        .endif; \
.elseif NUM_BLOCKS >= 4 && NUM_BLOCKS < 8;      \
        OPCODE  SRC2_0, SRC1_0, DST0;   \
        .set blocks_left, blocks_left - 4;      \
        .if blocks_left == 1; \
                OPCODE        XWORD(SRC2_1), XWORD(SRC1_1), XWORD(DST1); \
        .elseif blocks_left == 2; \
                OPCODE        YWORD(SRC2_1), YWORD(SRC1_1), YWORD(DST1); \
        .elseif blocks_left == 3; \
                OPCODE        SRC2_1, SRC1_1, DST1; \
        .endif; \
.elseif NUM_BLOCKS >= 8 && NUM_BLOCKS < 12;      \
        OPCODE  SRC2_0, SRC1_0, DST0;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_1, SRC1_1, DST1;   \
        .set blocks_left, blocks_left - 4;      \
        .if blocks_left == 1; \
                OPCODE        XWORD(SRC2_2), XWORD(SRC1_2), XWORD(DST2); \
        .elseif blocks_left == 2; \
                OPCODE        YWORD(SRC2_2), YWORD(SRC1_2), YWORD(DST2); \
        .elseif blocks_left == 3; \
                OPCODE        SRC2_2, SRC1_2, DST2; \
        .endif; \
.elseif NUM_BLOCKS >= 12 && NUM_BLOCKS < 16;      \
        OPCODE  SRC2_0, SRC1_0, DST0;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_1, SRC1_1, DST1;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_2, SRC1_2, DST2;   \
        .set blocks_left, blocks_left - 4;      \
        .if blocks_left == 1; \
                OPCODE        XWORD(SRC2_3), XWORD(SRC1_3), XWORD(DST3); \
        .elseif blocks_left == 2; \
                OPCODE        YWORD(SRC2_3), YWORD(SRC1_3), YWORD(DST3); \
        .elseif blocks_left == 3; \
                OPCODE        SRC2_3, SRC1_3, DST3; \
        .endif; \
.else;  \
        OPCODE  SRC2_0, SRC1_0, DST0;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_1, SRC1_1, DST1;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_2, SRC1_2, DST2;   \
        .set blocks_left, blocks_left - 4;      \
        OPCODE  SRC2_3, SRC1_3, DST3;   \
        .set blocks_left, blocks_left - 4;      \
.endif; \

#define ZMM_STORE_MASKED_BLOCKS_0_16(NUM_BLOCKS, OUTP, DATA_OFFSET, SRC0, SRC1, SRC2, SRC3, MASK) \
.set blocks_left, NUM_BLOCKS; \
.set dst_offset, 0;     \
.if NUM_BLOCKS <= 4; \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC0), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC0), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .endif; \
.elseif NUM_BLOCKS > 4 && NUM_BLOCKS <=8;       \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC1), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC1), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        SRC1, dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .endif; \
.elseif NUM_BLOCKS > 8 && NUM_BLOCKS <= 12;       \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        vmovdqu8        SRC1, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC2), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC2), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        SRC2, dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .endif; \
.else;  \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        vmovdqu8        SRC1, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        vmovdqu8        SRC2, dst_offset+DATA_OFFSET(OUTP); \
        .set blocks_left, blocks_left - 4;      \
        .set dst_offset, dst_offset + 64;       \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC3), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC3), dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .elseif (blocks_left == 3 || blocks_left == 4); \
                vmovdqu8        SRC3, dst_offset+DATA_OFFSET(OUTP){MASK}; \
        .endif; \
.endif;

#define ZMM_LOAD_BLOCKS_0_16(NUM_BLOCKS, INP, DATA_OFFSET, DST0, DST1, DST2, DST3, FLAGS) \
.set src_offset, 0;     \
.set blocks_left, NUM_BLOCKS % 4;       \
.if NUM_BLOCKS < 4; \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST0); \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST0); \
        .elseif blocks_left == 3; \
		.ifc FLAGS, load_4_instead_of_3;	\
		vmovdqu8	src_offset+DATA_OFFSET(INP), DST0;	\
		.else;	\
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST0); \
                vinserti64x2    $2, src_offset + 32+DATA_OFFSET(INP), DST0, DST0; \
		.endif;	\
        .endif; \
.elseif NUM_BLOCKS >= 4 && NUM_BLOCKS < 8;      \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set src_offset, src_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST1); \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST1); \
        .elseif blocks_left == 3; \
		.ifc FLAGS, load_4_instead_of_3;        \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST1;     \
                .else;  \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST1); \
                vinserti64x2    $2, src_offset + 32 + DATA_OFFSET(INP), DST1, DST1; \
		.endif;	\
        .endif; \
.elseif NUM_BLOCKS >= 8 && NUM_BLOCKS < 12;      \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set src_offset, src_offset + 64;     \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST1; \
        .set src_offset, src_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST2); \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST2); \
        .elseif blocks_left == 3; \
		.ifc FLAGS, load_4_instead_of_3;        \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST2;     \
                .else;  \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST2); \
                vinserti64x2    $2, src_offset + 32 + DATA_OFFSET(INP), DST2, DST2; \
		.endif;	\
        .endif; \
.else;  \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST0; \
        .set src_offset, src_offset + 64;     \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST1; \
        .set src_offset, src_offset + 64;     \
        vmovdqu8        src_offset+DATA_OFFSET(INP), DST2; \
        .set src_offset, src_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), XWORD(DST3); \
        .elseif blocks_left == 2; \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST3); \
        .elseif blocks_left == 3; \
		.ifc FLAGS, load_4_instead_of_3;        \
                vmovdqu8        src_offset+DATA_OFFSET(INP), DST3;     \
                .else;  \
                vmovdqu8        src_offset+DATA_OFFSET(INP), YWORD(DST3); \
                vinserti64x2    $2, src_offset + 32 + DATA_OFFSET(INP), DST3, DST3; \
		.endif;	\
        .endif; \
.endif;

#define ZMM_STORE_BLOCKS_0_16(NUM_BLOCKS, OUTP, DATA_OFFSET, SRC0, SRC1, SRC2, SRC3) \
.set dst_offset, 0;     \
.set blocks_left, NUM_BLOCKS % 4;       \
.if NUM_BLOCKS < 4; \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC0), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC0), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 3; \
                vmovdqu8        YWORD(SRC0), dst_offset+DATA_OFFSET(OUTP); \
                vextracti32x4   $2, SRC0, dst_offset + 32+DATA_OFFSET(OUTP); \
        .endif; \
.elseif NUM_BLOCKS >= 4 && NUM_BLOCKS < 8;      \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC1), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC1), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 3; \
                vmovdqu8        YWORD(SRC1), dst_offset+DATA_OFFSET(OUTP); \
                vextracti32x4   $2, SRC1, dst_offset + 32 + DATA_OFFSET(OUTP); \
        .endif; \
.elseif NUM_BLOCKS >= 8 && NUM_BLOCKS < 12;      \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        vmovdqu8        SRC1, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC2), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC2), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 3; \
                vmovdqu8        YWORD(SRC2), dst_offset + DATA_OFFSET(OUTP); \
                vextracti32x4   $2, SRC2, dst_offset + 32 + DATA_OFFSET(OUTP); \
        .endif; \
.else;  \
        vmovdqu8        SRC0, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        vmovdqu8        SRC1, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        vmovdqu8        SRC2, dst_offset+DATA_OFFSET(OUTP); \
        .set dst_offset, dst_offset + 64;     \
        .if blocks_left == 1; \
                vmovdqu8        XWORD(SRC3), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 2; \
                vmovdqu8        YWORD(SRC3), dst_offset+DATA_OFFSET(OUTP); \
        .elseif blocks_left == 3; \
                vmovdqu8        YWORD(SRC3), dst_offset + DATA_OFFSET(OUTP); \
		vextracti32x4   $2, SRC3, dst_offset + 32 + DATA_OFFSET(OUTP); \
        .endif; \
.endif; \

#define INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, num_initial_blocks, CTR, ZT1, ZT2, ZT3, ZT4, ZT5, ZT6, ZT7, ZT8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
	lea	byte64_len_to_mask_table(%rip), IA0;	\
	mov	LENGTH, IA1;	\
.if num_initial_blocks > 12;	\
        sub      $192, IA1;	\
.elseif num_initial_blocks > 8;	\
        sub	$128, IA1;	\
.elseif num_initial_blocks > 4;	\
        sub     $64, IA1;	\
.endif;	\
	kmovq	(IA0, IA1, 8), MASKREG;	\
	ZMM_LOAD_MASKED_BLOCKS_0_16(num_initial_blocks, PLAIN_CYPH_IN, 0, ZT5, ZT6, ZT7, ZT8, MASKREG)	\
.if num_initial_blocks == 1;	\
	vmovdqa64 XWORD(CTR), XWORD(ZT1);	\
.elseif num_initial_blocks == 2;	\
	vshufi64x2	$0, YWORD(CTR), YWORD(CTR), YWORD(ZT1);	\
	.ifc CNTR_TYPE, CNTR;	\
	vpaddd	ddq_add_0_3(%rip), YWORD(ZT1), YWORD(ZT1);	\
	.else;	\
	vpaddq   ddq_add_0_3(%rip), YWORD(ZT1), YWORD(ZT1);	\
	.endif;	\
.elseif num_initial_blocks <= 4;        \
	vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
	vpaddd	ddq_add_0_3(%rip), ZWORD(CTR), ZT1;	\
	.else;	\
	vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
	.endif;	\
.elseif num_initial_blocks <= 8;        \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
	vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
	vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
	.else;	\
	vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
	.endif;	\
.elseif num_initial_blocks <= 12;        \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
	vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
	vpaddd  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
	.else;	\
	vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddq  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
	.endif;	\
.else;	\
	vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddd  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
	vpaddd  ddq_add_12_15(%rip), ZWORD(CTR), ZT4;     \
        .else;  \
        vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddq  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
	vpaddq  ddq_add_12_15(%rip), ZWORD(CTR), ZT4;     \
        .endif; \
.endif;	\
	ZMM_OPCODE3_DSTR_SRC1R_SRC2R_BLOCKS_0_16(num_initial_blocks, vpshufb, ZT1, ZT2, ZT3, ZT4, ZT1, ZT2, ZT3, ZT4, SHUFREG, SHUFREG, SHUFREG, SHUFREG)	\
.if NROUNDS == 9;	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.elseif NROUNDS == 11;	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.elseif NROUNDS == 13;	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY13, 13, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY14, 14, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.endif;	\
.ifc CNTR_TYPE, CNTR_BIT;	\
        or	RBITS, RBITS;	\
        jz      45f;	\
.if num_initial_blocks <= 4;	\
        PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT1, ZT5, ZT6, ZT7, IA0, IA1, (num_initial_blocks - 1), partial, MASKREG, NULL, 12)	\
.elseif num_initial_blocks <= 8;    \
	PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT2, ZT5, ZT6, ZT7, IA0, IA1, (num_initial_blocks - 1), partial, MASKREG, NULL, 12)	\
.elseif num_initial_blocks <= 12;    \
	PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT3, ZT5, ZT6, ZT7, IA0, IA1, (num_initial_blocks - 1), partial, MASKREG, NULL, 12)  \
.else;	\
	PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT4, ZT5, ZT6, ZT7, IA0, IA1, (num_initial_blocks - 1), partial, MASKREG, NULL, 12)  \
.endif;	\
.endif;	\
45:;	\
	ZMM_STORE_MASKED_BLOCKS_0_16(num_initial_blocks, CYPH_PLAIN_OUT, 0, ZT1, ZT2, ZT3, ZT4, MASKREG)	\

#define CNTR_ENC_DEC_SMALL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, NUM_BLOCKS, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)	\
	cmp	$8, NUM_BLOCKS;	\
	je	8f;	\
        jl      19f;	\
	cmp     $12, NUM_BLOCKS; \
        je      12f; \
        jl      20f;   \
	cmp     $16, NUM_BLOCKS; \
        je      16f; \
	cmp     $15, NUM_BLOCKS; \
        je      15f; \
	cmp     $14, NUM_BLOCKS; \
        je      14f; \
	cmp     $13, NUM_BLOCKS; \
        je      13f; \
20:;	\
	cmp     $11, NUM_BLOCKS; \
        je      11f; \
        cmp     $10, NUM_BLOCKS; \
        je      10f; \
        cmp     $9, NUM_BLOCKS; \
        je      9f; \
19:;	\
	cmp     $4, NUM_BLOCKS; \
        je      4f; \
        jl      18f;   \
	cmp     $7, NUM_BLOCKS; \
        je      7f; \
        cmp     $6, NUM_BLOCKS; \
        je      6f; \
        cmp     $5, NUM_BLOCKS; \
        je      5f; \
18:;	\
	cmp     $3, NUM_BLOCKS;	\
        je      3f;	\
        cmp     $2, NUM_BLOCKS;	\
        je      2f;	\
        jmp     1f;	\
16:;	\
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 16, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)	\
        jmp     17f;	\
15:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 15, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
14:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 14, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
13:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 13, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
12:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 12, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
11:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 11, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
10:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 10, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
9:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 9, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
8:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 8, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
7:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 7, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
6:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 6, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
5:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 5, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
4:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 4, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
3:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 3, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
2:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 2, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
        jmp     17f;        \
1:;       \
        INITIAL_BLOCKS_PARTIAL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, 1, CTR, ZTMP1, ZTMP2, ZTMP3, ZTMP4, ZTMP5, ZTMP6, ZTMP7, ZTMP8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)      \
17:;	\

#define INITIAL_BLOCKS(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, LENGTH, DATA_OFFSET, num_initial_blocks, CTR, CTR_1_4, CTR_5_8, CTR_9_12, CTR_13_16, ZT1, ZT2, ZT3, ZT4, ZT5, ZT6, ZT7, ZT8, IA0, IA1, MASKREG, SHUFREG, NROUNDS, CNTR_TYPE, RBITS)	\
.if num_initial_blocks > 0;	\
        ZMM_LOAD_BLOCKS_0_16(num_initial_blocks, PLAIN_CYPH_IN, 0, ZT5, ZT6, ZT7, ZT8, load_4_instead_of_3)	\
.if num_initial_blocks > 1;    \
.if num_initial_blocks == 2;        \
        vshufi64x2      $0, YWORD(CTR), YWORD(CTR), YWORD(ZT1); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), YWORD(ZT1), YWORD(ZT1);	\
        .else;  \
        vpaddq   ddq_add_0_3(%rip), YWORD(ZT1), YWORD(ZT1);	\
        .endif; \
.elseif num_initial_blocks <= 4;        \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        .else;        \
        vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        .endif; \
.elseif num_initial_blocks <= 8;        \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        .else;  \
        vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        .endif; \
.elseif num_initial_blocks <= 12;        \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddd  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
        .else;  \
        vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddq  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
        .endif; \
.else;  \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR); \
        .ifc CNTR_TYPE, CNTR;   \
        vpaddd  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddd  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddd  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
        vpaddd  ddq_add_12_15(%rip), ZWORD(CTR), ZT4;     \
        .else;  \
        vpaddq  ddq_add_0_3(%rip), ZWORD(CTR), ZT1;     \
        vpaddq  ddq_add_4_7(%rip), ZWORD(CTR), ZT2;     \
        vpaddq  ddq_add_8_11(%rip), ZWORD(CTR), ZT3;     \
        vpaddq  ddq_add_12_15(%rip), ZWORD(CTR), ZT4;     \
        .endif; \
.endif;	\
.endif;	\
.if num_initial_blocks == 1;		\
        vpshufb         XWORD(SHUFREG), CTR, XWORD(ZT1);	\
.elseif num_initial_blocks == 2;	\
        vextracti32x4   $1, YWORD(ZT1), CTR;		\
        vpshufb         YWORD(SHUFREG), YWORD(ZT1), YWORD(ZT1);	\
.elseif num_initial_blocks <= 4;			\
        vextracti32x4   $(num_initial_blocks - 1), ZT1, CTR;	\
        vpshufb         SHUFREG, ZT1, ZT1;			\
.elseif num_initial_blocks == 5;			\
        vmovdqa64       XWORD(ZT2), CTR;		\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         XWORD(SHUFREG), XWORD(ZT2), XWORD(ZT2);	\
.elseif num_initial_blocks == 6;			\
        vextracti32x4   $1, YWORD(ZT2), CTR;		\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         YWORD(SHUFREG), YWORD(ZT2), YWORD(ZT2);	\
.elseif num_initial_blocks == 7;			\
        vextracti32x4   $2, ZT2, CTR;			\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         SHUFREG, ZT2, ZT2;			\
.elseif num_initial_blocks == 8;			\
        vextracti32x4   $3, ZT2, CTR;			\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         SHUFREG, ZT2, ZT2;			\
.elseif num_initial_blocks == 9;			\
        vmovdqa64       XWORD(ZT3), CTR;		\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         SHUFREG, ZT2, ZT2;			\
        vpshufb         XWORD(SHUFREG), XWORD(ZT3), XWORD(ZT3);	\
.elseif num_initial_blocks == 10;			\
        vextracti32x4   $1, YWORD(ZT3), CTR;		\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         SHUFREG, ZT2, ZT2;			\
        vpshufb         YWORD(SHUFREG), YWORD(ZT3), YWORD(ZT3);	\
.elseif num_initial_blocks == 11;			\
        vextracti32x4   $2, ZT3, CTR;			\
        vpshufb         SHUFREG, ZT1, ZT1;			\
        vpshufb         SHUFREG, ZT2, ZT2;			\
        vpshufb         SHUFREG, ZT3, ZT3;			\
.elseif num_initial_blocks == 12;			\
        vextracti32x4   $3, ZT3, CTR;			\
        vpshufb         SHUFREG, ZT1, ZT1;                   \
        vpshufb         SHUFREG, ZT2, ZT2;                   \
        vpshufb         SHUFREG, ZT3, ZT3;                   \
.elseif num_initial_blocks == 13;			\
        vmovdqa64       XWORD(ZT4), CTR;		\
	vpshufb         SHUFREG, ZT1, ZT1;                   \
        vpshufb         SHUFREG, ZT2, ZT2;                   \
        vpshufb         SHUFREG, ZT3, ZT3;                   \
        vpshufb         XWORD(SHUFREG), XWORD(ZT4), XWORD(ZT4);    \
.elseif num_initial_blocks == 14;			\
        vextracti32x4   $1, YWORD(ZT4), CTR;		\
	vpshufb         SHUFREG, ZT1, ZT1;                   \
        vpshufb         SHUFREG, ZT2, ZT2;                   \
        vpshufb         SHUFREG, ZT3, ZT3;                   \
        vpshufb         YWORD(SHUFREG), YWORD(ZT4), YWORD(ZT4);	\
.elseif num_initial_blocks == 15;			\
        vextracti32x4   $2, ZT4, CTR;			\
	vpshufb         SHUFREG, ZT1, ZT1;                   \
        vpshufb         SHUFREG, ZT2, ZT2;                  \
        vpshufb         SHUFREG, ZT3, ZT3;                   \
	vpshufb         SHUFREG, ZT4, ZT4;                   \
.endif;	\
.if NROUNDS == 9;       \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.elseif NROUNDS == 11;  \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.elseif NROUNDS == 13;   \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY13, 13, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY14, 14, ZT5, ZT6, ZT7, ZT8, num_initial_blocks, NROUNDS)     \
.endif; \
	ZMM_STORE_BLOCKS_0_16(num_initial_blocks, CYPH_PLAIN_OUT, 0, ZT1, ZT2, ZT3, ZT4)	\
	sub	$(num_initial_blocks * 16), %r9;	\
	add	$(num_initial_blocks * 16), DATA_OFFSET;	\
.endif;	\
	mov	$0xffffffffffffffff, IA0;	\
.if num_initial_blocks > 0;	\
        cmp	$256, LENGTH;	\
        jge     44f;	\
        mov     %rcx, IA1;	\
        mov     $256, %ecx;	\
        sub     LENGTH, %rcx;	\
        shr     %cl, IA0;	\
        mov     IA1, %rcx;	\
44:;	\
.endif;	\
	kmovq	IA0, MASKREG;	\
	vmovdqu8        (PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT5;	\
        vmovdqu8        64(PLAIN_CYPH_IN, DATA_OFFSET), ZT6;        \
        vmovdqu8        128(PLAIN_CYPH_IN, DATA_OFFSET), ZT7;	\
        vmovdqu8        192(PLAIN_CYPH_IN, DATA_OFFSET), ZT8{MASKREG}{z};  \
        vshufi64x2      $0, ZWORD(CTR), ZWORD(CTR), ZWORD(CTR);		\
.if num_initial_blocks > 0;	\
.ifc CNTR_TYPE, CNTR;	\
        vpaddd        ddq_add_1_4(%rip), ZWORD(CTR), CTR_1_4;	\
	vpaddd        ddq_add_5_8(%rip), ZWORD(CTR), CTR_5_8;	\
	vpaddd        ddq_add_9_12(%rip), ZWORD(CTR), CTR_9_12;	\
	vpaddd        ddq_add_13_16(%rip), ZWORD(CTR), CTR_13_16;	\
.else;	\
	vpaddq        ddq_add_1_4(%rip), ZWORD(CTR), CTR_1_4;	\
        vpaddq        ddq_add_5_8(%rip), ZWORD(CTR), CTR_5_8;	\
        vpaddq        ddq_add_9_12(%rip), ZWORD(CTR), CTR_9_12;	\
        vpaddq        ddq_add_13_16(%rip), ZWORD(CTR), CTR_13_16;	\
.endif;	\
.else;	\
.ifc CNTR_TYPE, CNTR;   \
        vpaddd        ddq_add_0_3(%rip), ZWORD(CTR), CTR_1_4;   \
        vpaddd        ddq_add_4_7(%rip), ZWORD(CTR), CTR_5_8;   \
        vpaddd        ddq_add_8_11(%rip), ZWORD(CTR), CTR_9_12; \
        vpaddd        ddq_add_12_15(%rip), ZWORD(CTR), CTR_13_16;       \
.else;  \
        vpaddq        ddq_add_0_3(%rip), ZWORD(CTR), CTR_1_4;   \
        vpaddq        ddq_add_4_7(%rip), ZWORD(CTR), CTR_5_8;   \
        vpaddq        ddq_add_8_11(%rip), ZWORD(CTR), CTR_9_12; \
        vpaddq        ddq_add_12_15(%rip), ZWORD(CTR), CTR_13_16;       \
.endif; \
.endif;	\
        vpshufb         SHUFREG, CTR_1_4, ZT1;	\
        vpshufb         SHUFREG, CTR_5_8, ZT2;  \
        vpshufb         SHUFREG, CTR_9_12, ZT3;  \
        vpshufb         SHUFREG, CTR_13_16, ZT4;  \
.if NROUNDS == 9;	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.elseif NROUNDS == 11;	\
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.elseif NROUNDS == 13;  \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY13, 13, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY14, 14, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.endif;	\
.ifc CNTR_TYPE, CNTR_BIT;	\
        cmp             $256, LENGTH;	\
        jg              43f;	\
        or              RBITS, RBITS;	\
        jz              43f;	\
        PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT4, ZT5, ZT6, ZT7, IA0, IA1, 15, partial, MASKREG, DATA_OFFSET, 13)	\
.endif;	\
43:;	\
	vmovdqu8        ZT1, (CYPH_PLAIN_OUT, DATA_OFFSET);  \
        vmovdqu8        ZT2, 64(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT3, 128(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT4, 192(CYPH_PLAIN_OUT, DATA_OFFSET, 1){MASKREG};      \
        cmp             $256, LENGTH;		\
        jl              42f;	\
        add             $256, DATA_OFFSET;	\
        sub             $256, LENGTH;		\
        jmp             41f;	\
42:;				\
        xor             LENGTH, LENGTH;		\
41:;

#define ENCRYPT_16_PARALLEL(KEY, CYPH_PLAIN_OUT, PLAIN_CYPH_IN, DATA_OFFSET, CTR_1_4, CTR_5_8, CTR_9_12, CTR_13_16, FULL_PARTIAL, IA0, IA1, LENGTH, ZT1, ZT2, ZT3, ZT4, ZT5, ZT6, ZT7, ZT8, MASKREG, SHUFREG, ADD8REG, NROUNDS, CNTR_TYPE, RBITS)	\
.ifc FULL_PARTIAL, full;        \
        vmovdqu8        (PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT5;   \
        vmovdqu8        64(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT6; \
        vmovdqu8        128(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT7;        \
        vmovdqu8        192(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT8;  \
.else;  \
        lea     byte64_len_to_mask_table(%rip), IA0;    \
        mov     LENGTH, IA1;    \
        sub     $192, IA1;      \
        kmovq   (IA0, IA1, 8), MASKREG; \
        vmovdqu8        (PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT5;        \
        vmovdqu8        64(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT6;   \
        vmovdqu8        128(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT7;  \
        vmovdqu8        192(PLAIN_CYPH_IN, DATA_OFFSET, 1), ZT8{MASKREG}{z};  \
.endif; \
.ifc CNTR_TYPE, CNTR;	\
	vpaddd		ADD8REG, CTR_1_4, CTR_1_4;	\
	vpaddd          ADD8REG, CTR_5_8, CTR_5_8;      \
	vpaddd          ADD8REG, CTR_9_12, CTR_9_12;      \
        vpaddd          ADD8REG, CTR_13_16, CTR_13_16;      \
.else;	\
	vpaddq          ADD8REG, CTR_1_4, CTR_1_4;      \
        vpaddq          ADD8REG, CTR_5_8, CTR_5_8;      \
        vpaddq          ADD8REG, CTR_9_12, CTR_9_12;      \
        vpaddq          ADD8REG, CTR_13_16, CTR_13_16;      \
.endif;	\
	vpshufb         SHUFREG, CTR_1_4, ZT1;	\
        vpshufb         SHUFREG, CTR_5_8, ZT2;  \
        vpshufb         SHUFREG, CTR_9_12, ZT3;  \
        vpshufb         SHUFREG, CTR_13_16, ZT4;  \
.if NROUNDS == 9;       \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.elseif NROUNDS == 11;  \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.elseif NROUNDS == 13;   \
	ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY0, 0, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY1, 1, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY2, 2, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY3, 3, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY4, 4, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY5, 5, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY6, 6, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY7, 7, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY8, 8, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY9, 9, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY10, 10, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY11, 11, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY12, 12, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY13, 13, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
        ZMM_AESENC_ROUND_BLOCKS_0_16(ZT1, ZT2, ZT3, ZT4, ZKEY14, 14, ZT5, ZT6, ZT7, ZT8, 16, NROUNDS)     \
.endif; \
.ifc CNTR_TYPE, CNTR_BIT;	\
        cmp	$256, LENGTH;	\
        jg	53f;	\
        or	RBITS, RBITS;	\
        jz	53f;	\
        PRESERVE_BITS(RBITS, LENGTH, CYPH_PLAIN_OUT, ZT4, ZT5, ZT6, ZT7, IA0, IA1, 15, FULL_PARTIAL, MASKREG, DATA_OFFSET, 13)	\
.endif;	\
53:;	\
.ifc FULL_PARTIAL, full;	\
        vmovdqu8        ZT1, (CYPH_PLAIN_OUT, DATA_OFFSET);  \
        vmovdqu8        ZT2, 64(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT3, 128(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT4, 192(CYPH_PLAIN_OUT, DATA_OFFSET, 1);      \
.else;\
	vmovdqu8        ZT1, (CYPH_PLAIN_OUT, DATA_OFFSET);  \
        vmovdqu8        ZT2, 64(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT3, 128(CYPH_PLAIN_OUT, DATA_OFFSET, 1);       \
        vmovdqu8        ZT4, 192(CYPH_PLAIN_OUT, DATA_OFFSET, 1){MASKREG};      \
.endif;	\

#define CNTR_ENC_DEC(JOB , NROUNDS, CNTR_TYPE)		\
.ifc CNTR_TYPE, CCM;					\
	mov     _iv_len_in_bytes(JOB), %r12;    \
        mov     _iv(JOB), %r11;                 \
        mov     $14, %r10;                     \
        sub     %r12, %r10;                    \
        lea     byte_len_to_mask_table(%rip), %r8;      \
        kmovw   (%r8, %r12, 2), %k1;            \
        vmovdqu8        (%r11), %xmm0{%k1}{z};  \
        vpslldq         $1, %xmm0, %xmm0;       \
	vpinsrb	$0, (%r10), %xmm0, %xmm0;	\
        mov             $1, %r12;               \
	vpinsrb	$15, (%r12), %xmm0, %xmm0;	\
        mov     _msg_len_to_cipher(JOB), %r9;   \
.else;	\
	mov	_msg_len_to_cipher(JOB), %r9;		\
	.ifc CNTR_TYPE, CNTR_BIT;			\
	mov     %r9, %r14;				\
        add     $7, %r9;				\
        shr     $3, %r9;				\
        and     $7, %r14;				\
	.endif;	\
	or	%r9, %r9;				\
	je	125f;					\
.endif;	\
	xor	%r13, %r13;				\
        mov     _src(JOB), %r8;	\
        add     _cipher_start_src_offset_in_bytes(JOB), %r8;	\
        mov     _dst(JOB), %rdx;	\
        mov     _aes_enc_key_expanded(JOB), %rax;	\
.if NROUNDS == 9;	\
	vbroadcastf64x2 16*0(%rax), ZKEY0;	\
	vbroadcastf64x2 16*1(%rax), ZKEY1;      \
	vbroadcastf64x2 16*2(%rax), ZKEY2;      \
	vbroadcastf64x2 16*3(%rax), ZKEY3;      \
	vbroadcastf64x2 64(%rax), ZKEY4;      \
	vbroadcastf64x2 80(%rax), ZKEY5;      \
	vbroadcastf64x2 96(%rax), ZKEY6;      \
	vbroadcastf64x2 112(%rax), ZKEY7;      \
	vbroadcastf64x2 128(%rax), ZKEY8;      \
	vbroadcastf64x2 144(%rax), ZKEY9;      \
	vbroadcastf64x2 160(%rax), ZKEY10;	\
.elseif NROUNDS == 11;       \
	vbroadcastf64x2 (%rax), ZKEY0;  \
        vbroadcastf64x2 16(%rax), ZKEY1;      \
        vbroadcastf64x2 32(%rax), ZKEY2;      \
        vbroadcastf64x2 48(%rax), ZKEY3;      \
        vbroadcastf64x2 64(%rax), ZKEY4;      \
        vbroadcastf64x2 80(%rax), ZKEY5;      \
        vbroadcastf64x2 96(%rax), ZKEY6;      \
        vbroadcastf64x2 112(%rax), ZKEY7;      \
        vbroadcastf64x2 128(%rax), ZKEY8;      \
        vbroadcastf64x2 144(%rax), ZKEY9;      \
        vbroadcastf64x2 160(%rax), ZKEY10;      \
	vbroadcastf64x2 176(%rax), ZKEY11;	\
        vbroadcastf64x2 192(%rax), ZKEY12;    \
.elseif NROUNDS == 13;		\
	vbroadcastf64x2 (%rax), ZKEY0;  \
        vbroadcastf64x2 16(%rax), ZKEY1;      \
        vbroadcastf64x2 32(%rax), ZKEY2;      \
        vbroadcastf64x2 48(%rax), ZKEY3;      \
        vbroadcastf64x2 64(%rax), ZKEY4;      \
        vbroadcastf64x2 80(%rax), ZKEY5;      \
        vbroadcastf64x2 96(%rax), ZKEY6;      \
        vbroadcastf64x2 112(%rax), ZKEY7;      \
        vbroadcastf64x2 128(%rax), ZKEY8;      \
        vbroadcastf64x2 144(%rax), ZKEY9;      \
        vbroadcastf64x2 160(%rax), ZKEY10;      \
        vbroadcastf64x2 176(%rax), ZKEY11;      \
        vbroadcastf64x2 192(%rax), ZKEY12;    \
	vbroadcastf64x2 208(%rax), ZKEY13;    \
        vbroadcastf64x2 224(%rax), ZKEY14;    \
.endif;	\
	mov	_iv(JOB), %r11;			\
.ifc CNTR_TYPE, CNTR;	\
	mov	$0xfff, DWORD(%r10);	\
	vmovdqa	initial_12_IV_counter(%rip), %xmm0;	\
	mov	_iv_len_in_bytes(JOB), %r12;	\
	test	$16, %r12;			\
	cmovnz	mask_16_bytes(%rip), %r10;	\
	kmovq	%r10, %k1;			\
	vmovdqu8	(%r11),	%xmm0{%k1};	\
.endif;	\
.ifc CNTR_TYPE, CNTR_BIT;   \
	vmovdqu8	(%r11), %xmm0;		\
.endif;	\
	vmovdqa64	SHUF_MASK(%rip), %zmm13;	\
	vpshufb	%xmm13, %xmm0, %xmm0;	\
	mov	%r9, %r11;	\
	shr	$4, %r11;	\
	and	$0xf, %r11;	\
	mov	%r9, %r10;	\
	and	$0xf, %r10;	\
	add	$0xf, %r10;     \
	shr	$4, %r10;	\
	add	%r10, %r11;	\
	cmp	$256, %r9;	\
	jge	118f;	\
	CNTR_ENC_DEC_SMALL(%rax, %rdx, %r8, %r9, %r11, %xmm0, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r12, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14)	\
	jmp     125f;	\
118:;	\
        and	$0xf, %r11;	\
        je      116f;	\
        cmp     $15, %r11;     \
        je      115f;	\
        cmp     $14, %r11;     \
        je      114f;	\
        cmp     $13, %r11;     \
        je	113f;	\
        cmp	$12, %r11;     \
        je      112f;	\
        cmp     $11, %r11;     \
        je      111f;	\
        cmp     $10, %r11;     \
        je      110f;	\
        cmp     $9, %r11;     \
        je      209f;	\
        cmp     $8, %r11;     \
        je      208f;	\
        cmp     $7, %r11;     \
        je      207f;	\
        cmp     $6, %r11;     \
        je      206f;	\
        cmp     $5, %r11;     \
        je      205f;	\
        cmp     $4, %r11;     \
        je      204f;	\
        cmp     $3, %r11;     \
        je      203f;	\
        cmp     $2, %r11;     \
        je      202f;	\
        jmp     201f;	\
        and     $0xf, %r11;	\
        je      116f;		\
        cmp     $8, %r11;	\
        je      208f;	\
        jl      120f;		\
	cmp     $12, %r11;       \
        je      112f;       \
        jl      119f;         \
	cmp     $15, %r11;	\
        je      115f;	\
        cmp     $14, %r11;       \
        je      114f;	\
        cmp     $13, %r11;	\
        je      113f;	\
119:;	\
	cmp     $11, %r11;      \
        je      111f;      \
        cmp     $10, %r11;       \
        je      110f;      \
        cmp     $9, %r11;      \
        je      209f;      \
120:;	\
        cmp     $4, %r11;	\
        je      204f;	\
        jl      121f;	\
	cmp     $7, %r11;      \
        je      207f;      \
        cmp     $6, %r11;       \
        je      206f;      \
        cmp     $5, %r11;      \
        je      205f;      \
121:;	\
	cmp     $3, %r11;       \
        je      203f;      \
        cmp     $2, %r11;      \
        je      202f;      \
	jmp	201f;	\
115:;	\
	INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 15, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14)	\
        jmp	117f;	\
114:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 14, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
113:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 13, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
112:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 12, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
111:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 11, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
110:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 10, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
209:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 9, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
208:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 8, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
207:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 7, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
206:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 6, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
205:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 5, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
204:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 4, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
203:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 3, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
202:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 2, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
201:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 1, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
        jmp     117f;      \
116:;     \
        INITIAL_BLOCKS(%rax, %rdx, %r8, %r9, %r13, 0, %xmm0, %zmm1, %zmm2, %zmm3, %zmm4, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %r10, %r11, %k1, %zmm13, NROUNDS, CNTR_TYPE, %r14) \
117:;      \
	or		%r9, %r9;       \
	je              125f;	\
        vmovdqa64       ddq_add_16(%rip), %zmm14;	\
        cmp             $256, %r9;	\
        jl              124f;	\
122:;	\
	ENCRYPT_16_PARALLEL(%rax, %rdx, %r8, %r13, %zmm1, %zmm2, %zmm3, %zmm4, full, %r10, %r11, %r9, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %k1, %zmm13, %zmm14, NROUNDS, CNTR_TYPE, %r14)	\
	add	$256, %r13;	\
	sub	$256, %r9;	\
	cmp	$256, %r9;      \
	jge	122b;	\
123:;	\
	or      %r9, %r9;	\
	je 	125f;	\
124:;	\
	ENCRYPT_16_PARALLEL(%rax, %rdx, %r8, %r13, %zmm1, %zmm2, %zmm3, %zmm4, partial, %r10, %r11, %r9, %zmm5, %zmm6, %zmm7, %zmm8, %zmm9, %zmm10, %zmm11, %zmm12, %k1, %zmm13, %zmm14, NROUNDS, CNTR_TYPE, %r14) \
125:;	\
.ifc CNTR_TYPE, CCM;		\
        mov     JOB, %rax;	\
        or      $STS_COMPLETED_AES, _status(%rax);	\
.endif;	\

#define key_expansion_128_avx			\
        vpshufd $0xff, %xmm2, %xmm2;		\
        vshufps $0x10, %xmm1, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm1, %xmm1;		\
        vshufps $0x8c, %xmm1, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm1, %xmm1;		\
        vpxor   %xmm2, %xmm1, %xmm1;

#define key_expansion_1_192_avx(PARAM)		\
        vpshufd $0xff, %xmm2, %xmm2;		\
        vshufps $0x10, %xmm1, %xmm3, %xmm3;	\
        vpxor %xmm3, %xmm1, %xmm1;		\
        vshufps $0x8c, %xmm1, %xmm3, %xmm3;	\
        vpxor %xmm3, %xmm1, %xmm1;		\
        vpxor %xmm2, %xmm1, %xmm1;		\
        vmovdqu %xmm1,(PARAM)(EXP_ENC_KEYS);

#define key_expansion_2_192_avx(PARAM)		\
	vmovdqa %xmm4, %xmm5;			\
	vpslldq $4, %xmm5, %xmm5;		\
	vshufps $0xf0, %xmm1, %xmm6, %xmm6;	\
	vpxor %xmm5, %xmm6, %xmm6;		\
	vpxor %xmm6, %xmm4, %xmm4;		\
	vpshufd $0x0e, %xmm4, %xmm7;		\
	vmovdqu %xmm7, PARAM(EXP_ENC_KEYS);

#define key_dec_192_avx(PARAM)			\
        vmovdqa (16*PARAM)(EXP_ENC_KEYS), %xmm0;	\
        vaesimc %xmm0, %xmm1;			\
        vmovdqa %xmm1, 16 * (12 - PARAM)(EXP_DEC_KEYS);

#define key_expansion_256_avx			\
        vpshufd $0xff, %xmm2, %xmm2;		\
        vshufps $0x10, %xmm1, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm1, %xmm1;		\
        vshufps $0x8c, %xmm1, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm1, %xmm1;		\
        vpxor   %xmm2, %xmm1, %xmm1;

#define key_expansion_256_avx_2			\
        vpshufd $0xaa, %xmm2, %xmm2;		\
        vshufps $0x10, %xmm4, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm4, %xmm4;		\
        vshufps $0x8c, %xmm4, %xmm3, %xmm3;	\
        vpxor   %xmm3, %xmm4, %xmm4;		\
        vpxor   %xmm2, %xmm4, %xmm4;

.global aes_cntr_128_submit_vaes_avx512

aes_cntr_128_submit_vaes_avx512:
        FUNC_SAVE(CNTR)

        CNTR_ENC_DEC(%rdi, 9, CNTR)

        FUNC_RESTORE(CNTR)

        ret

.global aes_cntr_192_submit_vaes_avx512

aes_cntr_192_submit_vaes_avx512:
        FUNC_SAVE(CNTR)

        CNTR_ENC_DEC(%rdi, 11, CNTR)

        FUNC_RESTORE(CNTR)

        ret

.global aes_cntr_256_submit_vaes_avx512

aes_cntr_256_submit_vaes_avx512:
        FUNC_SAVE(CNTR)

        CNTR_ENC_DEC(%rdi, 13, CNTR)

        FUNC_RESTORE(CNTR)

        ret

.global aes_cntr_bit_128_submit_vaes_avx512

aes_cntr_bit_128_submit_vaes_avx512:
        FUNC_SAVE(CNTR_BIT)

        CNTR_ENC_DEC(%rdi, 9, CNTR_BIT)

        FUNC_RESTORE(CNTR_BIT)

        ret

.global aes_cntr_bit_192_submit_vaes_avx512

aes_cntr_bit_192_submit_vaes_avx512:
        FUNC_SAVE(CNTR_BIT)

        CNTR_ENC_DEC(%rdi, 11, CNTR_BIT)

        FUNC_RESTORE(CNTR_BIT)

        ret

.global aes_cntr_bit_256_submit_vaes_avx512

aes_cntr_bit_256_submit_vaes_avx512:
        FUNC_SAVE(CNTR_BIT)

        CNTR_ENC_DEC(%rdi, 13, CNTR_BIT)

        FUNC_RESTORE(CNTR_BIT)

        ret

 .global aes_cntr_ccm_128_vaes_avx512

aes_cntr_ccm_128_vaes_avx512:
        FUNC_SAVE(CNTR)

        CNTR_ENC_DEC(%rdi, 9, CCM)

        FUNC_RESTORE(CNTR)

        ret

.global aes_keyexp_128_avx512

aes_keyexp_128_avx512:
	vmovdqu (KEY), %xmm1
        vmovdqa %xmm1, (EXP_ENC_KEYS)
        vmovdqa %xmm1, 160(EXP_DEC_KEYS)
        vpxor   %xmm3, %xmm3, %xmm3

        vaeskeygenassist        $0x1, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 16(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm4
        vmovdqa %xmm4, 144(EXP_DEC_KEYS)

	vaeskeygenassist        $0x2, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 32(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 128(EXP_DEC_KEYS)

	vaeskeygenassist        $0x4, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 48(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm4
        vmovdqa %xmm4, 112(EXP_DEC_KEYS)

	vaeskeygenassist        $0x8, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 64(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 96(EXP_DEC_KEYS)

	vaeskeygenassist        $0x10, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 80(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm4
        vmovdqa %xmm4, 80(EXP_DEC_KEYS)

	vaeskeygenassist        $0x20, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 96(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 64(EXP_DEC_KEYS)

	vaeskeygenassist        $0x40, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 112(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm4
        vmovdqa %xmm4, 48(EXP_DEC_KEYS)

	vaeskeygenassist        $0x80, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 128(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 32(EXP_DEC_KEYS)

	vaeskeygenassist        $0x1b, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 144(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm4
        vmovdqa %xmm4, 16(EXP_DEC_KEYS)

	vaeskeygenassist        $0x36, %xmm1, %xmm2
        key_expansion_128_avx
        vmovdqa %xmm1, 160(EXP_ENC_KEYS)
        vmovdqa %xmm1, (EXP_DEC_KEYS)

aes_keyexp_128_avx_return:
	ret

.global aes_keyexp_192_avx512

aes_keyexp_192_avx512:
	vmovq 16(KEY), %xmm7
        vmovq %xmm7, 16(EXP_ENC_KEYS)
        vpshufd $0x4f, %xmm7, %xmm4
        vmovdqu (KEY), %xmm1
        vmovdqu %xmm1, (EXP_ENC_KEYS)
        vmovdqa %xmm1, (EXP_DEC_KEYS)
	vmovdqa %xmm1, 192(EXP_DEC_KEYS)

        vpxor %xmm3, %xmm3, %xmm3
        vpxor %xmm6, %xmm6, %xmm6

	vaeskeygenassist $0x1, %xmm4, %xmm2
        key_expansion_1_192_avx(24)
                key_expansion_2_192_avx(40)

	vaeskeygenassist $0x2, %xmm4, %xmm2
        key_expansion_1_192_avx(48)
                key_expansion_2_192_avx(64)

	vaeskeygenassist $0x4, %xmm4, %xmm2
        key_expansion_1_192_avx(72)
                key_expansion_2_192_avx(88)

	vaeskeygenassist $0x8, %xmm4, %xmm2
        key_expansion_1_192_avx(96)
                key_expansion_2_192_avx(112)

	vaeskeygenassist $0x10, %xmm4, %xmm2
        key_expansion_1_192_avx(120)
                key_expansion_2_192_avx(136)

	vaeskeygenassist $0x20, %xmm4, %xmm2
        key_expansion_1_192_avx(144)
                key_expansion_2_192_avx(160)

	vaeskeygenassist $0x40, %xmm4, %xmm2
        key_expansion_1_192_avx(168)
                key_expansion_2_192_avx(184)

	vaeskeygenassist $0x80, %xmm4, %xmm2
        key_expansion_1_192_avx(192)

	vmovdqa 192(EXP_ENC_KEYS), %xmm0
        vmovdqa %xmm0, (EXP_DEC_KEYS)
	
	key_dec_192_avx(1)
        key_dec_192_avx(2)
        key_dec_192_avx(3)
        key_dec_192_avx(4)
        key_dec_192_avx(5)
        key_dec_192_avx(6)
        key_dec_192_avx(7)
        key_dec_192_avx(8)
        key_dec_192_avx(9)
        key_dec_192_avx(10)
        key_dec_192_avx(11)

aes_keyexp_192_avx_return:
        ret

.global aes_keyexp_256_avx512

aes_keyexp_256_avx512:
        vmovdqu (KEY), %xmm1
        vmovdqa %xmm1, (EXP_ENC_KEYS)
        vmovdqa %xmm1, 16*14(EXP_DEC_KEYS)

        vmovdqu 16(KEY), %xmm4
        vmovdqa %xmm4, 16(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 16*13(EXP_DEC_KEYS)

        vpxor %xmm3, %xmm3, %xmm3

        vaeskeygenassist $0x1, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 32(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 192(EXP_DEC_KEYS)

        vaeskeygenassist $0x1, %xmm1, %xmm2
        key_expansion_256_avx_2
        vmovdqa %xmm4, 48(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 176(EXP_DEC_KEYS)

	vaeskeygenassist $0x2, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 64(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 160(EXP_DEC_KEYS)

        vaeskeygenassist $0x2, %xmm1, %xmm2
        key_expansion_256_avx_2
        vmovdqa %xmm4, 80(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 144(EXP_DEC_KEYS)

	vaeskeygenassist $0x4, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 96(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 128(EXP_DEC_KEYS)

        vaeskeygenassist $0x4, %xmm1, %xmm2
        key_expansion_256_avx_2
        vmovdqa %xmm4, 112(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 112(EXP_DEC_KEYS)

	vaeskeygenassist $0x8, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 128(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 96(EXP_DEC_KEYS)

        vaeskeygenassist $0x8, %xmm1, %xmm2
        key_expansion_256_avx_2
        vmovdqa %xmm4, 144(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 80(EXP_DEC_KEYS)

	vaeskeygenassist $0x10, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 160(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 64(EXP_DEC_KEYS)

        vaeskeygenassist $0x10, %xmm1, %xmm2
        key_expansion_256_avx_2
        vmovdqa %xmm4, 176(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 48(EXP_DEC_KEYS)

	vaeskeygenassist $0x20, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 192(EXP_ENC_KEYS)
        vaesimc %xmm1, %xmm5
        vmovdqa %xmm5, 32(EXP_DEC_KEYS)

        vaeskeygenassist $0x20, %xmm1, %xmm2
        key_expansion_256_avx_2 
        vmovdqa %xmm4, 208(EXP_ENC_KEYS)
        vaesimc %xmm4, %xmm0
        vmovdqa %xmm0, 16(EXP_DEC_KEYS)

	vaeskeygenassist $0x40, %xmm4, %xmm2
        key_expansion_256_avx
        vmovdqa %xmm1, 224(EXP_ENC_KEYS)
        vmovdqa %xmm1, (EXP_DEC_KEYS)

aes_keyexp_256_avx_return:
        ret
