//-----------------------------------------------------------------------------------------------
//
//	モデルのマネージャー処理[model_obstacle.cpp]
//	Author : SHUGO KURODA
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// インクルードファイル
//-----------------------------------------------------------------------------------------------
#include "manager.h"
#include "renderer.h"

#include "library.h"

// 追加
#include "x_file.h"
#include "model_manager.h"
#include "game.h"
#include "camera.h"
#include "model_obstacle.h"

//-----------------------------------------------------------------------------------------------
// using宣言
//-----------------------------------------------------------------------------------------------
using namespace LibrarySpace;

//-----------------------------------------------------------------------------------------------
// 定数宣言
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------------------------
CModelManager::CModelManager() :m_nCounter(0), m_nNumCreate(0)
{
}

//-----------------------------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------------------------
CModelManager::~CModelManager()
{
}

//-----------------------------------------------------------------------------------------------
// 生成
//-----------------------------------------------------------------------------------------------
CModelManager *CModelManager::Create()
{
	// ポインタクラスを宣言
	CModelManager* pObstacle = new CModelManager;

	if (pObstacle != nullptr)
	{
		// 初期化
		pObstacle->Init();
	}

	return pObstacle;
}

//-----------------------------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------------------------
HRESULT CModelManager::Init()
{
	// モデル生成までの数値取得
	m_nNumCreate = GetRandNum(300, 60);

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------------------------
void CModelManager::Uninit()
{
	// 破棄
	Release();
}

//-----------------------------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------------------------
void CModelManager::Update()
{
	// カウンター加算
	m_nCounter++;

	// カウンターが生成までの数値以上になったら
	if (m_nNumCreate <= m_nCounter)
	{
		// カウンターリセット
		m_nCounter = 0;
		// モデル生成までの数値取得
		m_nNumCreate = GetRandNum(300, 60);

		// カメラ情報の取得
		D3DXVECTOR3 posCamera = CManager::GetManager()->GetGame()->GetCamera()->GetPosV();
		
		// 生成位置の取得
		float fRand = (float)GetRandNum(80, -80);

		// 障害物生成
		switch (GetRandNum(1, 0))
		{
		case 0:
			CObstacle::Create(D3DXVECTOR3(fRand, 0.0f, posCamera.z), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_ROCKICE_SMALL");
			break;

		case 1:
			CObstacle::Create(D3DXVECTOR3(fRand, -0.0f, posCamera.z), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_ROCKICE_NORMAL");
			break;

		default:
			break;
		}
	}
}

//-----------------------------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------------------------
void CModelManager::Draw()
{
}
