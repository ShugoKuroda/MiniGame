////===================================================================
////
////	モデル処理[motion.cpp]
////	Author:SHUGO KURODA
////
////===================================================================
//
////======================================================
////	インクルード
////======================================================
//#include "manager.h"
//#include "renderer.h"
//#include "motion.h"
//
//#include "input.h"
//#include "camera.h"
////#include "shadow.h"
//#include "bullet.h"
//#include "load.h"
//#include "enemy.h"
//
////-----------------------------------------------------------------------------
//// コンストラクタ
////-----------------------------------------------------------------------------
//CMotion::CMotion() :m_pos(0.0f, 0.0f, 0.0f), m_posOld(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f),
//m_vtxMax(0.0f, 0.0f, 0.0f), m_vtxMin(0.0f, 0.0f, 0.0f), m_nIdxShadow(0)
//{
//}
//
////-----------------------------------------------------------------------------
//// デストラクタ
////-----------------------------------------------------------------------------
//CMotion::~CMotion()
//{
//}
//
////-----------------------------------------------------------------------------
//// 生成
//// const D3DXVECTOR3& pos → 生成する位置
//// const D3DXVECTOR3& rot → 生成する角度
//// const char* name → 生成する名前(種類)
////-----------------------------------------------------------------------------
//CMotion* CMotion::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
//{
//	// インスタンス生成
//	CMotion *pModel = new CMotion;
//
//	// 位置設定
//	pModel->SetPosition(pos);
//
//	// 角度設定
//	pModel->SetRotation(rot);
//
//	// Xファイルの割り当て
//	//pModel->BindXFile(CManager::GetManager()->GetXFile()->GetXFile(name));
//
//	// 初期化
//	pModel->Init();
//
//	return pModel;
//}
//
////-----------------------------------------------------------------------------
//// 初期化
////-----------------------------------------------------------------------------
//HRESULT CMotion::Init()
//{
//	return S_OK;
//}
//
////-----------------------------------------------------------------------------
//// 終了
////-----------------------------------------------------------------------------
//void CMotion::Uninit()
//{
//	Release();
//}
//
////-----------------------------------------------------------------------------
//// 更新
////-----------------------------------------------------------------------------
//void CMotion::Update()
//{
//	//for (int nCntVtx = 0; nCntVtx < MAX_MODEL_TYPE; nCntVtx++)
//	//{
//	//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//	//	{
//	//		//前回の位置を保存
//	//		g_aModel[nCnt].posOld = g_aModel[nCnt].pos;
//
//	//		//当たり判定
//	//		//CollisionPlayer(&g_aModel[nCnt].pos, &g_aModel[nCnt].posOld, &g_aModel[nCnt].Airmove, g_aModel[nCnt].fWidth, g_aModel[nCnt].fHeight);
//	//	}
//	//}
//}
//
////-----------------------------------------------------------------------------
//// 描画
////-----------------------------------------------------------------------------
//void CMotion::Draw()
//{
//	// デバイスの取得
//	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//
//	D3DXMATRIX mtxRot, mtxTrans;	// 計算用マトリックス
//	D3DMATERIAL9 matDef;			// 現在のマテリアル保存用
//	D3DXMATERIAL *pMat;				// マテリアルデータへのポインタ
//
//	// ワールドマトリックスの初期化
//	D3DXMatrixIdentity(&m_mtxWorld);
//
//	// 向きを反映
//	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_rot.y, m_rot.x, m_rot.z);
//
//	// ワールドマトリックスの計算
//	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);
//
//	// 位置を反映
//	D3DXMatrixTranslation(&mtxTrans, m_pos.x, m_pos.y, m_pos.z);
//
//	// ワールドマトリックスの計算
//	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);
//
//	// ワールドマトリックスの設定
//	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);
//
//	// 現在のマテリアルを保持
//	pDevice->GetMaterial(&matDef);
//
//	// マテリアルデータへのポインタを取得
//	pMat = (D3DXMATERIAL*)m_aXFile.pBuffMat->GetBufferPointer();
//
//	for (int nCntMat = 0; nCntMat < (int)m_aXFile.nNumMat; nCntMat++)
//	{
//		// マテリアルの設定
//		pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//		// テクスチャの設定
//		pDevice->SetTexture(0, m_aXFile.pTexture[nCntMat]);
//
//		// モデルパーツの描画
//		m_aXFile.pMesh->DrawSubset(nCntMat);
//
//		// テクスチャの設定を元に戻す
//		pDevice->SetTexture(0, NULL);
//	}
//
//	// 保持していたマテリアルを戻す
//	pDevice->SetMaterial(&matDef);
//}
//
////-----------------------------------------------------------------------------
//// モーション再生
////-----------------------------------------------------------------------------
//void CMotion::Motion()
//{
//}
