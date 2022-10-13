//=============================================================================
//
//	�v���C���[����[player.cpp]
//	Author : SHUGO KURODA
//
//=============================================================================
#include "manager.h"
#include "input_keyboard.h"
#include "input_joypad.h"
#include "sound.h"
#include "renderer.h"

#include "library.h"

#include "bg.h"
#include "spray.h"
#include "bullet.h"
#include "player.h"
#include "explosion.h"
#include "ui.h"
#include "gauge.h"
#include "life.h"
#include "score.h"

#include "rank.h"

//-----------------------------------------------------------------------------
// �}�N����`
//-----------------------------------------------------------------------------
#define PLAYER_UI_SIZE		(D3DXVECTOR2(200.0f, 50.0f))
#define LIFE_UI_SIZE		(D3DXVECTOR2(120.0f, 30.0f))
#define LEVEL_UI_SIZE		(D3DXVECTOR2(50.0f, 50.0f))
#define ATTACK_INTERVAL		(7)

//-----------------------------------------------------------------------------
// using�錾
//-----------------------------------------------------------------------------
using namespace LibrarySpace;

//*****************************************************************************
// �萔�錾
//*****************************************************************************
const float CPlayer::SIZE_X = 90.0f;
const float CPlayer::SIZE_Y = 40.0f;
const float CPlayer::ENTRY_SIZE_X = 630.0f;
const float CPlayer::ENTRY_SIZE_Y = 280.0f;
const float CPlayer::MOVE_DEFAULT = 1.0f;
// �A�j���[�V�����Ԋu
const int CPlayer::ANIM_INTERVAL = 5;
// �A�j���[�V�����ő吔
const int CPlayer::MAX_ANIM = 2;
// U���W�̍ő啪����
const int CPlayer::DIVISION_U = 2;
// V���W�̍ő啪����
const int CPlayer::DIVISION_V = 4;
// �v���C���[�̃f�t�H���g�J���[
const D3DXCOLOR CPlayer::DEFAULT_COL = D3DXCOLOR(0.0f, 0.0f, 0.0f, 1.0f);
// �f�t�H���g�c�@
const int CPlayer::DEFAULT_LIFE = 2;

//*****************************************************************************
// �ÓI�����o�ϐ��錾
//*****************************************************************************
// �e�N�X�`���̃|�C���^
LPDIRECT3DTEXTURE9 CPlayer::m_apTexture[2] = { nullptr };

//-----------------------------------------------------------------------------
// �R���X�g���N�^
//-----------------------------------------------------------------------------
CPlayer::CPlayer() :
	m_move(0.0f, 0.0f, 0.0f), m_state(STATE_NORMAL), m_nCntState(0), m_nCntAttack(0), m_nCntAnim(0), m_nPatternAnim(0), m_nCntAnimMove(0),
	m_nTexRotType(TYPE_NEUTRAL), m_nPlayerNum(0), posBullet(0.0f, 0.0f), m_bControl(false), m_bInSea(false), m_pLife(nullptr), m_pScore(nullptr), m_bDie(false)
{
	//�I�u�W�F�N�g�̎�ސݒ�
	SetObjType(EObject::OBJ_PLAYER);
}

//-----------------------------------------------------------------------------
// �f�X�g���N�^
//-----------------------------------------------------------------------------
CPlayer::~CPlayer()
{
}

//-----------------------------------------------------------------------------
// �C���X�^���X��������
//-----------------------------------------------------------------------------
CPlayer *CPlayer::Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name)
{
	//�C���X�^���X����
	CPlayer *pPlayer = new CPlayer;

	if (pPlayer != nullptr)
	{
		// �ʒu�ݒ�
		pPlayer->SetPosition(pos);
		// �p�x�ݒ�
		pPlayer->SetRotation(rot);
		// X�t�@�C���̐ݒ�
		pPlayer->BindXFile(CManager::GetXFile()->GetXFile(name));
		// ��������
		pPlayer->Init();
	}

	return pPlayer;
}

//-----------------------------------------------------------------------------
// ����������
//-----------------------------------------------------------------------------
HRESULT CPlayer::Init()
{
	// ������
	CModel::Init();

	// ����\��Ԃɂ���
	m_bControl = true;

	return S_OK;
}

