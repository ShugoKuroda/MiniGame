//-----------------------------------------------------------------------------------------------
//
// ����������̏���[avalanche.cpp]
// Author : Koshimoto Manato
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// �C���N���[�h�t�@�C��
//-----------------------------------------------------------------------------------------------
#include "avalanche.h"
#include "logo.h"
#include "player.h"
#include "effect.h"
#include "library.h"
#include "game.h"
#include "title.h"

//-----------------------------------------------------------------------------------------------
// �ÓI�����o�ϐ�
//-----------------------------------------------------------------------------------------------
CEffect *CAvalanche::m_pEffect[CAvalanche::MAX_AVALANCHE] = {};

//-----------------------------------------------------------------------------------------------
// �R���X�g���N�^
//-----------------------------------------------------------------------------------------------
CAvalanche::CAvalanche() : m_nDuration(300), m_nEffectIdx(0), m_bEnd(false)
{
}

//-----------------------------------------------------------------------------------------------
// �f�X�g���N�^
//-----------------------------------------------------------------------------------------------
CAvalanche::~CAvalanche()
{

}

//-----------------------------------------------------------------------------------------------
// ����
//-----------------------------------------------------------------------------------------------
CAvalanche* CAvalanche::Create()
{
	// �|�C���^�N���X��錾
	CAvalanche* pAvalanche = new CAvalanche;

	if (pAvalanche != nullptr)
	{// ����nullptr�ł͂Ȃ�������
		// ������
		pAvalanche->Init();
	}

	return pAvalanche;
}

//-----------------------------------------------------------------------------------------------
// ������
//-----------------------------------------------------------------------------------------------
HRESULT CAvalanche::Init()
{
	//���S��create�֐�����e�N�X�`����\��
	//CLogo::Create(�e�N�X�`���̖��O);

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// �I��
//-----------------------------------------------------------------------------------------------
void CAvalanche::Uninit()
{
	Release();
}

//-----------------------------------------------------------------------------------------------
// �X�V
//-----------------------------------------------------------------------------------------------
void CAvalanche::Update()
{
	//����������Ԃ�����������
	m_nDuration--;

	if (m_nDuration % 2 == 0)
	{
		//����̃G�t�F�N�g�̐���
		m_pEffect[m_nEffectIdx] = CEffect::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR2(10.0f, 10.0f), CEffect::TYPE_SPHERE, CEffect::TEX_SPHERE);
		//����̃G�t�F�N�g�̃C���f�b�N�X��1�i�߂�
		m_nEffectIdx++;
	}

	if (m_nDuration <= 0)
	{//�������Ԃ��O�ȉ��ɂȂ�����
		m_bEnd = true;
	}

<<<<<<< HEAD
	for (int nCntPlayer = 0; nCntPlayer < CPlayer::PLAYER_MAX; nCntPlayer++)
	{
		//�v���C���[�̃|�C���^���擾
		CPlayer *pPlayer = CGame::GetPlayer(nCntPlayer);

		if (pPlayer != nullptr)
		{
			if (m_bEnd != true)
			{
				//for (int nCntObject = 0; nCntObject < CObject::MAX_OBJECT; nCntObject++)
				//{
				//	CObject *pObject = CObject::GetObject(nCntObject);
				//	if (pObject != nullptr)
				//	{
				//		CObject::EObject objType = pObject->GetObjType();

				//		if (objType == OBJ_PLAYER)
				//		{
				if (pPlayer->GetPosition().z <= m_pEffect[0]->GetPosition().z)
				{//�ŏ��ɐ��������G�t�F�N�g���v���C���[�ɐڐG�����ꍇ
					//�v���C���[�������߂�
					pPlayer->SetBadState(true);
				}
				//		}
				//	}
				//}
			}
			else
			{
				pPlayer->SetBadState(false);
				Uninit();
			}
		}
	}
=======
	//�v���C���[�̏����擾
	CPlayer *pPlayer = CTitle::GetPlayer();

	if (m_bEnd != true)
	{
		for (int nCntObject = 0; nCntObject < CObject::MAX_OBJECT; nCntObject++)
		{
			if (pPlayer->GetPosition().z <= m_pEffect[0]->GetPosition().z)
			{//�ŏ��ɐ��������G�t�F�N�g���v���C���[�ɐڐG�����ꍇ
				//�v���C���[�������߂�
				pPlayer->SetBadState(true);
			}
		}
	}
	else
	{
		//�v���C���[�̏�Ԃ�ύX����
		pPlayer->SetBadState(false);
		Uninit();
	}
>>>>>>> 212935dc8f940f827fa80f303ee408bacb8c7e9e
}

//-----------------------------------------------------------------------------------------------
// �`��
//-----------------------------------------------------------------------------------------------
void CAvalanche::Draw()
{
}
