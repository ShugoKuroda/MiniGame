//=============================================================================
//
// �J�E���g�_�E�����S����[logo_countdown.cpp]
// Author : SHUGO KURODA
//
//=============================================================================

//*****************************************************************************
// �C���N���[�h
//*****************************************************************************
#include "manager.h"
#include "game.h"
#include "enemy_boss.h"
#include "logo_countdown.h"
#include "number.h"
#include "renderer.h"

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CLogoCountDown::CLogoCountDown() :m_nNum(0)
{
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CLogoCountDown::~CLogoCountDown()
{
}

//=============================================================================
// ����
//=============================================================================
CLogoCountDown *CLogoCountDown::Create(const int &nCountStart)
{
	CLogoCountDown *pLogo = new CLogoCountDown;

	if (pLogo != nullptr)
	{
		// �����̐ݒ�
		pLogo->m_nNum = nCountStart;

		// �����|���S������
		pLogo->m_apNumber = new CNumber("TEX_TYPE_SCORE_UI");

		if (pLogo->m_apNumber != nullptr)
		{
			// �ʒu�ݒ�
			pLogo->m_apNumber->SetPosition(D3DXVECTOR3(CRenderer::SCREEN_WIDTH / 2, CRenderer::SCREEN_HEIGHT / 2, 0.0f));
			// �T�C�Y�ݒ�
			pLogo->m_apNumber->SetSize(D3DXVECTOR2(COUNT_SIZE, COUNT_SIZE));
			// ������
			pLogo->m_apNumber->Init();
		}

		// ������
		pLogo->Init();
	}

	return pLogo;
}

//=============================================================================
// ������
//=============================================================================
HRESULT CLogoCountDown::Init()
{
	// �F�̐ݒ�
	//m_apNumber->SetColor(D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));
	// �j���܂ł̃J�E���^�[�ݒ�
	SetCountUninit(COUNT_UNINIT);
	// ���l�̐ݒ�
	Set();

	return S_OK;
}

//=============================================================================
// �I��
//=============================================================================
void CLogoCountDown::Uninit()
{
	// ���g������Ȃ�
	if (m_apNumber != nullptr)
	{
		// �������̏I������
		m_apNumber->Uninit();
		m_apNumber = nullptr;
	}

	// �I�u�W�F�N�g�̔j��
	Release();
}

//=============================================================================
// �X�V
//=============================================================================
void CLogoCountDown::Update()
{
	int nCounter = GetCountUninit();

	nCounter--;

	if (nCounter <= 0)
	{
		if (m_nNum > 1)
		{
			Create(m_nNum - 1);
		}
		else if (m_nNum == 1)
		{
			CManager::GetManager()->GetGame()->GetEnemyBoss()->SetPattern(CEnemyBoss::PATTERN_NORMAL);
		}
		Uninit();
		return;
	}

	SetCountUninit(nCounter);

	D3DXVECTOR2 size = m_apNumber->GetSize();

	size.x -= 1.0f;
	size.y -= 1.0f;

	m_apNumber->SetSize(size);

	m_apNumber->SetVertex();
}

//=============================================================================
// �`��
//=============================================================================
void CLogoCountDown::Draw()
{
}

//=============================================================================
// �X�R�A�̐ݒ�
//=============================================================================
void CLogoCountDown::Set()
{
	//���l���i�[
	int nPosTexU = m_nNum % 10;

	// �e�N�X�`�����W�̍X�V
	m_apNumber->SetAnimation(nPosTexU, 0, CNumber::DIVISION_U, CNumber::DIVISION_V);
}