//-----------------------------------------------------------------------------
// �I������
//-----------------------------------------------------------------------------
void CPlayer::Uninit()
{
	CModel::Uninit();
}

//-----------------------------------------------------------------------------
// �X�V����
//-----------------------------------------------------------------------------
void CPlayer::Update()
{
	// �ʒu�����擾
	D3DXVECTOR3 pos = CModel::GetPosition();

	//����ł����ԂȂ�
	if (m_bControl == true)
	{
		//�ړ�����
		pos = Move(pos);
	}

	//�ʒu���X�V
	CModel::SetPosition(pos);

	//��ԊǗ�
	//State();
}

//-----------------------------------------------------------------------------
// �`�揈��
//-----------------------------------------------------------------------------
void CPlayer::Draw()
{
	//�`��
	CModel::Draw();
}

//-----------------------------------------------------------------------------
// �ړ�����
//-----------------------------------------------------------------------------
D3DXVECTOR3 CPlayer::Move(D3DXVECTOR3 pos)
{
	// �L�[�{�[�h���̎擾
	CInputKeyboard *pKeyboard = CManager::GetInputKeyboard();
	// �W���C�p�b�h���̎擾
	CInputJoypad *pJoypad = CManager::GetInputJoypad();

	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_LEFT) == true ||
		pJoypad->GetPress(CInputJoypad::JOYKEY_LEFT, m_nPlayerNum) == true ||
		pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).x <= -0.2f)
	{//���L�[����
		if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_DOWN) == true ||
			pJoypad->GetPress(CInputJoypad::JOYKEY_UP, m_nPlayerNum) == true ||
			pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z <= -0.2f)
		{//��L�[����
		 //�ړ��ʉ��Z
			pos.x += GetSinVec(-0.75f, MOVE_DEFAULT);
			pos.z += GetCosVec(-0.75f, MOVE_DEFAULT);
			//�A�j���[�V�����ύX
			m_nCntAnimMove++;
		}
		else if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_UP) == true ||
			pJoypad->GetPress(CInputJoypad::JOYKEY_DOWN, m_nPlayerNum) == true ||
			pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z >= 0.2f)
		{//���L�[����
			pos.x += GetSinVec(-0.25f, MOVE_DEFAULT);
			pos.z += GetCosVec(-0.25f, MOVE_DEFAULT);
			m_nCntAnimMove++;
		}
		else
		{
			pos.x += GetSinVec(-0.5f, MOVE_DEFAULT);
			pos.z += GetCosVec(-0.5f, MOVE_DEFAULT);
			m_nTexRotType = TYPE_NEUTRAL;
			m_nCntAnimMove = 0;
		}
	}
	else if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_RIGHT) == true ||
		pJoypad->GetPress(CInputJoypad::JOYKEY_RIGHT, m_nPlayerNum) == true ||
		pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).x >= 0.2f)
	{//�E�L�[����
		if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_DOWN) == true ||
			pJoypad->GetPress(CInputJoypad::JOYKEY_UP, m_nPlayerNum) == true ||
			pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z <= -0.2f)
		{//��L�[����
			pos.x += GetSinVec(0.75f, MOVE_DEFAULT);
			pos.z += GetCosVec(0.75f, MOVE_DEFAULT);
			m_nCntAnimMove++;
		}
		else if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_UP) == true ||
			pJoypad->GetPress(CInputJoypad::JOYKEY_DOWN, m_nPlayerNum) == true ||
			pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z >= 0.2f)
		{//���L�[����
			pos.x += GetSinVec(0.25f, MOVE_DEFAULT);
			pos.z += GetCosVec(0.25f, MOVE_DEFAULT);
			m_nCntAnimMove++;
		}
		else
		{
			pos.x += GetSinVec(0.5f, MOVE_DEFAULT);
			pos.z += GetCosVec(0.5f, MOVE_DEFAULT);
			m_nTexRotType = TYPE_NEUTRAL;
			m_nCntAnimMove = 0;
		}
	}
	else if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_UP) == true ||
		pJoypad->GetPress(CInputJoypad::JOYKEY_UP, m_nPlayerNum) == true ||
		pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z <= -0.2f)
	{//��L�[����
		pos.x += GetSinVec(1.0f, MOVE_DEFAULT);
		pos.z += GetCosVec(1.0f, MOVE_DEFAULT);
		m_nCntAnimMove++;
	}
	else if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_DOWN) == true ||
		pJoypad->GetPress(CInputJoypad::JOYKEY_DOWN, m_nPlayerNum) == true ||
		pJoypad->GetStick(CInputJoypad::JOYKEY_LEFT_STICK, m_nPlayerNum).z >= 0.2f)
	{//���L�[����
		pos.x += GetSinVec(0.0f, MOVE_DEFAULT);
		pos.z += GetCosVec(0.0f, MOVE_DEFAULT);
		m_nCntAnimMove++;
	}
	else
	{
		//�e�̔��ˈʒu��ݒ�
		m_nCntAnimMove = 0;
		m_nTexRotType = TYPE_NEUTRAL;
	}

	return pos;
}

