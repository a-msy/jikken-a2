#include <stdio.h>

/*
 * a0 と a1 の積を計算して、結果をresult[0]とresult[1]に格納して返す
 * result[0] ... 結果の上位ワード
 * result[1] ... 結果の下位ワード
 */
void
multiply(unsigned int *result, unsigned int a0, unsigned int a1) {
    int t0 = 32;              /* ループカウンタ */
    unsigned int v0 = 0;      /* 結果の上位ワードを格納 */
    unsigned int v1 = 0;      /* 結果の下位ワードを格納 */
    for (;;) {
        if (a1 & 1)           /* a1 のLSBが 1 か？ */
            v0 += a0;         /* v0 に a0 を足し込む */
        v1 |= (v0 << 31);     /* v0 のLSBをv1のMSBとする */
        v0 >>= 1;             /* v0 を右シフト */
        if (--t0 == 0) break; /* ループ終了か？ */
        v1 >>= 1;             /* v1 を右シフト */
        a1 >>= 1;             /* a1 を右シフト */
    }
    result[0] = v0;           /* 結果（上位ワード）をメモリに格納 */
    result[1] = v1;           /* 結果（下位ワード）をメモリに格納 */
    return;
}

int
main(int argc, char *argv[]) {
    unsigned int result[2];
    unsigned int a0 = 6;
    unsigned int a1 = 10;
    printf("a0 = %u (0x%08x), a1 = %u (0x%08x)\n", a0, a0, a1, a1);
    multiply(result, a0, a1); 
    //multiply(result, 0xffff0000, 2);
    printf("result[0] = %u (0x%08x)\n", result[0], result[0]);
    printf("result[1] = %u (0x%08x)\n", result[1], result[1]);
}

/* End of file (multiply.c) */

