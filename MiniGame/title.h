//=============================================================================
//
// タイトル画面処理 [title.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _TITLE_H_
#define _TITLE_H_

#include "base.h"
#include "cloud_data.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CObject2D;
class CPlayer;
class CEnemyBoss;
class CItem;
class CCamera;

//-----------------------------------------------------------------------------
// ベースクラス(派生クラス)
//-----------------------------------------------------------------------------
class CTitle : public CBase
{
public:
	enum TITLE_OBJ
	{//背景の種類
		BG_SKY = 0,		// 背景の空
		LOGO_PLAYER,	// プレイヤーロゴ
		LOGO_TITLE,		// タイトルロゴ
		LOGO_PRESS,		// PRESSロゴ
		BG_FADE,		// 画面を薄暗くする用
		LOGO_TUTORIAL,	// チュートリアル
		LOGO_SHADOW,	// プレイヤーロゴ(黒)
		OBJ_MAX			// 背景の最大数
	};

public:
	CTitle();
	~CTitle() override;

	//メンバ関数
	HRESULT Init() override;
	void Uninit() override;
	void Update() override;

	// プレイヤー情報
	static CPlayer* GetPlayer() { return m_pPlayer; }
	// 敵ボス情報
	static CEnemyBoss* GetEnemyBoss() { return m_pEnemyBoss; }
	//Item 情報
	static CItem* GetItem() { return m_pItem; }
	//カメラ情報
	static CCamera* GetCamera() { return m_pCamera; }

private:
	//メンバ変数
	static LPDIRECT3DTEXTURE9 m_apTexture[OBJ_MAX];		//テクスチャのポインタ
	static CPlayer* m_pPlayer;
	static CEnemyBoss* m_pEnemyBoss;
	static CItem* m_pItem;
	static CCamera* m_pCamera;
	CObject2D *m_apObject2D[OBJ_MAX - 1];
	bool m_bTitleDraw;
	bool m_bPush;
	bool m_bEntry[2];
	bool m_bTutorial;
	int m_nCounter;
	D3DXVECTOR3 m_move;		// 移動量
};

#endif		// _TITLE_H_
