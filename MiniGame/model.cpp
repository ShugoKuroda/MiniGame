//===================================================================
//
//	���f������[model.cpp]
//	Author:SHUGO KURODA
//
//===================================================================

//======================================================
//	�C���N���[�h
//======================================================
#include "manager.h"
#include "renderer.h"
#include "model.h"

#include "input.h"
#include "camera.h"
//#include "shadow.h"
#include "bullet.h"
#include "meshfield.h"
#include "load.h"
#include "enemy.h"

//-----------------------------------------------------------------------------
// �R���X�g���N�^
//-----------------------------------------------------------------------------
CModel::CModel() :m_pos(0.0f, 0.0f, 0.0f), m_posOld(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f),
					m_vtxMax(0.0f, 0.0f, 0.0f), m_vtxMin(0.0f, 0.0f, 0.0f), m_nIdxShadow(0)
{
}

//-----------------------------------------------------------------------------
// �f�X�g���N�^
//-----------------------------------------------------------------------------
CModel::~CModel()
{
}

//-----------------------------------------------------------------------------
// ����
// const D3DXVECTOR3& pos �� ��������ʒu
// const D3DXVECTOR3& rot �� ��������p�x
// const char* name �� �������閼�O(���)
//-----------------------------------------------------------------------------
CModel* CModel::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
{
	//�C���X�^���X����
	CModel *pModel = new CModel;

	// �ʒu�ݒ�
	pModel->SetPosition(pos);

	// �p�x�ݒ�
	pModel->SetRotation(rot);

	// X�t�@�C���̊��蓖��
	pModel->BindXFile(CManager::GetManager()->GetXFile()->GetXFile(name));

	// ������
	pModel->Init();

	return pModel;
}

//-----------------------------------------------------------------------------
// ������
//-----------------------------------------------------------------------------
HRESULT CModel::Init()
{
	int nNumVix;		//���_��
	DWORD sizeFVF;		//���_�t�H�[�}�b�g�̃T�C�Y
	BYTE *pVtxBuff;		//���_�o�b�t�@�ւ̃|�C���^

	//���_���̎擾
	nNumVix = m_aXFile.pMesh->GetNumVertices();

	//���_�t�H�[�}�b�g�擾
	sizeFVF = D3DXGetFVFVertexSize(m_aXFile.pMesh->GetFVF());

	//���_���b�N
	m_aXFile.pMesh->LockVertexBuffer(D3DLOCK_READONLY, (void**)&pVtxBuff);

	//���ׂĂ̒��_POS�̎擾
	for (int nCntVtx = 0; nCntVtx < nNumVix; nCntVtx++)
	{
		//���_���W�̑��
		D3DXVECTOR3 vtx = *(D3DXVECTOR3*)pVtxBuff;

		if (m_vtxMax.x < vtx.x)
		{//X
			m_vtxMax.x = vtx.x;
		}
		else if (m_vtxMin.x > vtx.x)
		{
			m_vtxMin.x = vtx.x;
		}

		if (m_vtxMax.y < vtx.y)
		{//Y
			m_vtxMax.y = vtx.y;
		}
		else if (m_vtxMin.y > vtx.y)
		{
			m_vtxMin.y = vtx.y;
		}

		if (m_vtxMax.z < vtx.z)
		{//Z
			m_vtxMax.z = vtx.z;
		}
		else if (m_vtxMin.z > vtx.z)
		{
			m_vtxMin.z = vtx.z;
		}

		//���_�t�H�[�}�b�g�̃T�C�Y���|�C���^��i�߂�
		pVtxBuff += sizeFVF;
	}

	//���C����z�u
	//SetLine(g_Model[nCnt].pos, g_Model[nCnt].vtxMax, g_Model[nCnt].vtxMin, D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f));

	//���_�A�����b�N
	m_aXFile.pMesh->UnlockVertexBuffer();
	return S_OK;
}

//-----------------------------------------------------------------------------
// �I��
//-----------------------------------------------------------------------------
void CModel::Uninit()
{
	Release();
}

//-----------------------------------------------------------------------------
// �X�V
//-----------------------------------------------------------------------------
void CModel::Update()
{
	//for (int nCntVtx = 0; nCntVtx < MAX_MODEL_TYPE; nCntVtx++)
	//{
	//	for (int nCnt = 0; nCnt < MAX_MODEL; nCnt++)
	//	{
	//		//�O��̈ʒu��ۑ�
	//		g_aModel[nCnt].posOld = g_aModel[nCnt].pos;

	//		//�����蔻��
	//		//CollisionPlayer(&g_aModel[nCnt].pos, &g_aModel[nCnt].posOld, &g_aModel[nCnt].Airmove, g_aModel[nCnt].fWidth, g_aModel[nCnt].fHeight);
	//	}
	//}
}

