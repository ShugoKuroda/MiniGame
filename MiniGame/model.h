////===================================================================
////
////		���f�������̃w�b�_�[[model.h]
////		Author:���c ����
////
////===================================================================
//#ifndef _MODEL_H_			//���̃}�N����`������Ȃ�������
//#define _MODEL_H_			//2�d�C���N���[�h�h�~�̃}�N����`
//
////======================================================
////	�}�N����`
////======================================================
//#define MAX_MODEL		(40)		//���f���̍ő吔
//
////======================================================
////	���f���̍\���̒�`
////======================================================
//typedef struct
//{
//	D3DXVECTOR3 pos;				//�ʒu
//	D3DXVECTOR3 posOld;				//�O��̈ʒu
//	D3DXVECTOR3 rot;				//��]
//	D3DXVECTOR3 move;				//�ړ���
//	D3DXVECTOR3 vtxMax,vtxMin;		//���f���̍ő�l,�ŏ��l
//	D3DXMATRIX mtxWorld;			//���[���h�}�g���b�N�X
//	int nIdxShadow;					//�e�̔ԍ�
//	int nType;						//���
//	bool bUse;						//�g�p���Ă��邩�ǂ���
//}Model;
//
////======================================================
////	�v���g�^�C�v�錾
////======================================================
//void InitModel(void);
//void UninitModel(void);
//void UpdateModel(void);
//void DrawModel(void);
//HRESULT SetModel(HWND hWnd, Model Model);
//HRESULT LoadModelType(HWND hWnd, char *sXFilePath);
//void LoadModelTexture(int nCnt);
//bool CollisionModel(D3DXVECTOR3 *pPos, D3DXVECTOR3 *pPosOld, D3DXVECTOR3 *pMove, float Width, float Height, int nType);
//Model *GetModel(void);
//
//#endif