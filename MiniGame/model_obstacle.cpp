//-----------------------------------------------------------------------------------------------
//
// 敵ボスの処理[enemy_boss.cpp]
// Author : SHUGO kURODA
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// インクルードファイル
//-----------------------------------------------------------------------------------------------
#include "manager.h"
#include "renderer.h"

#include "load.h"
#include "sound.h"

#include "game.h"
#include "library.h"
#include "effect.h"
#include "logo.h"
#include "score.h"
#include "fade_scene.h"

#include "player.h"
#include "bullet.h"
#include "explosion.h"
#include "meshfield.h"
#include "logo.h"

// 追加
#include "x_file.h"
#include "title.h"
#include "model_obstacle.h"

//-----------------------------------------------------------------------------------------------
// 定数宣言
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------------------------
CObstacle::CObstacle() :m_PosOld(0.0f, 0.0f, 0.0f)
{
}

//-----------------------------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------------------------
CObstacle::~CObstacle()
{
}

//-----------------------------------------------------------------------------------------------
// 生成
//-----------------------------------------------------------------------------------------------
CObstacle *CObstacle::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
{
	// ポインタクラスを宣言
	CObstacle* pObstacle = new CObstacle;

	if (pObstacle != nullptr)
	{
		// 位置設定
		pObstacle->SetPosition(pos);
		// 角度設定
		pObstacle->SetRotation(rot);
		// Xファイルの設定
		pObstacle->BindXFile(CManager::GetXFile()->GetXFile(name));
		// 初期化
		pObstacle->Init();
	}

	return pObstacle;
}

//-----------------------------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------------------------
HRESULT CObstacle::Init()
{
	// 種類を設定
	SetObjType(EObject::OBJ_OBSTACLE);
	// 初期化
	CModel::Init();

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------------------------
void CObstacle::Uninit()
{
	CModel::Uninit();
}

//-----------------------------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------------------------
void CObstacle::Update()
{
}

//-----------------------------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------------------------
void CObstacle::Draw()
{
	//描画処理
	CModel::Draw();
}

//-----------------------------------------------------------------------------------------------
// 全ての障害物の当たり判定
//-----------------------------------------------------------------------------------------------
void CObstacle::CollisionAll(D3DXVECTOR3* pPosPlayer, D3DXVECTOR3* pPosPlayerOld, D3DXVECTOR3* pSizePlayer)
{
	for (int nCntObject = 0; nCntObject < CObject::MAX_OBJECT; nCntObject++)
	{
		// オブジェクトのポインタ取得
		CObject *pObject = CObject::GetObject(nCntObject);

		if (pObject != nullptr)
		{
			// オブジェクトの種類取得
			CObject::EObject objType = pObject->GetObjType();

			//プレイヤーの弾と敵の判定
			if (objType == OBJ_OBSTACLE)
			{
				//オブジェクトポインタをキャスト
				CObstacle *pObstacle = (CObstacle*)pObject;

				// 当たり判定
				pObstacle->Collision(pPosPlayer, pPosPlayerOld, pSizePlayer);
			}
		}
	}
}

//-----------------------------------------------------------------------------------------------
// 当たり判定
//-----------------------------------------------------------------------------------------------
bool CObstacle::Collision(D3DXVECTOR3* pPosPlayer, D3DXVECTOR3* pPosPlayerOld, D3DXVECTOR3* pSizePlayer)
{
	// 位置取得
	D3DXVECTOR3 pos = GetPosition();
	//サイズ取得
	D3DXVECTOR3 size = GetSizeMax();

	// 矩形の当たり判定3D
	if (LibrarySpace::BoxCollision3D(pPosPlayer, pPosPlayerOld, &pos, pSizePlayer, &size))
	{//ダメージ処理
		return true;	//当たった
	}

	return false;	//当たってない
}