//-----------------------------------------------------------------------------
// �`��
//-----------------------------------------------------------------------------
void CModel::Draw()
{
	//�f�o�C�X�̎擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();

	D3DXMATRIX mtxRot, mtxTrans;	//�v�Z�p�}�g���b�N�X
	D3DMATERIAL9 matDef;			//���݂̃}�e���A���ۑ��p
	D3DXMATERIAL *pMat;				//�}�e���A���f�[�^�ւ̃|�C���^

	//���[���h�}�g���b�N�X�̏�����
	D3DXMatrixIdentity(&m_mtxWorld);

	//�����𔽉f
	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_rot.y, m_rot.x, m_rot.z);

	// ���[���h�}�g���b�N�X�̌v�Z
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxRot);

	//�ʒu�𔽉f
	D3DXMatrixTranslation(&mtxTrans, m_pos.x, m_pos.y, m_pos.z);

	// ���[���h�}�g���b�N�X�̌v�Z
	D3DXMatrixMultiply(&m_mtxWorld, &m_mtxWorld, &mtxTrans);

	//���[���h�}�g���b�N�X�̐ݒ�
	pDevice->SetTransform(D3DTS_WORLD, &m_mtxWorld);

	//���݂̃}�e���A����ێ�
	pDevice->GetMaterial(&matDef);

	//�}�e���A���f�[�^�ւ̃|�C���^���擾
	pMat = (D3DXMATERIAL*)m_aXFile.pBuffMat->GetBufferPointer();

	for (int nCntMat = 0; nCntMat < (int)m_aXFile.nNumMat; nCntMat++)
	{
		//�}�e���A���̐ݒ�
		pDevice->SetMaterial(&pMat[nCntMat].MatD3D);

		//�e�N�X�`���̐ݒ�
		pDevice->SetTexture(0, m_aXFile.pTexture[nCntMat]);

		//���f���p�[�c�̕`��
		m_aXFile.pMesh->DrawSubset(nCntMat);

		//�e�N�X�`���̐ݒ�����ɖ߂�
		pDevice->SetTexture(0, NULL);
	}

	//�ێ����Ă����}�e���A����߂�
	pDevice->SetMaterial(&matDef);
}

//-----------------------------------------------------------------------------
// �����蔻��
//-----------------------------------------------------------------------------
//bool CModel::Collision(D3DXVECTOR3 *pPos, D3DXVECTOR3 *pPosOld, float& Width, float& Height)
//{
//	//�Փ˃t���O
//	bool bIsPush = false;
//
//	if (pPosOld->x <= m_pos.x + m_vtxMin.x		//�O��̈ʒu(X��)��X���̍ŏ��l�ȉ�
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//���݂̈ʒu(X��)��X���̍ŏ��l�ȏ�
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z���̍ő�l������
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//Z���̍ŏ��l������
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y���̍ő�l������
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y���̍ŏ��l������
//	{//�����̓����蔻��(-X)
//		pPos->x = m_pos.x + m_vtxMin.x;
//		bIsPush = true;
//	}
//	else if (pPosOld->x >= m_pos.x + m_vtxMax.x	//�O��̈ʒu(X��)��X���̍ŏ��l�ȏ�
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//���݂̈ʒu(X��)��X���̍ŏ��l�ȉ�
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z���̍ő�l������
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//Z���̍ŏ��l������
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y���̍ő�l������
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y���̍ŏ��l������
//	{//�E���̓����蔻��(+X)
//		pPos->x = m_pos.x + m_vtxMax.x;
//		bIsPush = true;
//	}
//
//	if (pPosOld->z <= m_pos.z + m_vtxMin.z		//�O��̈ʒu(Z��)��Z���̍ŏ��l�ȉ�
//		&& pPos->z >= m_pos.z + m_vtxMin.z		//���݂̈ʒu(Z��)��Z���̍ŏ��l�ȏ�
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X���̍ő�l������
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X���̍ŏ��l������
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y���̍ő�l������
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y���̍ŏ��l������
//	{//��O���̓����蔻��(-Z)
//		pPos->z = m_pos.z + m_vtxMin.z;
//		bIsPush = true;
//	}
//	else if (pPosOld->z >= m_pos.z + m_vtxMax.z	//�O��̈ʒu(Z��)��Z���̍ŏ��l�ȏ�
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//���݂̈ʒu(Z��)��Z���̍ŏ��l�ȉ�
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X���̍ő�l������
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X���̍ŏ��l������
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//Y���̍ő�l������
//		&& pPos->y >= m_pos.y + m_vtxMin.y)		//Y���̍ŏ��l������
//	{//�����̓����蔻��(+Z)
//		pPos->z = m_pos.z + m_vtxMax.z;
//		bIsPush = true;
//	}
//
//	if (pPosOld->y >= m_pos.y + m_vtxMax.y		//�O��̈ʒu(Y��)��Y���̍ŏ��l�ȏ�
//		&& pPos->y <= m_pos.y + m_vtxMax.y		//���݂̈ʒu(Y��)��Y���̍ŏ��l�ȉ�
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X���̍ő�l������
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X���̍ŏ��l������
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z���̍ő�l������
//		&& pPos->z >= m_pos.z + m_vtxMin.z)		//Z���̍ŏ��l������
//	{//�㑤�̓����蔻��(-Y)
//		//pPos->y = g_aModel[nCnt].pos.y + g_aModel[nCnt].vtxMax.y;
//	}
//	else if (pPosOld->y <= m_pos.y + m_vtxMin.y	//�O��̈ʒu(Y��)��Y���̍ŏ��l�ȉ�
//		&& pPos->y >= m_pos.y + m_vtxMin.y		//���݂̈ʒu(Y��)��Y���̍ŏ��l�ȏ�
//		&& pPos->x <= m_pos.x + m_vtxMax.x		//X���̍ő�l������
//		&& pPos->x >= m_pos.x + m_vtxMin.x		//X���̍ŏ��l������
//		&& pPos->z <= m_pos.z + m_vtxMax.z		//Z���̍ő�l������
//		&& pPos->z >= m_pos.z + m_vtxMin.z)		//Z���̍ŏ��l������
//	{//�����̓����蔻��(+Y)
//		pPos->y = m_pos.y + m_vtxMin.y;
//		bIsPush = true;
//	}
//
//	return bIsPush;
//}
