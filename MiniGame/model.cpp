////===================================================================
////
////	���f������[model.cpp]
////	Author:���c ����
////
////===================================================================
//
////======================================================
////	�C���N���[�h
////======================================================
//#include "main.h"
//#include "model.h"
//#include "input.h"
//#include "camera.h"
//#include "shadow.h"
//#include "bullet.h"
//#include "meshfield.h"
//#include "load.h"
//#include "enemy.h"
//
////======================================================
////	�}�N����`
////======================================================
//#define MODEL_MOVE		(1.4f)		//���f���̈ړ���
//#define MAX_MODEL_TYPE	(10)		//���f���̍ő��ސ�
//
////======================================================
////	�\���̒�`
////======================================================
////���f���̍\����
//typedef struct
//{
//	LPD3DXMESH pMeshModel = NULL;		//���b�V�����ւ̃|�C���^
//	LPD3DXBUFFER pBuffMatModel = NULL;	//�}�e���A�����ւ̃|�C���^
//	DWORD nNumMatModel = 0;				//�}�e���A�����̐�
//	bool bUse;							//�g�p���Ă��邩�ǂ���
//	LPDIRECT3DTEXTURE9 g_pTextureMeshField[5] = { NULL };			//�e�N�X�`���ւ̃|�C���^
//}ModelType;
//
////======================================================
////	�O���[�o���錾
////======================================================
//Model g_aModel[MAX_MODEL];					//���f���̏��
//ModelType g_aModelXFile[MAX_MODEL_TYPE];	//���f���̎�ޏ��
//
////======================================================
////	���f���̏���������
////======================================================
//void InitModel(void)
//{
//	//�\���̗̂v�f��������
//	ZeroMemory(&g_aModel, sizeof(g_aModel));
//	ZeroMemory(&g_aModelXFile, sizeof(g_aModelXFile));
//}
//
////======================================================
////	���f���̏I������
////======================================================
//void UninitModel(void)
//{
//	for (int nCnt = 0; nCnt < MAX_MODEL_TYPE; nCnt++)
//	{
//		//���b�V���̔j��
//		if (g_aModelXFile[nCnt].pMeshModel != NULL)
//		{
//			g_aModelXFile[nCnt].pMeshModel->Release();
//			g_aModelXFile[nCnt].pMeshModel = NULL;
//		}
//		//�}�e���A���̔j��
//		if (g_aModelXFile[nCnt].pBuffMatModel != NULL)
//		{
//			g_aModelXFile[nCnt].pBuffMatModel->Release();
//			g_aModelXFile[nCnt].pBuffMatModel = NULL;
//		}
//	}
//}
//
////======================================================
////	���f���̍X�V����
////======================================================
//void UpdateModel(void)
//{
//	for (int nCntVtx = 0; nCntVtx < MAX_MODEL_TYPE; nCntVtx++)
//	{
//		for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//		{
//			//�O��̈ʒu��ۑ�
//			g_aModel[nCnt].posOld = g_aModel[nCnt].pos;
//
//			//�����蔻��
//			//CollisionPlayer(&g_aModel[nCnt].pos, &g_aModel[nCnt].posOld, &g_aModel[nCnt].Airmove, g_aModel[nCnt].fWidth, g_aModel[nCnt].fHeight);
//		}
//	}
//}
//
////======================================================
////	���f���̕`�揈��
////======================================================
//void DrawModel(void)
//{
//	//�f�o�C�X�̎擾
//	LPDIRECT3DDEVICE9 pDevice = GetDevice();
//
//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//	{
//		if (g_aModel[nCnt].bUse)
//		{
//			D3DXMATRIX mtxRot, mtxTrans;	//�v�Z�p�}�g���b�N�X
//			D3DMATERIAL9 matDef;			//���݂̃}�e���A���ۑ��p
//			D3DXMATERIAL *pMat;				//�}�e���A���f�[�^�ւ̃|�C���^
//
//			//���[���h�}�g���b�N�X�̏�����
//			D3DXMatrixIdentity(&g_aModel[nCnt].mtxWorld);
//
//			//�����𔽉f
//			D3DXMatrixRotationYawPitchRoll(&mtxRot,
//				g_aModel[nCnt].rot.y, g_aModel[nCnt].rot.x, g_aModel[nCnt].rot.z);
//
//			D3DXMatrixMultiply(&g_aModel[nCnt].mtxWorld, &g_aModel[nCnt].mtxWorld, &mtxRot);
//
//			//�ʒu�𔽉f
//			D3DXMatrixTranslation(&mtxTrans,
//				g_aModel[nCnt].pos.x, g_aModel[nCnt].pos.y, g_aModel[nCnt].pos.z);
//
//			D3DXMatrixMultiply(&g_aModel[nCnt].mtxWorld, &g_aModel[nCnt].mtxWorld, &mtxTrans);
//
//			//���[���h�}�g���b�N�X�̐ݒ�
//			pDevice->SetTransform(D3DTS_WORLD, &g_aModel[nCnt].mtxWorld);
//
//			//���݂̃}�e���A����ێ�
//			pDevice->GetMaterial(&matDef);
//
//			//�}�e���A���f�[�^�ւ̃|�C���^���擾
//			pMat = (D3DXMATERIAL*)g_aModelXFile[g_aModel[nCnt].nType].pBuffMatModel->GetBufferPointer();
//
//			for (int nCntMat = 0; nCntMat < (int)g_aModelXFile[g_aModel[nCnt].nType].nNumMatModel; nCntMat++)
//			{
//				//�}�e���A���̐ݒ�
//				pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//				//�e�N�X�`���̐ݒ�
//				pDevice->SetTexture(0, g_aModelXFile[g_aModel[nCnt].nType].g_pTextureMeshField[nCntMat]);
//
//				//���f���p�[�c�̕`��
//				g_aModelXFile[g_aModel[nCnt].nType].pMeshModel->DrawSubset(nCntMat);
//
//				//�e�N�X�`���̐ݒ�����ɖ߂�
//				pDevice->SetTexture(0, NULL);
//			}
//			//�ێ����Ă����}�e���A����߂�
//			pDevice->SetMaterial(&matDef);
//		}
//	}
//}
//
////-----------------------------------------------------------------------------
////�Z�b�g���f������
////-----------------------------------------------------------------------------
//HRESULT SetModel(HWND hWnd, Model Model)
//{
//	int nNumVix;		//���_��
//	DWORD sizeFVF;		//���_�t�H�[�}�b�g�̃T�C�Y
//	BYTE *pVtxBuff;		//���_�o�b�t�@�ւ̃|�C���^
//
//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//	{
//		if (!g_aModel[nCnt].bUse)
//		{//���f�����g�p����Ă��Ȃ��ꍇ
//			g_aModel[nCnt].pos = Model.pos;
//			g_aModel[nCnt].rot = Model.rot;
//			g_aModel[nCnt].nType = Model.nType;
//			g_aModel[nCnt].bUse = true;
//
//			//���_���̎擾
//			nNumVix = g_aModelXFile[g_aModel[nCnt].nType].pMeshModel->GetNumVertices();
//
//			//���_�t�H�[�}�b�g�擾
//			sizeFVF = D3DXGetFVFVertexSize(g_aModelXFile[g_aModel[nCnt].nType].pMeshModel->GetFVF());
//
//			//���_���b�N
//			g_aModelXFile[g_aModel[nCnt].nType].pMeshModel->LockVertexBuffer(D3DLOCK_READONLY, (void**)&pVtxBuff);
//
//			//���ׂĂ̒��_POS�̎擾
//			for (int nCntVtx = 0; nCntVtx < nNumVix; nCntVtx++)
//			{
//				//���_���W�̑��
//				D3DXVECTOR3 vtx = *(D3DXVECTOR3*)pVtxBuff;
//
//				if (g_aModel[nCnt].vtxMax.x < vtx.x)
//				{//X
//					g_aModel[nCnt].vtxMax.x = vtx.x;
//				}
//				else if (g_aModel[nCnt].vtxMin.x > vtx.x)
//				{
//					g_aModel[nCnt].vtxMin.x = vtx.x;
//				}
//
//				if (g_aModel[nCnt].vtxMax.y < vtx.y)
//				{//Y
//					g_aModel[nCnt].vtxMax.y = vtx.y;
//				}
//				else if (g_aModel[nCnt].vtxMin.y > vtx.y)
//				{
//					g_aModel[nCnt].vtxMin.y = vtx.y;
//				}
//
//				if (g_aModel[nCnt].vtxMax.z < vtx.z)
//				{//Z
//					g_aModel[nCnt].vtxMax.z = vtx.z;
//				}
//				else if (g_aModel[nCnt].vtxMin.z > vtx.z)
//				{
//					g_aModel[nCnt].vtxMin.z = vtx.z;
//				}
//
//				//���_�t�H�[�}�b�g�̃T�C�Y���|�C���^��i�߂�
//				pVtxBuff += sizeFVF;
//			}
//
//			//���C����z�u
//			//SetLine(g_Model[nCnt].pos, g_Model[nCnt].vtxMax, g_Model[nCnt].vtxMin, D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f));
//
//			//���_�A�����b�N
//			g_aModelXFile[g_aModel[nCnt].nType].pMeshModel->UnlockVertexBuffer();
//			return S_OK;
//		}
//	}
//	MessageBox(hWnd, "���f���̕\�����E�𒴂��܂���", "�x���I", MB_ICONWARNING);
//	return E_FAIL;
//}
//
////-----------------------------------------------------------------------------
////���f���^�C�v�ǂݍ��ݏ���
////-----------------------------------------------------------------------------
//HRESULT LoadModelType(HWND hWnd, char *sXFilePath)
//{
//	LPDIRECT3DDEVICE9 pDevice = GetDevice();		//�f�o�C�X�̃|�C���^
//
//	for (int nCnt = 0; nCnt < MAX_MODEL_TYPE; nCnt++)
//	{
//		if (!g_aModelXFile[nCnt].bUse)
//		{
//			//X�t�@�C���̓ǂݍ���
//			D3DXLoadMeshFromX(sXFilePath,
//				D3DXMESH_SYSTEMMEM,
//				pDevice,
//				NULL,
//				&g_aModelXFile[nCnt].pBuffMatModel,
//				NULL,
//				&g_aModelXFile[nCnt].nNumMatModel,
//				&g_aModelXFile[nCnt].pMeshModel);
//
//			//�e�N�X�`���̓ǂݍ��ݏ���
//			LoadModelTexture(nCnt);
//
//			g_aModelXFile[nCnt].bUse = true;
//
//			return S_OK;
//		}
//	}
//
//	MessageBox(hWnd, "�ǂݍ��݉\���f�����𒴂��Ă��܂�", "�x���I", MB_ICONWARNING);
//	return E_FAIL;
//}
//
////-----------------------------------------------------------------------------
////���f���^�C�v�ǂݍ��ݏ���
////-----------------------------------------------------------------------------
//void LoadModelTexture(int nCnt)
//{
//	LPDIRECT3DDEVICE9 pDevice = GetDevice();		//�f�o�C�X�̃|�C���^
//
//	D3DMATERIAL9 matDef;			//���݂̃}�e���A���ۑ��p
//	D3DXMATERIAL *pMat;				//�}�e���A���f�[�^�ւ̃|�C���^
//
//	//�}�e���A���f�[�^�ւ̃|�C���^���擾
//	pMat = (D3DXMATERIAL*)g_aModelXFile[nCnt].pBuffMatModel->GetBufferPointer();
//
//	for (int nCntMat = 0; nCntMat < (int)g_aModelXFile[nCnt].nNumMatModel; nCntMat++)
//	{
//		//�}�e���A���̐ݒ�
//		pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//		if (pMat[nCntMat].pTextureFilename != NULL && !strcmp(pMat[nCntMat].pTextureFilename, "") == 0)
//		{//�e�N�X�`�����������ꍇ
//			//�e�N�X�`���̓ǂݍ���
//			D3DXCreateTextureFromFile(pDevice, pMat[nCntMat].pTextureFilename, &g_aModelXFile[nCnt].g_pTextureMeshField[nCntMat]);
//		}
//	}
//}
//
////-----------------------------------------------------------------------------
////���f���Ƃ̓����蔻�菈��
////-----------------------------------------------------------------------------
//bool CollisionModel(D3DXVECTOR3 *pPos, D3DXVECTOR3 *pPosOld, D3DXVECTOR3 *pMove, float Width, float Height,int nType)
//{
//	bool bIsLanding = false;		//�v���C���[�����n���Ă��邩
//
//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//	{
//		if (g_aModel[nCnt].bUse)
//		{
//			if (pPosOld->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//�O��̈ʒu(X��)��X���̍ŏ��l�ȉ�
//				&& pPos->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//���݂̈ʒu(X��)��X���̍ŏ��l�ȏ�
//				&& pPos->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z		//Z���̍ő�l������
//				&& pPos->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z		//Z���̍ŏ��l������
//				&& pPos->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//Y���̍ő�l������
//				&& pPos->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y)		//Y���̍ŏ��l������
//			{//�����̓����蔻��(-X)
//				pPos->x = g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x;
//				if (nType == 1)
//				{//�G��������
//					pMove->y = 6.0f;		//�W�����v������
//					bIsLanding = false;		//�W�����v��Ԃɂ���
//					pPos->y += pMove->y;	//�ړ��ʂ̍X�V(Y)
//				}
//			}
//			else if (pPosOld->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x	//�O��̈ʒu(X��)��X���̍ŏ��l�ȏ�
//				&& pPos->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x		//���݂̈ʒu(X��)��X���̍ŏ��l�ȉ�
//				&& pPos->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z		//Z���̍ő�l������
//				&& pPos->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z		//Z���̍ŏ��l������
//				&& pPos->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//Y���̍ő�l������
//				&& pPos->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y)		//Y���̍ŏ��l������
//			{//�E���̓����蔻��(+X)
//				pPos->x = g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x;
//				if (nType == 1)
//				{//�G��������
//					pMove->y = 6.0f;		//�W�����v������
//					bIsLanding = false;		//�W�����v��Ԃɂ���
//					pPos->y += pMove->y;	//�ړ��ʂ̍X�V(Y)
//				}
//			}
//
//			if (pPosOld->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z		//�O��̈ʒu(Z��)��Z���̍ŏ��l�ȉ�
//				&& pPos->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z		//���݂̈ʒu(Z��)��Z���̍ŏ��l�ȏ�
//				&& pPos->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x		//X���̍ő�l������
//				&& pPos->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//X���̍ŏ��l������
//				&& pPos->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//Y���̍ő�l������
//				&& pPos->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y)		//Y���̍ŏ��l������
//			{//��O���̓����蔻��(-Z)
//				pPos->z = g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z;
//				if (nType == 1)
//				{//�G��������
//					pMove->y = 6.0f;		//�W�����v������
//					bIsLanding = false;		//�W�����v��Ԃɂ���
//					pPos->y += pMove->y;	//�ړ��ʂ̍X�V(Y)
//				}
//			}
//			else if (pPosOld->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z	//�O��̈ʒu(Z��)��Z���̍ŏ��l�ȏ�
//				&& pPos->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z		//���݂̈ʒu(Z��)��Z���̍ŏ��l�ȉ�
//				&& pPos->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x		//X���̍ő�l������
//				&& pPos->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//X���̍ŏ��l������
//				&& pPos->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//Y���̍ő�l������
//				&& pPos->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y)		//Y���̍ŏ��l������
//			{//�����̓����蔻��(+Z)
//				pPos->z = g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z;
//				if (nType == 1)
//				{//�G��������
//					pMove->y = 6.0f;		//�W�����v������
//					bIsLanding = false;		//�W�����v��Ԃɂ���
//					pPos->y += pMove->y;	//�ړ��ʂ̍X�V(Y)
//				}
//			}
//
//			if (pPosOld->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//�O��̈ʒu(Y��)��Y���̍ŏ��l�ȏ�
//				&& pPos->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y		//���݂̈ʒu(Y��)��Y���̍ŏ��l�ȉ�
//				&& pPos->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x		//X���̍ő�l������
//				&& pPos->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//X���̍ŏ��l������
//				&& pPos->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z		//Z���̍ő�l������
//				&& pPos->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z)		//Z���̍ŏ��l������
//			{//�㑤�̓����蔻��(-Y)
//				pPos->y = g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y;
//				pMove->y = 0.0f;		//Y�̈ړ��ʂ�0�ɂ���
//				bIsLanding = true;		//���n��Ԃɂ���
//			}
//			else if (pPosOld->y <= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y	//�O��̈ʒu(Y��)��Y���̍ŏ��l�ȉ�
//				&& pPos->y >= g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y		//���݂̈ʒu(Y��)��Y���̍ŏ��l�ȏ�
//				&& pPos->x <= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMax.x		//X���̍ő�l������
//				&& pPos->x >= g_aModel[nCnt].pos.x + g_aModel[nCnt].vtxMin.x		//X���̍ŏ��l������
//				&& pPos->z <= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMax.z		//Z���̍ő�l������
//				&& pPos->z >= g_aModel[nCnt].pos.z + g_aModel[nCnt].vtxMin.z)		//Z���̍ŏ��l������
//			{//�����̓����蔻��(+Y)
//				pPos->y = g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMin.y;
//			}
//		}
//	}
//	return bIsLanding;
//}
//
////======================================================
////	���f���̏����擾
////======================================================
//Model *GetModel(void)
//{
//	return &g_aModel[0];
//}