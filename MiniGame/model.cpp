//===================================================================
//
//	モデル処理[model.cpp]
//	Author:SHUGO KURODA
//
//===================================================================

//======================================================
//	インクルード
//======================================================
#include "manager.h"
#include "renderer.h"
#include "model.h"

#include "input.h"
#include "camera.h"
//#include "shadow.h"
#include "bullet.h"
#include "meshfield.h"
#include "load.h"
#include "enemy.h"

//-----------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------
CModel::CModel() :m_pos(0.0f, 0.0f, 0.0f), m_posOld(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f),
					m_vtxMax(0.0f, 0.0f, 0.0f), m_vtxMin(0.0f, 0.0f, 0.0f), m_nIdxShadow(0)
{
}

//-----------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------
CModel::~CModel()
{
}

//-----------------------------------------------------------------------------
// 生成
// const D3DXVECTOR3& pos → 生成する位置
// const D3DXVECTOR3& rot → 生成する角度
// const char* name → 生成する名前(種類)
//-----------------------------------------------------------------------------
CModel* CModel::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
{
	//インスタンス生成
	CModel *pModel = new CModel;

	// 位置設定
	pModel->SetPosition(pos);

	// 角度設定
	pModel->SetRotation(rot);

	// Xファイルの割り当て
	pModel->BindXFile(CManager::GetManager()->GetXFile()->GetXFile(name));

	// 初期化
	pModel->Init();

	return pModel;
}

//-----------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------
HRESULT CModel::Init()
{
	int nNumVix;		//頂点数
	DWORD sizeFVF;		//頂点フォーマットのサイズ
	BYTE *pVtxBuff;		//頂点バッファへのポインタ

	//頂点数の取得
	nNumVix = m_aXFile.pMesh->GetNumVertices();

	//頂点フォーマット取得
	sizeFVF = D3DXGetFVFVertexSize(m_aXFile.pMesh->GetFVF());

	//頂点ロック
	m_aXFile.pMesh->LockVertexBuffer(D3DLOCK_READONLY, (void**)&pVtxBuff);

	//すべての頂点POSの取得
	for (int nCntVtx = 0; nCntVtx < nNumVix; nCntVtx++)
	{
		//頂点座標の代入
		D3DXVECTOR3 vtx = *(D3DXVECTOR3*)pVtxBuff;

		if (m_vtxMax.x < vtx.x)
		{//X
			m_vtxMax.x = vtx.x;
		}
		else if (m_vtxMin.x > vtx.x)
		{
			m_vtxMin.x = vtx.x;
		}

		if (m_vtxMax.y < vtx.y)
		{//Y
			m_vtxMax.y = vtx.y;
		}
		else if (m_vtxMin.y > vtx.y)
		{
			m_vtxMin.y = vtx.y;
		}

		if (m_vtxMax.z < vtx.z)
		{//Z
			m_vtxMax.z = vtx.z;
		}
		else if (m_vtxMin.z > vtx.z)
		{
			m_vtxMin.z = vtx.z;
		}

		//頂点フォーマットのサイズ分ポインタを進める
		pVtxBuff += sizeFVF;
	}

	//ラインを配置
	//SetLine(g_Model[nCnt].pos, g_Model[nCnt].vtxMax, g_Model[nCnt].vtxMin, D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f));

	//頂点アンロック
	m_aXFile.pMesh->UnlockVertexBuffer();
	return S_OK;
}

//-----------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------
void CModel::Uninit()
{
	Release();
}

