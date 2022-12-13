//===================================================================
//
//	モデル処理[motion.cpp]
//	Author:SHUGO KURODA
//
//===================================================================

//======================================================
//	インクルード
//======================================================
#include "manager.h"
#include "renderer.h"
#include "motion.h"

#include "input.h"
#include "camera.h"
//#include "shadow.h"
#include "bullet.h"
#include "load.h"
#include "enemy.h"

// 追加
#include "x_file_motion.h"

//-----------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------
CMotion::CMotion() :
	m_pos(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f), m_rotDest(0.0f, 0.0f, 0.0f),
	m_vtxMax(0.0f, 0.0f, 0.0f), m_vtxMin(0.0f, 0.0f, 0.0f), m_col(0.0f, 0.0f, 0.0f, 0.0f)
{
	//初期化
	memset(&m_animIdx, 0, sizeof(AnimIdx));

	//モーション情報の初期化
	//memset(&m_motion, 0, sizeof(ModelMotion));
}

//-----------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------
CMotion::~CMotion()
{
}

//-----------------------------------------------------------------------------
// 生成
// const D3DXVECTOR3& pos → 生成する位置
// const D3DXVECTOR3& rot → 生成する角度
// const char* name → 生成する名前(種類)
//-----------------------------------------------------------------------------
CMotion* CMotion::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
{
	// インスタンス生成
	CMotion *pMotion = new CMotion;

	// 位置設定
	pMotion->SetPosition(pos);

	// 角度設定
	pMotion->SetRotation(rot);

	// モーション情報の割り当て
	pMotion->BindMotion(CManager::GetManager()->GetMotion()->GetMotion(name));

	// 初期化
	pMotion->Init();

	return pMotion;
}

//-----------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------
HRESULT CMotion::Init()
{
	// モーション情報の初期化
	Change(0, 0);

	// 透明度の設定
	m_col.a = 1.0f;

	// キー番号の初期化
	m_animIdx.nKeySetIdx = 1;

	return S_OK;
}

//-----------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------
void CMotion::Uninit()
{
	Release();
}

//-----------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------
void CMotion::Update()
{
	//for (int nCntVtx = 0; nCntVtx < MAX_MODEL_TYPE; nCntVtx++)
	//{
	//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
	//	{
	//		//前回の位置を保存
	//		g_aModel[nCnt].posOld = g_aModel[nCnt].pos;

	//		//当たり判定
	//		//CollisionPlayer(&g_aModel[nCnt].pos, &g_aModel[nCnt].posOld, &g_aModel[nCnt].Airmove, g_aModel[nCnt].fWidth, g_aModel[nCnt].fHeight);
	//	}
	//}
}

