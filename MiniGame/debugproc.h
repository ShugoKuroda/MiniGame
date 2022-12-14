//=============================================================================
//
// デバックプロックヘッダー [debugproc.h]
// Author : 
//
//=============================================================================
#ifndef _DEBUGPROC_H_
#define _DEBUGPROC_H_

//*****************************************************************************
//	ヘッダファイルのインクルード
//*****************************************************************************
#include <d3dx9.h>		// 描画処理に必要

//*****************************************************************************
// デバック表示(基本クラス)
//*****************************************************************************
class CDebugProc
{
public:
	// コンストラクタ
	CDebugProc();
	// デストラクタ
	~CDebugProc();

	// 初期化
	void Init();
	// 終了
	void Uninit();
	// 表示
	void Print(const char *fmt, ...);
	// 描画
	void Draw();

private:
	LPD3DXFONT m_pFont;		// フォントのポインタ
	char m_aStr[1024];		// 文字数を格納するバッファ
};

#endif