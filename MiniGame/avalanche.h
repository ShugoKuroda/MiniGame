//===================================================================
//
//	����������̏���[avalanche.h]
//	Author:Koshimoto Manato
//
//===================================================================
#ifndef _AVALANCHE_H_
#define _AVALANCHE_H_

#include "object2D.h"

//*******************************************************************
//	����N���X�̒�`
//*******************************************************************
class CAvalanche : public CObject2D
{
private:
	//�萔��`
	static const int amountPush;	//����Ńv���C���[�������߂�����
public:
	CAvalanche();					//�R���X�g���N�^
	~CAvalanche() override;			//�f�X�g���N�^

	//�����o�֐�
	static CAvalanche *Create();	//��������
	HRESULT Init() override;		//������
	void Uninit() override;			//�I��
	void Update() override;			//�X�V
	void Draw() override;			//�`��

private:
	//�����o�ϐ�
	static D3DXVECTOR3 m_pushback;		//����������Ƀv���C���[�������߂���
	static int m_duration;				//����̌p������
};

#endif		// _AVALANCHE_H_