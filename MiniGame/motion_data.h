//===================================================================
//
// X�t�@�C����� [x_file_data.h]
// Author : SHUGO KURODA
//
//===================================================================
#ifndef _MOTION_DATA_H_
#define _MOTION_DATA_H_

#include "x_file_data.h"
#include <vector>

//===================================================================
// �O���錾
//===================================================================
class CParts;

//===================================================================
// �}�N����`
//===================================================================
#define MAX_PARTS			(20)		//�v���C���[�̃��f���p�[�c�̍ő吔
#define MAX_MOTION			(20)		//���[�V�����̍ő吔
#define MAX_KEY				(20)		//���[�V�����L�[�̍ő吔
#define MAX_FRAME			(120)		//���[�V�����̍ő�t���[����

//*******************************************************************
// �\���̐錾
//*******************************************************************
typedef struct
{
	// X�t�@�C�����
	SModelInfo xFile;
	// �ʒu
	D3DXVECTOR3 pos;
	// ��{�̊p�x
	D3DXVECTOR3 baseRot;
	// ��]
	D3DXVECTOR3 rot;
	// ���[���h�}�g���b�N�X
	D3DXMATRIX mtxWorld;
	// ���̃p�[�c�̔ԍ�
	int nIndex;
	// �e�p�[�c�̔ԍ�
	int nParent;
}Parts;

// �L�[���̍\����
typedef struct
{
	D3DXVECTOR3 pos;	// ���[�V�����Đ����̈ʒu
	D3DXVECTOR3 rot;	// ���[�V�����Đ����̌���
}Key;

// ���[�V�����L�[���̍\����
typedef struct
{
	int nFrame;				// �K�v�t���[����
	std::vector<Key> aKey;	// �L�[���
}KeySet;

// ���[�V�������̍\����
typedef struct
{
	int nLoop;		// ���[�v���邩�ǂ���
	int nNumKey;	// ���L�[��
	std::vector<KeySet> aKeyInfo;	// �L�[�ݒ���
}MotionSet;

//�S�Ẵ��f�����[�V�������̍\����
typedef struct
{
	int nNumParts;		// �p�[�c�̑���
	float fMove;		// �ړ���
	float fJump;		// �W�����v��
	std::vector<Parts> aParts;			//�p�[�c�̏��
	std::vector<MotionSet> aMotion;		//�e���[�V�����̏��
}ModelMotion;

#endif		// _MOTION_DATA_H_
