//===================================================================
//
//		�J���������̃w�b�_�[[camera.h]
//		Author:���c ����
//
//===================================================================
#ifndef _CAMERA_H_			//���̃}�N����`������Ȃ�������
#define _CAMERA_H_			//2�d�C���N���[�h�h�~�̃}�N����`

#include "object.h"

//======================================================
//	�}�N����`
//======================================================
#define CAMERA_POS_MOVE		(0.05f)		//���_�̈ړ���
#define CAMERA_ROT_MOVE		(0.03f)		//��]�̈ړ���

//======================================================
//	�J�����̍\����
//======================================================
class CCamera : public CObject
{
public:
	CCamera();
	~CCamera() override;

	static CCamera *Create(const D3DXVECTOR3& posV, const D3DXVECTOR3& posR, const D3DXVECTOR3& rot);	//�C���X�^���X��������

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;

private:
	D3DXVECTOR3 m_move;			//�ړ���
	D3DXVECTOR3 m_posV;			//���_
	D3DXVECTOR3 m_posR;			//�����_
	D3DXVECTOR3 m_vecU;			//������x�N�g��
	D3DXVECTOR3 m_rot;			//����
	D3DXVECTOR3 m_posVDest;		//�ړI�̎��_
	D3DXVECTOR3 m_posRDest;		//�ړI�̒����_
	float m_fDistance;			//���_���璍���_�܂ł̋���
	D3DXMATRIX m_mtxProjection;	//�v���W�F�N�V�����}�g���b�N�X
	D3DXMATRIX m_mtxView;		//�r���[�}�g���b�N�X
};

#endif
