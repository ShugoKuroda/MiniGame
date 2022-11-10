////===================================================================
////
////	���f������[motion.cpp]
////	Author:SHUGO KURODA
////
////===================================================================
//
////======================================================
////	�C���N���[�h
////======================================================
//#include "manager.h"
//#include "renderer.h"
//#include "motion.h"
//
//#include "input.h"
//#include "camera.h"
////#include "shadow.h"
//#include "bullet.h"
//#include "load.h"
//#include "enemy.h"
//
////-----------------------------------------------------------------------------
//// �R���X�g���N�^
////-----------------------------------------------------------------------------
//CMotion::CMotion() :m_pos(0.0f, 0.0f, 0.0f), m_posOld(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f),
//m_vtxMax(0.0f, 0.0f, 0.0f), m_vtxMin(0.0f, 0.0f, 0.0f), m_nIdxShadow(0)
//{
//}
//
////-----------------------------------------------------------------------------
//// �f�X�g���N�^
////-----------------------------------------------------------------------------
//CMotion::~CMotion()
//{
//}
//
////-----------------------------------------------------------------------------
//// ����
//// const D3DXVECTOR3& pos �� ��������ʒu
//// const D3DXVECTOR3& rot �� ��������p�x
//// const char* name �� �������閼�O(���)
////-----------------------------------------------------------------------------
//CMotion* CMotion::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
//{
//	// �C���X�^���X����
//	CMotion *pModel = new CMotion;
//
//	// �ʒu�ݒ�
//	pModel->SetPosition(pos);
//
//	// �p�x�ݒ�
//	pModel->SetRotation(rot);
//
//	// X�t�@�C���̊��蓖��
//	//pModel->BindXFile(CManager::GetManager()->GetXFile()->GetXFile(name));
//
//	// ������
//	pModel->Init();
//
//	return pModel;
//}
//
////-----------------------------------------------------------------------------
//// ������
////-----------------------------------------------------------------------------
//HRESULT CMotion::Init()
//{
//	return S_OK;
//}
//
////-----------------------------------------------------------------------------
//// �I��
////-----------------------------------------------------------------------------
//void CMotion::Uninit()
//{
//	Release();
//}
//
////-----------------------------------------------------------------------------
//// �X�V
////-----------------------------------------------------------------------------
//void CMotion::Update()
//{
//	//for (int nCntVtx = 0; nCntVtx < MAX_MODEL_TYPE; nCntVtx++)
//	//{
//	//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
//	//	{
//	//		//�O��̈ʒu��ۑ�
//	//		g_aModel[nCnt].posOld = g_aModel[nCnt].pos;
//
//	//		//�����蔻��
//	//		//CollisionPlayer(&g_aModel[nCnt].pos, &g_aModel[nCnt].posOld, &g_aModel[nCnt].Airmove, g_aModel[nCnt].fWidth, g_aModel[nCnt].fHeight);
//	//	}
//	//}
//}
//
////-----------------------------------------------------------------------------
//// �`��
////-----------------------------------------------------------------------------
//void CMotion::Draw()
//{
//	// �f�o�C�X�̎擾
//	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//
//	D3DXMATRIX mtxRot, mtxTrans;	// �v�Z�p�}�g���b�N�X
//	D3DMATERIAL9 matDef;			// ���݂̃}�e���A���ۑ��p
//	D3DXMATERIAL *pMat;				// �}�e���A���f�[�^�ւ̃|�C���^
//
//	// ���[���h�}�g���b�N�X�̏�����
//	D3DXMatrixIdentity(&m_mtxWorld);
//
//	// �����𔽉f
//	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_rot.y, m_rot.x, m_rot.z);
//
//	// ���[���h�}�g���b�N�X�̌v�Z
//	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);
//
//	// �ʒu�𔽉f
//	D3DXMatrixTranslation(&mtxTrans, m_pos.x, m_pos.y, m_pos.z);
//
//	// ���[���h�}�g���b�N�X�̌v�Z
//	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);
//
//	// ���[���h�}�g���b�N�X�̐ݒ�
//	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);
//
//	// ���݂̃}�e���A����ێ�
//	pDevice->GetMaterial(&matDef);
//
//	// �}�e���A���f�[�^�ւ̃|�C���^���擾
//	pMat = (D3DXMATERIAL*)m_aXFile.pBuffMat->GetBufferPointer();
//
//	for (int nCntMat = 0; nCntMat < (int)m_aXFile.nNumMat; nCntMat++)
//	{
//		// �}�e���A���̐ݒ�
//		pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//		// �e�N�X�`���̐ݒ�
//		pDevice->SetTexture(0, m_aXFile.pTexture[nCntMat]);
//
//		// ���f���p�[�c�̕`��
//		m_aXFile.pMesh->DrawSubset(nCntMat);
//
//		// �e�N�X�`���̐ݒ�����ɖ߂�
//		pDevice->SetTexture(0, NULL);
//	}
//
//	// �ێ����Ă����}�e���A����߂�
//	pDevice->SetMaterial(&matDef);
//}
//
////-----------------------------------------------------------------------------
//// ���[�V�����Đ�
////-----------------------------------------------------------------------------
//void CMotion::Motion()
//{
//}
