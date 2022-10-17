//===================================================================
//
//	��Q������[obstacle.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _OBSTACLE_H_
#define _OBSTACLE_H_

#include "model.h"

//*******************************************************************
//	�O���錾
//*******************************************************************
class CPlayer;

//*******************************************************************
//	��Q���N���X�̒�`
//*******************************************************************
class CObstacle : public CModel
{
public:
	//�����o�֐�
	CObstacle();
	~CObstacle() override;

	static CObstacle *Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);		//�C���X�^���X��������

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;

	bool Collision(D3DXVECTOR2 posStart);

private:
	D3DXVECTOR3 m_PosOld;	//�O��̈ʒu
};

#endif	// _OBSTACLE_H_
