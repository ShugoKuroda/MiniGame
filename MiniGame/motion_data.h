//===================================================================
//
// X�t�@�C����� [x_file_data.h]
// Author : SHUGO KURODA
//
//===================================================================
#ifndef _MOTION_DATA_H_
#define _MOTION_DATA_H_

#include <d3dx9.h>		// �`�揈���ɕK�v

//===================================================================
//	�}�N����`
//===================================================================
#define MAX_PARTS			(20)		//�v���C���[�̃��f���p�[�c�̍ő吔
#define MAX_MOTION			(20)		//���[�V�����̍ő吔
#define MAX_KEY				(20)		//���[�V�����L�[�̍ő吔
#define MAX_FRAME			(120)		//���[�V�����̍ő�t���[����

//*******************************************************************
// �\���̐錾
//*******************************************************************
//�v���C���[�p�[�c�\����
typedef struct
{
	D3DXVECTOR3 pos;			//�ʒu
	D3DXVECTOR3 rot;			//��]
	D3DXVECTOR3 baseRot;		//��{�̊p�x
	D3DXMATRIX mtxWorld;		//���[���h�}�g���b�N�X
	int nIndex;					//���̃p�[�c�̔ԍ�
	int nParent;				//�e�p�[�c�̔ԍ�
	bool bUse;					//�g�p���Ă��邩�ǂ���
}PlayerParts;

//���[�V�����L�[���̍\����
typedef struct
{
	D3DXVECTOR3 aPos[MAX_KEY];		//���[�V�����Đ����̈ʒu
	D3DXVECTOR3 aRot[MAX_KEY];		//���[�V�����Đ����̌���
}KeySet;

//���[�V�������̍\����
typedef struct
{
	int nLoop;
	int nNumKey;
	int nFrame;
	KeySet aKey[MAX_KEY];
	bool bUse;
}MotionSet;

//�S�Ẵ��f�����[�V�������̍\����
typedef struct
{
	PlayerParts aParts[MAX_PARTS];		//�p�[�c�̏��
	MotionSet aMotion[MAX_MOTION];		//�e���[�V�����̏��
}ModelMotion;

#endif		// _MOTION_DATA_H_
