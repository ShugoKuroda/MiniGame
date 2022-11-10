////=============================================================================
////
//// X�t�@�C�����[�V���� [x_file_motion.cpp]
//// Author : SHUGO KURODA
////
////=============================================================================
//
////======================================================
//// �C���N���[�h
////======================================================
//#include <stdio.h>
//#include "x_file_motion.h"
//
//#include "renderer.h"
//#include "manager.h"
//
////======================================================
//// �}�N����`
////======================================================
//#define LINE_MAX_READING_LENGTH (256)			//��s�̍ő�ǂݎ�蕶����
//
////=============================================================================
//// �R���X�g���N�^
////=============================================================================
//CXFileMotion::CXFileMotion()
//{
//}
//
////=============================================================================
//// �f�X�g���N�^
////=============================================================================
//CXFileMotion::~CXFileMotion()
//{
//}
//
////=============================================================================
//// ������
////=============================================================================
//HRESULT CXFileMotion::Init(HWND hWnd)
//{
//	// �t�@�C���|�C���^�[�錾
//	FILE *pFile = NULL;
//
//	char cBff[LINE_MAX_READING_LENGTH];			// ��s���ǂݎ�邽�߂̕ϐ�
//	char cBffHead[LINE_MAX_READING_LENGTH];		// ���̕�����ǂݎ�邽�߂̕ϐ�
//	int nMotionIdx = 0;							// ���[�V�����ԍ�
//
//	// �t�@�C�����J��
//	pFile = fopen("motion_pas.ini", "r");
//
//	if (pFile == NULL)
//	{//�J���Ȃ��������p
//		MessageBox(hWnd, "INI�t�@�C�����J���܂���ł���", "�x���I", MB_ICONWARNING);
//		return E_FAIL;
//	}
//
//	//������̓ǂݎ�胋�[�v����
//	while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//	{
//		//�����ǂݍ��ݗp�ϐ��̏�����
//		memset(&cBffHead, 0, sizeof(cBffHead));
//		//������̕���
//		sscanf(cBff, "%s", &cBffHead);
//
//		if (strcmp(&cBffHead[0], "MODEL_FILENAME") == 0)
//		{//���[�V�����e�L�X�g�̑��΃p�X�p
//
//			//���΃p�X�ۑ��p
//			char sPath[LINE_MAX_READING_LENGTH];
//
//			//��s�̕����񂩂瑊�΃p�X�̓ǂݎ��
//			sscanf(cBff, "%s = %s", &cBffHead, &sPath[0]);
//
//			//X�t�@�C���̓ǂݍ���
//			if (LoadMotion(&sPath[0]) == false)
//			{// �ǂݍ��ݎ��s
//				MessageBox(hWnd, "���[�V�����e�L�X�g���J���܂���ł���", "�x���I", MB_ICONWARNING);
//				return E_FAIL;
//			}
//		}
//		else if (strcmp(&cBffHead[0], "END_SCRIPT") == 0)
//		{//�ǂݍ��ݏI��
//			break;
//		}
//	}
//
//	return S_OK;
//}
//
////=============================================================================
//// �I��
////=============================================================================
//void CXFileMotion::Uninit()
//{
//	for (int nCnt = 0; nCnt < m_nNumXFile; nCnt++)
//	{
//		//���b�V���̔j��
//		if (m_aXFile[nCnt].pMesh != NULL)
//		{
//			m_aXFile[nCnt].pMesh->Release();
//			m_aXFile[nCnt].pMesh = NULL;
//		}
//		//�}�e���A���̔j��
//		if (m_aXFile[nCnt].pBuffMat != NULL)
//		{
//			m_aXFile[nCnt].pBuffMat->Release();
//			m_aXFile[nCnt].pBuffMat = NULL;
//		}
//	}
//}
//
////-----------------------------------------------------------------------------
//// ���[�V�������̓ǂݍ���
////-----------------------------------------------------------------------------
//bool CXFileMotion::LoadMotion(char* pas)
//{
//	// �t�@�C���|�C���^�[�錾
//	FILE *pFile = NULL;
//
//	char cBff[LINE_MAX_READING_LENGTH];			// ��s���ǂݎ�邽�߂̕ϐ�
//	char cBffHead[LINE_MAX_READING_LENGTH];		// ���̕�����ǂݎ�邽�߂̕ϐ�
//	int nMotionIdx = 0;							// ���[�V�����ԍ�
//
//	// �t�@�C�����J��
//	pFile = fopen(pas, "r");
//
//	if (pFile == NULL)
//	{// �t�@�C�����J���Ȃ������ꍇ
//		return false;
//	}
//
//	//������̓ǂݎ�胋�[�v����
//	while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//	{
//		//�����ǂݍ��ݗp�ϐ��̏�����
//		memset(&cBffHead, 0, sizeof(cBffHead));
//		//������̕���
//		sscanf(cBff, "%s", &cBffHead);
//
//		if (strcmp(&cBffHead[0], "MODEL_FILENAME") == 0)
//		{//X�t�@�C���̑��΃p�X�p
//
//			//���΃p�X�ۑ��p
//			char sPath[LINE_MAX_READING_LENGTH];
//
//			//��s�̕����񂩂瑊�΃p�X�̓ǂݎ��
//			sscanf(cBff, "%s = %s", &cBffHead, &sPath[0]);
//
//			//X�t�@�C���̓ǂݍ���
//			LoadParts(&sPath[0]);
//		}
//		else if (strcmp(&cBffHead[0], "CHARACTERSET") == 0)
//		{//�v���C���[�̔z�u�p
//
//			//�v���C���[���̓ǂݎ�胋�[�v����
//			while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//			{
//				//������̕���
//				sscanf(cBff, "%s", &cBffHead);
//
//				if (strcmp(&cBffHead[0], "NUM_PARTS") == 0)
//				{//�p�[�c��
//					//������̕���
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->nNumParts);
//				}
//				else if (strcmp(&cBffHead[0], "MOVE") == 0)
//				{//�ړ���
//					//������̕���
//					sscanf(cBff, "%s = %f", &cBffHead, &pPlayer->fMove);
//				}
//				else if (strcmp(&cBffHead[0], "JUMP") == 0)
//				{//�W�����v��
//					//������̕���
//					sscanf(cBff, "%s = %f", &cBffHead, &pPlayer->fJump);
//				}
//				else if (strcmp(&cBffHead[0], "PARTSSET") == 0)
//				{
//					//�C���f�b�N�X�ۑ��p
//					int nIndex = 0;
//
//					//�v���C���[�p�[�c���̓ǂݎ�胋�[�v����
//					while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//					{
//						//������̕���
//						sscanf(cBff, "%s", &cBffHead);
//
//						if (strcmp(&cBffHead[0], "INDEX") == 0)
//						{//�p�[�c�ԍ�
//						 //������̕���
//							sscanf(cBff, "%s = %d", &cBffHead, &nIndex);
//							pPlayer->aParts[nIndex].nIndex = nIndex;
//							pPlayer->aParts[nIndex].bUse = true;
//						}
//						else if (strcmp(&cBffHead[0], "PARENT") == 0)
//						{//���݂̃p�[�c�̐e
//						 //������̕���
//							sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aParts[nIndex].nParent);
//						}
//						else if (strcmp(&cBffHead[0], "POS") == 0)
//						{//�ʒu
//						 //������̕���
//							sscanf(cBff, "%s = %f%f%f", &cBffHead, &pPlayer->aParts[nIndex].pos.x, &pPlayer->aParts[nIndex].pos.y, &pPlayer->aParts[nIndex].pos.z);
//						}
//						else if (strcmp(&cBffHead[0], "ROT") == 0)
//						{//��](�p�x)
//						 //������̕���
//							sscanf(cBff, "%s = %f%f%f", &cBffHead, &pPlayer->aParts[nIndex].rot.x, &pPlayer->aParts[nIndex].rot.y, &pPlayer->aParts[nIndex].rot.z);
//							pPlayer->aParts[nIndex].baseRot = pPlayer->aParts[nIndex].rot;
//						}
//						else if (strcmp(&cBffHead[0], "END_PARTSSET") == 0)
//						{//�p�[�c�ǂݍ��ݏI��
//							break;
//						}
//					}
//				}
//				else if (strcmp(&cBffHead[0], "END_CHARACTERSET") == 0)
//				{//�v���C���[�ǂݍ��ݏI��
//					break;
//				}
//			}
//		}
//		else if (strcmp(&cBffHead[0], "MOTIONSET") == 0)
//		{//���[�V�����ݒ�p
//
//		 //�L�[�Z�b�g�ԍ��̕ۑ��p�ϐ�
//			int nKeySetIdx = 0;
//			//���[�V�������̓ǂݎ�胋�[�v����
//			while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//			{
//				//������̕���
//				sscanf(cBff, "%s", &cBffHead);
//
//				if (strcmp(&cBffHead[0], "LOOP") == 0)
//				{//���[�v�ݒ�
//				 //������̕���
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nLoop);
//				}
//				else if (strcmp(&cBffHead[0], "NUM_KEY") == 0)
//				{//�L�[�̐�
//				 //������̕���
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nNumKey);
//				}
//				else if (strcmp(&cBffHead[0], "KEYSET") == 0)
//				{
//					//���f���p�[�c�̃Z�b�g�ԍ�
//					int nPartsIdx = 0;
//
//					//�L�[�Z�b�g���̓ǂݎ�胋�[�v����
//					while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//					{
//						//������̕���
//						sscanf(cBff, "%s", &cBffHead);
//
//						if (strcmp(&cBffHead[0], "FRAME") == 0)
//						{//���[�v�ݒ�
//						 //������̕���
//							sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx]);
//							if (pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx] == 0)
//							{//�Đ��t���[������0�̏ꍇ1�ɂ���
//								pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx] = 1;
//							}
//						}
//						if (strcmp(&cBffHead[0], "KEY") == 0)
//						{// ���[�v�ݒ�
//						 // �L�[���̓ǂݎ�胋�[�v����
//							while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//							{
//								//������̕���
//								sscanf(cBff, "%s", &cBffHead);
//
//								if (strcmp(&cBffHead[0], "POS") == 0)
//								{//���[�V�����Đ����̈ʒu���ǂݍ���
//								 //������̕���
//									sscanf(cBff, "%s = %f%f%f", &cBffHead,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].x,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].y,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].z);
//								}
//								else if (strcmp(&cBffHead[0], "ROT") == 0)
//								{//���[�V�����Đ����̉�]���ǂݍ���
//								 //������̕���
//									sscanf(cBff, "%s = %f%f%f", &cBffHead,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].x,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].y,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].z);
//								}
//								else if (strcmp(&cBffHead[0], "END_KEY") == 0)
//								{
//									nPartsIdx++;
//									break;
//								}
//							}
//						}
//						else if (strcmp(&cBffHead[0], "END_KEYSET") == 0)
//						{
//							nKeySetIdx++;
//							break;
//						}
//					}
//				}
//				else if (strcmp(&cBffHead[0], "END_MOTIONSET") == 0)
//				{
//					nMotionIdx++;
//					break;
//				}
//			}
//		}
//		else if (strcmp(&cBffHead[0], "END_SCRIPT") == 0)
//		{//�e�L�X�g�t�@�C����ǂݐ؂�����
//			break;
//		}
//	}
//
//	//�v���C���[���g�p���Ă����Ԃɂ���
//	pPlayer->bUse = true;
//
//	//�t�@�C�������
//	fclose(pFile);
//
//	return true;
//}
//
////-----------------------------------------------------------------------------
//// X�t�@�C���̓ǂݍ���
////-----------------------------------------------------------------------------
//void CXFileMotion::LoadParts(char *pas)
//{
//	//�f�o�C�X���擾����
//	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//
//	// �e�N�X�`���ۑ��p
//	SModelInfo XFile;
//
//	//X�t�@�C���̓ǂݍ���
//	D3DXLoadMeshFromX(pas,
//		D3DXMESH_SYSTEMMEM,
//		pDevice,
//		NULL,
//		&XFile.pBuffMat,
//		NULL,
//		&XFile.nNumMat,
//		&XFile.pMesh);
//
//	// �e�N�X�`���̓ǂݍ��ݏ���
//	LoadXFileTexture(XFile);
//}
//
////-----------------------------------------------------------------------------
//// �e�N�X�`���̓ǂݍ���
////-----------------------------------------------------------------------------
//void CXFileMotion::LoadXFileTexture(SModelInfo& XFile)
//{
//	//�}�e���A���f�[�^�ւ̃|�C���^
//	D3DXMATERIAL *pMat;
//
//	//�}�e���A���f�[�^�ւ̃|�C���^���擾
//	pMat = (D3DXMATERIAL*)XFile.pBuffMat->GetBufferPointer();
//
//	for (int nCntMat = 0; nCntMat < (int)XFile.nNumMat; nCntMat++)
//	{
//		//�}�e���A���̐ݒ�
//		//pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//		//�e�N�X�`�����������ꍇ
//		if ((pMat[nCntMat].pTextureFilename != NULL) && (strcmp(pMat[nCntMat].pTextureFilename, "") != 0))
//		{
//			//�f�o�C�X���擾����
//			LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//			//�e�N�X�`���̓ǂݍ���
//			D3DXCreateTextureFromFile(pDevice, pMat[nCntMat].pTextureFilename, &XFile.pTexture[nCntMat]);
//		}
//	}
//}
