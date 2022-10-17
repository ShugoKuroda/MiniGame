//===================================================================
//
//	障害物処理[obstacle.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

#include "model.h"

//*******************************************************************
//	前方宣言
//*******************************************************************
class CPlayer;

//*******************************************************************
//	障害物クラスの定義
//*******************************************************************
class CObstacle : public CModel
{
public:
	//メンバ関数
	CObstacle();
	~CObstacle() override;

	static CObstacle *Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);		//インスタンス生成処理

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;

	static void CollisionAll(D3DXVECTOR3* pPosPlayer, D3DXVECTOR3* pPosPlayerOld, D3DXVECTOR3* pSizePlayer);
	bool Collision(D3DXVECTOR3* pPosPlayer, D3DXVECTOR3* pPosPlayerOld, D3DXVECTOR3* pSizePlayer);

private:
	D3DXVECTOR3 m_PosOld;	//前回の位置
};

#endif	// _OBSTACLE_H_
