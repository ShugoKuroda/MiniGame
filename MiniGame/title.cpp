//===============================================================================================
//
// �Q�[����ʏ��� [title.cpp]
// Author : SHUGO KURODA
//
//===============================================================================================
#include "title.h"
#include "sound.h"

#include "manager.h"
#include "input_keyboard.h"
#include "input_joypad.h"
#include "object.h"
#include "object2D.h"

#include "library.h"
#include "fade.h"

#include "cloud.h"
#include "fade_scene.h"
#include "library.h"
#include "ui.h"

// �ǉ�
#include "object3D.h"
#include "camera.h"
#include "light.h"
#include "player.h"
#include "enemy_boss.h"
#include "item.h"

//-----------------------------------------------------------------------------------------------
// using�錾
//-----------------------------------------------------------------------------------------------
using namespace LibrarySpace;

//-----------------------------------------------------------------------------------------------
// �ÓI�����o�ϐ�
//-----------------------------------------------------------------------------------------------
// �e�N�X�`���̃|�C���^
LPDIRECT3DTEXTURE9 CTitle::m_apTexture[OBJ_MAX] = { nullptr };
CPlayer* CTitle::m_pPlayer = nullptr;
CEnemyBoss* CTitle::m_pEnemyBoss = nullptr;
CItem* CTitle::m_pItem = nullptr;

//-----------------------------------------------------------------------------------------------
// �R���X�g���N�^
//-----------------------------------------------------------------------------------------------
CTitle::CTitle() :m_bTitleDraw(false), m_bPush(false), m_bEntry{ false }, m_bTutorial(false), m_move(0.0f,0.0f,0.0f)
{
	for (int nCnt = 0; nCnt < OBJ_MAX - 1; nCnt++)
	{
		m_apObject2D[nCnt] = nullptr;
	}

	// �G���g���[����������
	CManager::SetEntry(0, false);
	CManager::SetEntry(1, false);
}

//-----------------------------------------------------------------------------------------------
// �f�X�g���N�^
//-----------------------------------------------------------------------------------------------
CTitle::~CTitle()
{
}

