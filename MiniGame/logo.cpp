//-----------------------------------------------------------------------------------------------
//
// ロゴ処理[logo.cpp]
// Author : SHUGO KURODA
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// インクルードファイル
//-----------------------------------------------------------------------------------------------
#include "logo.h"
#include "manager.h"	// アプリケーション
#include "renderer.h"	// レンダリング
#include "fade.h"
#include "game.h"

#include "texture.h"

//-----------------------------------------------------------------------------------------------
// 定数宣言
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// 静的メンバ変数
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------------------------
CLogo::CLogo() :m_nCountUninit(0)
{
	SetType(EObject::OBJ_LOGO);
}

//-----------------------------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------------------------
CLogo::~CLogo()
{
}

//-----------------------------------------------------------------------------------------------
// 生成
// const D3DXVECTOR3& pos → 生成する位置
// const D3DXVECTOR2& size → 生成するサイズ
// const char* name → 生成するテクスチャ
// const int& nCount → 破棄するまでの時間
//-----------------------------------------------------------------------------------------------
CLogo* CLogo::Create(const D3DXVECTOR3& pos, const D3DXVECTOR2& size, const char* name, const int& nCount)
{
	// ポインタクラスを宣言
	CLogo* pLogo = new CLogo;

	if (pLogo != nullptr)
	{// もしnullptrではなかったら

		// 位置設定
		pLogo->SetPosition(pos);

		// サイズの設定
		pLogo->SetSize(size);

		// 破棄カウンターを設定
		pLogo->m_nCountUninit = nCount;

		// 初期化
		pLogo->Init();

		// テクスチャの設定
		pLogo->BindTexture(CTexture::GetTexture(name));
	}

	return pLogo;
}

//-----------------------------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------------------------
HRESULT CLogo::Init()
{
	//初期化
	CObject2D::Init();

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------------------------
void CLogo::Uninit()
{
	CObject2D::Uninit();
}

//-----------------------------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------------------------
void CLogo::Update()
{
	// カウントを減らす
	m_nCountUninit--;

	// 表示カウンターが0以下
	if (m_nCountUninit <= 0)
	{// 破棄
		Uninit();
		return;
	}
}

//-----------------------------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------------------------
void CLogo::Draw()
{
	CObject2D::Draw();
}