//-----------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------
void CMotion::Draw()
{
	// デバイスの取得
	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();

	D3DXMATRIX mtxWorldParent;		// 親のワールドマトリックス
	D3DXMATRIX mtxRot, mtxTrans;	// 計算用マトリックス

	// ワールドマトリックスの初期化（親）
	D3DXMatrixIdentity(&mtxWorldParent);

	// プレイヤーの向きを反映
	D3DXMatrixRotationYawPitchRoll(&mtxRot,
		m_rot.y, m_rot.x, m_rot.z);

	D3DXMatrixMultiply(&mtxWorldParent, &mtxWorldParent, &mtxRot);

	// プレイヤーの位置を反映
	D3DXMatrixTranslation(&mtxTrans,
		m_pos.x, m_pos.y, m_pos.z);

	D3DXMatrixMultiply(&mtxWorldParent, &mtxWorldParent, &mtxTrans);

	//switch (g_Player.Weapon)
	//{
	//case PLAYERWEAPON_GUN:			//プレイヤーが銃を所持している場合
	//								//剣の描画をやめ、銃を描画する
	//	g_Player.aParts[15].bUse = false;
	//	g_Player.aParts[16].bUse = true;
	//	break;
	//case PLAYERWEAPON_SWORD:		//プレイヤーが剣を所持している場合
	//								//銃の描画をやめ、剣を描画する
	//	g_Player.aParts[15].bUse = true;
	//	g_Player.aParts[16].bUse = false;
	//	break;
	//}

	for (int nCntParts = 0; nCntParts < m_motion.nNumParts; nCntParts++)
	{
		D3DMATERIAL9 matDef;			// 現在のマテリアル保存用
		D3DXMATERIAL *pMat;				// マテリアルデータへのポインタ

		// ワールドマトリックスの初期化（子）
		D3DXMatrixIdentity(&m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld);

		// 向きを反映
		D3DXMatrixRotationYawPitchRoll(&mtxRot,
			m_motion.aParts[nCntParts].rot.y, m_motion.aParts[nCntParts].rot.x, m_motion.aParts[nCntParts].rot.z);

		D3DXMatrixMultiply(&m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &mtxRot);

		// 位置を反映
		D3DXMatrixTranslation(&mtxTrans,
			m_motion.aParts[nCntParts].pos.x, m_motion.aParts[nCntParts].pos.y, m_motion.aParts[nCntParts].pos.z);

		D3DXMatrixMultiply(&m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &mtxTrans);

		// 自分の親モデルのマトリックスとの掛け算
		if (m_motion.aParts[nCntParts].nParent < 0)
		{
			// モデルのマトリックス ＊ 親のワールドマトリックス
			D3DXMatrixMultiply(&m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &mtxWorldParent);
		}
		else
		{
			// モデルのマトリックス ＊ 親のワールドマトリックス
			D3DXMatrixMultiply(&m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld, &m_motion.aParts[m_motion.aParts[nCntParts].nParent].mtxWorld);
		}

		if (m_motion.aParts[m_motion.aParts[nCntParts].nIndex].xFile.pMesh == NULL)
		{// パーツのモデルがNULLだったら
			continue;		// for文の最初に戻る
		}

		// ワールドマトリックスの設定
		pDevice->SetTransform(D3DTS_WORLD, &m_motion.aParts[m_motion.aParts[nCntParts].nIndex].mtxWorld);

		// 現在のマテリアルを保持
		pDevice->GetMaterial(&matDef);

		// マテリアルデータへのポインタを取得
		pMat = (D3DXMATERIAL*)m_motion.aParts[m_motion.aParts[nCntParts].nIndex].xFile.pBuffMat->GetBufferPointer();

		for (int nCntMat = 0; nCntMat < (int)m_motion.aParts[m_motion.aParts[nCntParts].nIndex].xFile.nNumMat; nCntMat++)
		{
			if (pMat[nCntMat].MatD3D.Diffuse.r <= 0.0f&&
				pMat[nCntMat].MatD3D.Diffuse.g <= 0.0f&&
				pMat[nCntMat].MatD3D.Diffuse.b <= 0.0f)
			{
				pMat[nCntMat].MatD3D.Diffuse = (D3DCOLORVALUE)m_col;
			}

			// マテリアルの設定
			pDevice->SetMaterial(&pMat[nCntMat].MatD3D);

			// テクスチャの設定
			pDevice->SetTexture(0, m_motion.aParts[m_motion.aParts[nCntParts].nIndex].xFile.pTexture[nCntMat]);

			// モデルパーツの描画
			m_motion.aParts[m_motion.aParts[nCntParts].nIndex].xFile.pMesh->DrawSubset(nCntMat);

			// テクスチャの設定を元に戻す
			pDevice->SetTexture(0, NULL);
		}

		// 保持していたマテリアルを戻す
		pDevice->SetMaterial(&matDef);
	}
}

//-----------------------------------------------------------------------------
// 角度の正規化
//-----------------------------------------------------------------------------
void CMotion::NormalizeRot()
{
	//角度の更新
	if (m_rotDest.y - m_rot.y > D3DX_PI)
	{
		m_rotDest.y -= D3DX_PI * 2;
	}
	if (m_rotDest.y - m_rot.y < -D3DX_PI)
	{
		m_rotDest.y += D3DX_PI * 2;
	}

	m_rot.y += (m_rotDest.y - m_rot.y) * 0.1f;

	//角度の正規化
	if (m_rot.y > D3DX_PI)
	{
		m_rot.y -= D3DX_PI * 2;
	}
	if (m_rot.y < -D3DX_PI)
	{
		m_rot.y += D3DX_PI * 2;
	}
}