//-----------------------------------------------------------------------------
// ��ԊǗ�
//-----------------------------------------------------------------------------
//void CPlayer::State()
//{
//	// �Ίp��(�T�C�Y)�̎擾
//	D3DXVECTOR2 size = CObject2D::GetSize();
//	// �ʒu�̎擾
//	D3DXVECTOR3 pos = CObject2D::GetPosition();
//
//	switch (m_state)
//	{
//	case STATE_NORMAL:			//�v���C���[�̏�Ԃ��ʏ�̏ꍇ
//		break;
//	case STATE_ENTRY:			//�o���Ԃ̏ꍇ
//
//		m_nCntState++;
//
//		// �Ίp��(�T�C�Y)�̌��Z
//		size -= D3DXVECTOR2(4.46f, 1.98f);
//		// �Ίp���̎擾
//		CObject2D::SetSize(size);
//
//		if (pos.y <= CRenderer::SCREEN_HEIGHT / 2)
//		{
//			m_bControl = true;
//			m_state = STATE_RESPAWN;
//			m_nCntState = 150;
//		}
//		else if (pos.y <= CRenderer::SCREEN_HEIGHT / 1.5f)
//		{
//			pos += D3DXVECTOR3(-20.0f, -3.0f, 0.0f);
//		}
//		else
//		{
//			pos += D3DXVECTOR3(22.0f, -3.0f, 0.0f);
//		}
//
//		if (m_nCntState >= 96)
//		{
//			m_nTexRotType = TYPE_NEUTRAL;
//		}
//		else if (m_nCntState >= 72)
//		{
//			m_nTexRotType = TYPE_DOWN;
//		}
//		else if (m_nCntState >= 48)
//		{
//			m_nTexRotType = TYPE_NEUTRAL;
//		}
//		else if (m_nCntState >= 24)
//		{
//			m_nTexRotType = TYPE_UP;
//		}
//
//		CObject2D::SetPosition(pos);
//
//		break;
//	case STATE_RESPAWN:			//�v���C���[���_���[�W��Ԃ̏ꍇ
//								//��ԃJ�E���^�[�̌��Z
//		m_nCntState--;
//		//�E����o��������
//		if (m_nCntState >= 150)
//		{
//			// �ʒu�̉��Z
//			pos.x += 10.0f;
//			// �ʒu�̐ݒ�
//			CObject2D::SetPosition(pos);
//
//			// �J�E���^�[�����
//			if (m_nCntState == 150)
//			{
//				//����\�ɂ���
//				m_bControl = true;
//			}
//		}
//
//		//�_�ł�����
//		if (m_nCntState % 4 == 0)
//		{//���F
//			CObject2D::SetColor(D3DXCOLOR(1.0f, 1.0f, 0.0f, 1.0f));
//		}
//		else
//		{//�F�Ȃ�
//			CObject2D::SetColor(DEFAULT_COL);
//		}
//
//		//��Ԃ�ʏ�ɖ߂�
//		if (m_nCntState <= 0)
//		{
//			m_state = STATE_NORMAL;
//
//			CObject2D::SetColor(DEFAULT_COL);
//		}
//		break;
//	case STATE_DIE:			//�v���C���[�����S��Ԃ̏ꍇ
//							//��ԃJ�E���^�[�̌��Z
//		m_nCntState--;
//
//		if (m_nCntState <= 0)
//		{
//			m_state = STATE_RESPAWN;
//			m_nCntState = 180;
//		}
//		break;
//	}
//}

