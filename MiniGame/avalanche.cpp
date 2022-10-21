//-----------------------------------------------------------------------------------------------
//
// 雪崩発生時の処理[avalanche.cpp]
// Author : Koshimoto Manato
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// インクルードファイル
//-----------------------------------------------------------------------------------------------
#include "avalanche.h"
#include "logo.h"
#include "player.h"
#include "effect.h"
#include "library.h"
#include "game.h"
#include "title.h"

//-----------------------------------------------------------------------------------------------
// 静的メンバ変数
//-----------------------------------------------------------------------------------------------
CEffect *CAvalanche::m_pEffect[CAvalanche::MAX_AVALANCHE] = {};

//-----------------------------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------------------------
CAvalanche::CAvalanche() : m_nDuration(300), m_nEffectIdx(0), m_bEnd(false)
{
}

//-----------------------------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------------------------
CAvalanche::~CAvalanche()
{

}

//-----------------------------------------------------------------------------------------------
// 生成
//-----------------------------------------------------------------------------------------------
CAvalanche* CAvalanche::Create()
{
	// ポインタクラスを宣言
	CAvalanche* pAvalanche = new CAvalanche;

	if (pAvalanche != nullptr)
	{// もしnullptrではなかったら
		// 初期化
		pAvalanche->Init();
	}

	return pAvalanche;
}

//-----------------------------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------------------------
HRESULT CAvalanche::Init()
{
	//ロゴのcreate関数からテクスチャを表示
	//CLogo::Create(テクスチャの名前);

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------------------------
void CAvalanche::Uninit()
{
	Release();
}

//-----------------------------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------------------------
void CAvalanche::Update()
{
	//雪崩持続時間を減少させる
	m_nDuration--;

	if (m_nDuration % 2 == 0)
	{
		//雪崩のエフェクトの生成
		m_pEffect[m_nEffectIdx] = CEffect::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR2(10.0f, 10.0f), CEffect::TYPE_SPHERE, CEffect::TEX_SPHERE);
		//雪崩のエフェクトのインデックスを1進める
		m_nEffectIdx++;
	}

	if (m_nDuration <= 0)
	{//持続時間が０以下になったら
		m_bEnd = true;
	}

<<<<<<< HEAD
	for (int nCntPlayer = 0; nCntPlayer < CPlayer::PLAYER_MAX; nCntPlayer++)
	{
		//プレイヤーのポインタを取得
		CPlayer *pPlayer = CGame::GetPlayer(nCntPlayer);

		if (pPlayer != nullptr)
		{
			if (m_bEnd != true)
			{
				//for (int nCntObject = 0; nCntObject < CObject::MAX_OBJECT; nCntObject++)
				//{
				//	CObject *pObject = CObject::GetObject(nCntObject);
				//	if (pObject != nullptr)
				//	{
				//		CObject::EObject objType = pObject->GetObjType();

				//		if (objType == OBJ_PLAYER)
				//		{
				if (pPlayer->GetPosition().z <= m_pEffect[0]->GetPosition().z)
				{//最初に生成したエフェクトがプレイヤーに接触した場合
					//プレイヤーを押し戻す
					pPlayer->SetBadState(true);
				}
				//		}
				//	}
				//}
			}
			else
			{
				pPlayer->SetBadState(false);
				Uninit();
			}
		}
	}
=======
	//プレイヤーの情報を取得
	CPlayer *pPlayer = CTitle::GetPlayer();

	if (m_bEnd != true)
	{
		for (int nCntObject = 0; nCntObject < CObject::MAX_OBJECT; nCntObject++)
		{
			if (pPlayer->GetPosition().z <= m_pEffect[0]->GetPosition().z)
			{//最初に生成したエフェクトがプレイヤーに接触した場合
				//プレイヤーを押し戻す
				pPlayer->SetBadState(true);
			}
		}
	}
	else
	{
		//プレイヤーの状態を変更する
		pPlayer->SetBadState(false);
		Uninit();
	}
>>>>>>> 212935dc8f940f827fa80f303ee408bacb8c7e9e
}

//-----------------------------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------------------------
void CAvalanche::Draw()
{
}
