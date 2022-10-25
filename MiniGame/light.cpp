//===================================================================
//
//	ライト処理[light.cpp]
//	Author:SHUGO KURODA
//
//===================================================================
#include "manager.h"
#include "renderer.h"

#include "light.h"

//======================================================
//	静的メンバ変数
//======================================================
int CLight::m_nNumLight = 0;		//ライトの数

//======================================================
//	コンストラクタ
//======================================================
CLight::CLight() :m_vecDir(0.0f, 0.0f, 0.0f), m_Diffuse(0.0f, 0.0f, 0.0f, 0.0f)
{
}

//======================================================
//	デストラクタ
//======================================================
CLight::~CLight()
{
}

//======================================================
//	生成処理
//======================================================
CLight *CLight::Create(const D3DXVECTOR3& vecDir, const D3DXCOLOR& diffuse)
{
	//インスタンス生成
	CLight *pLight = new CLight;

	// ライトの方向ベクトルを設定
	pLight->m_vecDir = vecDir;

	// ライトの拡散光を設定
	pLight->m_Diffuse = diffuse;

	// 初期化
	pLight->Init();

	return pLight;
}

//======================================================
//	初期化処理
//======================================================
HRESULT CLight::Init()
{
	//デバイスの取得
	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();

	//ライト情報の初期化
	ZeroMemory(&m_aLight, sizeof(D3DLIGHT9));

	//ライトの種類を設定
	m_aLight.Type = D3DLIGHT_DIRECTIONAL;

	//ライトの拡散光を設定
	m_aLight.Diffuse = m_Diffuse;

	//正規化する(大きさ１のベクトルにする)
	D3DXVec3Normalize(&m_vecDir, &m_vecDir);
	m_aLight.Direction = m_vecDir;

	//ライトを設定 
	pDevice->SetLight(m_nNumLight, &m_aLight);

	//ライトを有効にする
	pDevice->LightEnable(m_nNumLight, TRUE);

	//ライトの総数を加算
	m_nNumLight++;

	return S_OK;
}

//======================================================
//	終了処理
//======================================================
void CLight::Uninit()
{
	// ライトの総数を初期化
	m_nNumLight = 0;
}

//======================================================
//	更新処理
//======================================================
void CLight::Update()
{
}

//======================================================
//	描画処理
//======================================================
void CLight::Draw()
{
}