//-----------------------------------------------------------------------------------------------
// ������
//-----------------------------------------------------------------------------------------------
HRESULT CTitle::Init()
{
	// �|������
	CObject3D::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f));
	// �|������
	CObject3D::Create(D3DXVECTOR3(0.0f, 0.0f, -200.0f));
	// �|������
	CObject3D::Create(D3DXVECTOR3(0.0f, 0.0f, -400.0f));
	// �|������
	CObject3D::Create(D3DXVECTOR3(0.0f, 0.0f, -600.0f));
	// �|������
	CObject3D::Create(D3DXVECTOR3(0.0f, 0.0f, -800.0f));

	// �J��������
	CCamera::Create(D3DXVECTOR3(0.0f, 130.0f, -280.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f));

	// ���C�g����
	CLight::Create(D3DXVECTOR3(-0.2f, -0.8f, 0.4f), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));
	CLight::Create(D3DXVECTOR3(0.2f, -0.1f, -0.8f), D3DXCOLOR(0.4f, 0.4f, 0.4f, 1.0f));

	// ���f������
	CModel::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_ITEM_METAL");

	// �v���C���[����
	m_pPlayer = CPlayer::Create(D3DXVECTOR3(0.0f, 0.0f, -200.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_STAR");

	// �G�{�X����
	m_pEnemyBoss = CEnemyBoss::Create(D3DXVECTOR3(0.0f, 0.0f, 0.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WASIZU");

	//Item����
	m_pItem = CItem::Create(D3DXVECTOR3(0.0f, 0.0f, -100.0f),CItem::TYPE_NONE, "XFILE_TYPE_SHOE");

	//// �e�N�X�`���̃��[�h
	//CTitle::Load();
	//// �_
	//CCloud::Load();

	//// �X�N���[���T�C�Y�̕ۑ�
	//D3DXVECTOR2 ScreenSize = D3DXVECTOR2((float)CRenderer::SCREEN_WIDTH, (float)CRenderer::SCREEN_HEIGHT);

	//for (int nCnt = 0; nCnt < OBJ_MAX - 1; nCnt++)
	//{// ����
	//	m_apObject2D[nCnt] = new CObject2D;
	//}

	//// ��
	//m_apObject2D[BG_SKY]->SetPosition(D3DXVECTOR3(ScreenSize.x / 2, -ScreenSize.y / 2, 0.0f));
	//m_apObject2D[BG_SKY]->SetSize(D3DXVECTOR2(ScreenSize.x, ScreenSize.y * 3));
	//// �^�C�g�����S
	//m_apObject2D[LOGO_TITLE]->SetPosition(D3DXVECTOR3(ScreenSize.x / 2, ScreenSize.y - 450.0f, 0.0f));
	//m_apObject2D[LOGO_TITLE]->SetSize(D3DXVECTOR2(ScreenSize.x - 550.0f, ScreenSize.y / 2.5f));
	//// �v���C���[���S
	//m_apObject2D[LOGO_PLAYER]->SetPosition(D3DXVECTOR3(-ScreenSize.x, 160.0f, 0.0f));
	//m_apObject2D[LOGO_PLAYER]->SetSize(D3DXVECTOR2(300.0f, 150.0f));
	//// Press���S
	//m_apObject2D[LOGO_PRESS]->SetPosition(D3DXVECTOR3(ScreenSize.x / 2, ScreenSize.y - 150.0f, 0.0f));
	//m_apObject2D[LOGO_PRESS]->SetSize(D3DXVECTOR2(ScreenSize.x - 550.0f, 90.0f));
	//// �t�F�[�h
	//m_apObject2D[BG_FADE]->SetPosition(D3DXVECTOR3(ScreenSize.x / 2, ScreenSize.y / 2, 0.0f));
	//m_apObject2D[BG_FADE]->SetSize(D3DXVECTOR2(ScreenSize.x, ScreenSize.y));
	//// �`���[�g���A��
	//m_apObject2D[LOGO_TUTORIAL]->SetPosition(D3DXVECTOR3(ScreenSize.x / 2, ScreenSize.y / 2, 0.0f));
	//m_apObject2D[LOGO_TUTORIAL]->SetSize(D3DXVECTOR2(ScreenSize.x, ScreenSize.y));

	//for (int nCnt = 0; nCnt < OBJ_MAX - 1; nCnt++)
	//{// �������ƃe�N�X�`���̐ݒ�
	//	m_apObject2D[nCnt]->Init();
	//	m_apObject2D[nCnt]->BindTexture(m_apTexture[nCnt]);
	//}

	////�w�i�ƃv���C���[���S�ȊO��O�ɕ`�悷��(�^�C�v��ݒ肷��)
	//for (int nCnt = LOGO_TITLE; nCnt < OBJ_MAX - 1; nCnt++)
	//{
	//	m_apObject2D[nCnt]->SetObjType(CObject::OBJ_TITLE);
	//}
	////�v���C���[���S��w�i�̎��ɕ`�悷��
	//m_apObject2D[LOGO_PLAYER]->SetObjType(CObject::OBJ_TITLE_LOGO);
	//m_apObject2D[BG_FADE]->SetObjType(CObject::OBJ_BLACK);
	//m_apObject2D[LOGO_TUTORIAL]->SetObjType(CObject::OBJ_LOGO);

	////�^�C�g����Press���S�𓧖��ɂ���
	//m_apObject2D[LOGO_TITLE]->SetColor(D3DXCOLOR(1.0f, 1.0f, 1.0f, 0.0f));
	//m_apObject2D[LOGO_PRESS]->SetColor(D3DXCOLOR(1.0f, 1.0f, 1.0f, 0.0f));
	//m_apObject2D[BG_FADE]->SetColor(D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f));
	//m_apObject2D[LOGO_TUTORIAL]->SetColor(D3DXCOLOR(1.0f, 1.0f, 1.0f, 0.0f));

	//// �_�𕡐��A�����z�u����
	//for (int nCntCloud = 0; nCntCloud < 25; nCntCloud++)
	//{
	//	// �ʒu��ݒ�
	//	D3DXVECTOR3 pos;
	//	pos.x = (float)GetRandNum(CRenderer::SCREEN_WIDTH, 0);
	//	pos.y = (float)GetRandNum(CRenderer::SCREEN_HEIGHT - 300, CRenderer::SCREEN_HEIGHT * -4);
	//	pos.z = 0.0f;

	//	// �_�̐���
	//	CCloud::Create(pos);
	//}

	//// �v���C���[����
	//for (int nCntPlayer = 0; nCntPlayer < CPlayer::PLAYER_MAX; nCntPlayer++)
	//{
	//	// �v���C���[ENTRY���̎擾
	//	bool bEntry = CManager::GetEntry(nCntPlayer);

	//	// �G���g���[���Ă��Ȃ����
	//	if (bEntry == false)
	//	{
	//		switch (nCntPlayer)
	//		{
	//		case CPlayer::PLAYER_1:
	//			// �G���g���[�҂���UI1�𐶐�
	//			CUi::Create(D3DXVECTOR3((CRenderer::SCREEN_WIDTH / 4) - 50.0f, 40.0f, 0.0f), D3DXVECTOR2(400.0f, 50.0f),
	//				CUi::TYPE_PRESS_ANY_BUTTON, CUi::ANIM_FLASHING, CUi::PLAYER_1_NOT_ENTRY);
	//			// �G���g���[�҂���UI2�𐶐�
	//			CUi::Create(D3DXVECTOR3((CRenderer::SCREEN_WIDTH / 4) - 50.0f, 80.0f, 0.0f), D3DXVECTOR2(400.0f, 50.0f),
	//				CUi::TYPE_TO_START, CUi::ANIM_NONE, CUi::PLAYER_1_NOT_ENTRY);
	//			break;

	//		case CPlayer::PLAYER_2:
	//			// �G���g���[�҂���UI1�𐶐�
	//			CUi::Create(D3DXVECTOR3(CRenderer::SCREEN_WIDTH - 300.0f, 40.0f, 0.0f), D3DXVECTOR2(400.0f, 50.0f),
	//				CUi::TYPE_PRESS_ANY_BUTTON, CUi::ANIM_FLASHING, CUi::PLAYER_2_NOT_ENTRY);
	//			// �G���g���[�҂���UI2�𐶐�
	//			CUi::Create(D3DXVECTOR3(CRenderer::SCREEN_WIDTH - 300.0f, 80.0f, 0.0f), D3DXVECTOR2(400.0f, 50.0f),
	//				CUi::TYPE_TO_START, CUi::ANIM_NONE, CUi::PLAYER_2_NOT_ENTRY);
	//			break;
	//		default:
	//			break;
	//		}
	//	}
	//}

	//// �^�C�g��BGM
	//CSound::Play(CSound::SOUND_LABEL_TITLE);

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// �I��
//-----------------------------------------------------------------------------------------------
void CTitle::Uninit()
{
	// �|�C���^�̔j��
	for (int nCnt = 0; nCnt < OBJ_MAX; nCnt++)
	{
		if (m_apObject2D[nCnt] != nullptr)
		{
			m_apObject2D[nCnt] = nullptr;
		}
	}

	// �^�C�g��BGM
	CSound::Stop();
}

//-----------------------------------------------------------------------------------------------
// �X�V
//-----------------------------------------------------------------------------------------------
void CTitle::Update()
{
	// �Q�[���J�n�̌J��Ԃ��h�~
	if (m_bPush == false)
	{
		// �L�[�{�[�h���̎擾
		CInputKeyboard *pKeyboard = CManager::GetInputKeyboard();

		//�L�[�������ꂽ��
		if (pKeyboard->GetTrigger(CInputKeyboard::KEYINFO_OK) == true)
		{
			// ���艹
			CSound::Play(CSound::SOUND_LABEL_SE_MENU_OK);

			// ���[�h�̐ݒ�
			CManager::GetFade()->SetFade(CFade::FADE_OUT, CManager::MODE::MODE_GAME);
			m_bPush = true;
			return;
		}
	}
}