//-----------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------
void CModel::Update()
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
void CModel::Draw()
{
	//デバイスの取得
	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();

	D3DXMATRIX mtxRot, mtxTrans;	//計算用マトリックス
	D3DMATERIAL9 matDef;			//現在のマテリアル保存用
	D3DXMATERIAL *pMat;				//マテリアルデータへのポインタ

	//ワールドマトリックスの初期化
	D3DXMatrixIdentity(&m_mtxWorld);

	//向きを反映
	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_rot.y, m_rot.x, m_rot.z);

	// ワールドマトリックスの計算
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

	//位置を反映
	D3DXMatrixTranslation(&mtxTrans, m_pos.x, m_pos.y, m_pos.z);

	// ワールドマトリックスの計算
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

	//ワールドマトリックスの設定
	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

	//現在のマテリアルを保持
	pDevice->GetMaterial(&matDef);

	//マテリアルデータへのポインタを取得
	pMat = (D3DXMATERIAL*)m_aXFile.pBuffMat->GetBufferPointer();

	for (int nCntMat = 0; nCntMat < (int)m_aXFile.nNumMat; nCntMat++)
	{
		//マテリアルの設定
		pDevice->SetMaterial(&pMat[nCntMat].MatD3D);

		//テクスチャの設定
		pDevice->SetTexture(0, m_aXFile.pTexture[nCntMat]);

		//モデルパーツの描画
		m_aXFile.pMesh->DrawSubset(nCntMat);

		//テクスチャの設定を元に戻す
		pDevice->SetTexture(0, NULL);
	}

	//保持していたマテリアルを戻す
	pDevice->SetMaterial(&matDef);
}

//-----------------------------------------------------------------------------
// 当たり判定
//-----------------------------------------------------------------------------
//bool CModel::Collision(D3DXVECTOR3 *pPos, D3DXVECTOR3 *pPosOld, float& Width, float& Height)
//{
//	//衝突フラグ
//	bool bIsPush = false;
//
//	if (pPosOld->x <= m_pos.x + m_vtxMin.x		//前回の位置(X軸)がX軸の最小値以下
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//現在の位置(X軸)がX軸の最小値以上
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z軸の最大値より内側
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//Z軸の最小値より内側
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y軸の最大値より内側
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y軸の最小値より内側
//	{//左側の当たり判定(-X)
//		pPos->x = m_pos.x + m_vtxMin.x;
//		bIsPush = true;
//	}
//	else if (pPosOld->x >= m_pos.x + m_vtxMax.x	//前回の位置(X軸)がX軸の最小値以上
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//現在の位置(X軸)がX軸の最小値以下
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z軸の最大値より内側
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//Z軸の最小値より内側
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y軸の最大値より内側
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y軸の最小値より内側
//	{//右側の当たり判定(+X)
//		pPos->x = m_pos.x + m_vtxMax.x;
//		bIsPush = true;
//	}
//
//	if (pPosOld->z <= m_pos.z + m_vtxMin.z		//前回の位置(Z軸)がZ軸の最小値以下
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//現在の位置(Z軸)がZ軸の最小値以上
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X軸の最大値より内側
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X軸の最小値より内側
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y軸の最大値より内側
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y軸の最小値より内側
//	{//手前側の当たり判定(-Z)
//		pPos->z = m_pos.z + m_vtxMin.z;
//		bIsPush = true;
//	}
//	else if (pPosOld->z >= m_pos.z + m_vtxMax.z	//前回の位置(Z軸)がZ軸の最小値以上
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//現在の位置(Z軸)がZ軸の最小値以下
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X軸の最大値より内側
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X軸の最小値より内側
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y軸の最大値より内側
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y軸の最小値より内側
//	{//奥側の当たり判定(+Z)
//		pPos->z = m_pos.z + m_vtxMax.z;
//		bIsPush = true;
//	}
//
//	if (pPosOld->y >= m_pos.y + m_vtxMax.y		//前回の位置(Y軸)がY軸の最小値以上
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//現在の位置(Y軸)がY軸の最小値以下
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X軸の最大値より内側
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X軸の最小値より内側
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z軸の最大値より内側
//		&& pPos->z >= m_pos.z + m_vtxMin.z)		//Z軸の最小値より内側
//	{//上側の当たり判定(-Y)
//		//pPos->y = g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y;
//	}
//	else if (pPosOld->y <= m_pos.y + m_vtxMin.y	//前回の位置(Y軸)がY軸の最小値以下
//		&& pPos->y >= m_pos.y + m_vtxMin.y		//現在の位置(Y軸)がY軸の最小値以上
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X軸の最大値より内側
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X軸の最小値より内側
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z軸の最大値より内側
//		&& pPos->z >= m_pos.z + m_vtxMin.z)		//Z軸の最小値より内側
//	{//下側の当たり判定(+Y)
//		pPos->y = m_pos.y + m_vtxMin.y;
//		bIsPush = true;
//	}
//
//	return bIsPush;
//}