//-----------------------------------------------------------------------------
// �_���[�W����
//-----------------------------------------------------------------------------
//void CPlayer::Damage()
//{
//	if (m_BarrierLevel == CBarrier::LEVEL_NONE)
//	{
//		// ���S����
//		Die();
//
//		// �v���C���[���S��
//		CSound::Play(CSound::SOUND_LABEL_SE_DIE_PLAYER);
//	}
//	else
//	{
//		m_BarrierLevel = (CBarrier::LEVEL)(m_BarrierLevel - 1);
//
//		if (m_BarrierLevel == CBarrier::LEVEL_NONE)
//		{
//			if (m_pBarrier != nullptr)
//			{
//				m_pBarrier->Uninit();
//				m_pBarrier = nullptr;
//			}
//		}
//		else
//		{
//			m_pBarrier->SetBarrier(m_BarrierLevel);
//		}
//		m_state = STATE_RESPAWN;
//		m_nCntState = 150;
//	}
//}
//
////-----------------------------------------------------------------------------
//// ���S����
////-----------------------------------------------------------------------------
//void CPlayer::Die()
//{
//	// ���C�t���j������Ă��Ȃ����
//	if (m_pLife != nullptr)
//	{
//		// ���C�t�����炷
//		m_pLife->Add(-1);
//
//		// ���C�t��0����
//		if (m_pLife->GetLife() < 0)
//		{
//			// �X�R�A�̔j��
//			if (m_pScore != nullptr)
//			{
//				m_pScore->Uninit();
//				m_pScore = nullptr;
//			}
//
//			// ���C�t�̔j��
//			m_pLife->Uninit();
//			m_pLife = nullptr;
//
//			// �v���C���[�����S��Ԃɂ���
//			m_bDie = true;
//
//			// �T�C�Y�̎擾
//			D3DXVECTOR2 size = GetSize();
//			// �����̐���
//			CExplosion::Create(CObject2D::GetPosition(), D3DXVECTOR2(size.x, size.y * 2));
//
//			return;
//		}
//
//		// ����s�\�ɂ���
//		m_bControl = false;
//		// ���X�|�[����Ԃɂ���
//		m_state = STATE_DIE;
//		m_nCntState = 60;
//
//		// �ϐ��̃��Z�b�g
//		m_nTexRotType = TYPE_NEUTRAL;		//�A�j���[�V�����ԍ������Z�b�g����
//
//											// �o���A�̔j��
//		if (m_pBarrier != nullptr)
//		{
//			m_pBarrier->Uninit();
//			m_pBarrier = nullptr;
//		}
//
//		// �I�v�V�����̔j��
//		for (int nCnt = 0; nCnt < MAX_OPTION; nCnt++)
//		{
//			if (m_pOption[nCnt] != nullptr)
//			{
//				m_pOption[nCnt]->Uninit();
//				m_pOption[nCnt] = nullptr;
//			}
//		}
//
//		// �e������Ԃ�����������
//		m_OptionLevel = CBulletOption::LEVEL_NONE;
//		m_BarrierLevel = CBarrier::LEVEL_NONE;
//		m_BulletLevel = CPlayer::LEVEL_1;
//
//		// �T�C�Y�̎擾
//		D3DXVECTOR2 size = GetSize();
//		// �����̐���
//		CExplosion::Create(CObject2D::GetPosition(), D3DXVECTOR2(size.x, size.y * 2));
//
//		//�v���C���[�̈ʒu�����[�ɐݒ肷��
//		if (m_nPlayerNum == PLAYER_1)
//		{// 1P�̏ꍇ
//			CObject2D::SetPosition(D3DXVECTOR3(-SIZE_X, CRenderer::SCREEN_HEIGHT / 2, 0.0f));
//		}
//		else
//		{// 2P�̏ꍇ
//			CObject2D::SetPosition(D3DXVECTOR3(-SIZE_X, CRenderer::SCREEN_HEIGHT / 2 + SIZE_Y, 0.0f));
//		}
//
//	}
//}