//-----------------------------------------------------------------------------
// モーション再生
//-----------------------------------------------------------------------------
bool CMotion::Motion()
{
	int nMotion = m_animIdx.nMotionIdx;
	int nKey = m_animIdx.nKeySetIdx;
	int nFrame = m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame;
	int nNumKey = m_motion.aMotion[nMotion].nNumKey;

	if (nFrame <= 0)
	{//テキストで設定されたフレーム数が0以下だった場合
		nFrame = 1;
	}

	//モーション再生処理
	for (int nCntParts = 0; nCntParts < m_motion.nNumParts; nCntParts++)
	{
		//位置更新（ローカル座標）
		m_motion.aParts[nCntParts].pos += (m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[nCntParts].pos - m_motion.aMotion[nMotion].aKeyInfo[((nKey - 1) + nNumKey) % nNumKey].aKey[nCntParts].pos) / (float)m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame;

		//角度更新
		m_motion.aParts[nCntParts].rot += (m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[nCntParts].rot - m_motion.aMotion[nMotion].aKeyInfo[((nKey - 1) + nNumKey) % nNumKey].aKey[nCntParts].rot) / (float)m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame;
	}

	//フレームの加算
	m_animIdx.nFrame++;

	if (m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame <= m_animIdx.nFrame)
	{//フレーム数が設定の値を超えたら

		// モーション変更
		//Change(nMotion, nKey);

		//再生中のキー数の加算
		m_animIdx.nKeySetIdx++;

		//フレームの初期化
		m_animIdx.nFrame = 0;

		if (m_motion.aMotion[nMotion].nNumKey <= m_animIdx.nKeySetIdx)
		{//再生中のキー数が設定の値を超えたら
			if (m_motion.aMotion[nMotion].nLoop == 1)
			{
				m_animIdx.nKeySetIdx = 0;
			}
			else
			{//現在再生中のモーションからニュートラルモーションに変更
				m_animIdx.nKeySetIdx = 0;
				m_animIdx.nMotionIdx = 0;

				return true;
			}
		}
	}

	return false;
}

//-----------------------------------------------------------------------------
// モーション設定
//-----------------------------------------------------------------------------
void CMotion::Set(const int& nNum)
{
	// 現在のモーションが再生するモーション以外
	if (m_animIdx.nMotionIdx != nNum)
	{// モーションの設定

		//モーション再生処理
		for (int nCntParts = 0; nCntParts < m_motion.nNumParts; nCntParts++)
		{
			//位置更新（ローカル座標）
			m_motion.aParts[nCntParts].pos += (m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[nCntParts].pos - m_motion.aMotion[nMotion].aKeyInfo[((nKey - 1) + nNumKey) % nNumKey].aKey[nCntParts].pos) / (float)m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame;

			//角度更新
			m_motion.aParts[nCntParts].rot += (m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[nCntParts].rot - m_motion.aMotion[nMotion].aKeyInfo[((nKey - 1) + nNumKey) % nNumKey].aKey[nCntParts].rot) / (float)m_motion.aMotion[nMotion].aKeyInfo[nKey].nFrame;
		}

		{
			m_animIdx.nMotionIdx = nNum;
			m_animIdx.nKeySetIdx = 1;
			m_animIdx.nFrame = 0;

			// モーションの初期化
			Change(nNum, 0);
		}
	}
}

//-----------------------------------------------------------------------------
// モーション変更(初期化)
//-----------------------------------------------------------------------------
void CMotion::Change(const int& nMotion, const int& nKey)
{
	m_motion.aParts[0].pos = m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[0].pos + m_motion.posParent;

	for (int nCntParts = 0; nCntParts < m_motion.nNumParts; nCntParts++)
	{
		m_motion.aParts[nCntParts].rot = m_motion.aMotion[nMotion].aKeyInfo[nKey].aKey[nCntParts].rot;
	}
}
