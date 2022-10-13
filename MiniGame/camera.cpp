//===================================================================
//
//	�J��������[camera.cpp]
//	Author:SHUGO KURODA
//
//===================================================================
#include "manager.h"
#include "renderer.h"

#include "input_keyboard.h"
#include "input_mouse.h"
#include "camera.h"

//======================================================
//	�R���X�g���N�^
//======================================================
CCamera::CCamera() :m_posV(0.0f, 0.0f, 0.0f), m_posR(0.0f, 0.0f, 0.0f), m_vecU(0.0f, 0.0f, 0.0f), m_rot(0.0f, 0.0f, 0.0f),
					m_posVDest(0.0f, 0.0f, 0.0f), m_posRDest(0.0f, 0.0f, 0.0f), m_fDistance(0.0f)
{
}

//======================================================
//	�f�X�g���N�^
//======================================================
CCamera::~CCamera()
{
}

//======================================================
//	��������
//	const D3DXVECTOR3& posV �� �������鎋�_�ʒu
//	const D3DXVECTOR3& posR �� �������钍���_�ʒu
//	const D3DXVECTOR3& rot �� �������鎋�_�p�x
//======================================================
CCamera *CCamera::Create(const D3DXVECTOR3& posV, const D3DXVECTOR3& posR, const D3DXVECTOR3& rot)
{
	//�C���X�^���X����
	CCamera *pCamera = new CCamera;

	// ���_�ʒu�ݒ�
	pCamera->m_posV = posV;

	// �����_�ʒu�ݒ�
	pCamera->m_posR = posR;

	// ���_�p�x�ݒ�
	pCamera->m_rot = rot;

	// ������
	pCamera->Init();

	return pCamera;
}

//======================================================
//	����������
//======================================================
HRESULT CCamera::Init()
{
	//������x�N�g���̐ݒ�
	m_vecU = D3DXVECTOR3(0.0f, 1.0f, 0.0f);			//�Œ�

	//�����_�܂ł̋���
	D3DXVECTOR3 Distance = D3DXVECTOR3((m_posV.x + m_posR.x), (m_posV.y + m_posR.y), (m_posV.z + m_posR.z));
	m_rot = D3DXVECTOR3(atan2f(Distance.z, Distance.y), 0.0f, 0.0f);

	//���_���璍���_�܂ł̋���������������
	m_fDistance = sqrtf(Distance.x * Distance.x + Distance.z * Distance.z);
	m_fDistance = sqrtf(Distance.y * Distance.y + m_fDistance * m_fDistance);

	return S_OK;
}

//======================================================
//	�I������
//======================================================
void CCamera::Uninit()
{
}

//======================================================
//	�X�V����
//======================================================
void CCamera::Update()
{
	//�}�E�X�̈ړ��ʏ��̎擾
	CInputKeyboard *pKeyboard = CManager::GetInputKeyboard();

	//�����_�̐���
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_E) == true)
	{//�E��]
		m_rot.y += CAMERA_ROT_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_Q) == true)
	{//����]
		m_rot.y -= CAMERA_ROT_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_Y) == true)
	{//���]
		m_rot.x -= CAMERA_ROT_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_H) == true)
	{//����]
		m_rot.x += CAMERA_ROT_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}

	//���_�̐���
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_Z) == true)
	{//�E��]
		m_rot.y += CAMERA_ROT_MOVE;

		m_posV.x = m_posR.x + sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posV.z = m_posR.z + sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posV.y = m_posR.y + cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_C) == true)
	{//����]
		m_rot.y -= CAMERA_ROT_MOVE;

		m_posV.x = m_posR.x + sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posV.z = m_posR.z + sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posV.y = m_posR.y + cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_T) == true)
	{//���]
		m_rot.x += CAMERA_ROT_MOVE;

		m_posV.x = m_posR.x + sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posV.z = m_posR.z + sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posV.y = m_posR.y + cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_G) == true)
	{//����]
		m_rot.x -= CAMERA_ROT_MOVE;

		m_posV.x = m_posR.x + sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posV.z = m_posR.z + sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posV.y = m_posR.y + cosf(m_rot.x) * m_fDistance;
	}

	////���_�̈ړ�
	//if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_UP) == true)
	//{//�O�ړ�
	//	m_posV.x += sinf(m_rot.y) * CAMERA_POS_MOVE;
	//	m_posV.z += cosf(m_rot.y) * CAMERA_POS_MOVE;

	//	m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
	//	m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
	//	m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	//}
	//if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_DOWN) == true)
	//{//��ړ�
	//	m_posV.x -= sinf(m_rot.y) * CAMERA_POS_MOVE;
	//	m_posV.z -= cosf(m_rot.y) * CAMERA_POS_MOVE;

	//	m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
	//	m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
	//	m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	//}
	//if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_RIGHT) == true)
	//{//�E�ړ�
	//	m_posV.x += sinf(m_rot.y + (D3DX_PI / 2)) * CAMERA_POS_MOVE;
	//	m_posV.z += cosf(m_rot.y + (D3DX_PI / 2)) * CAMERA_POS_MOVE;

	//	m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
	//	m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
	//	m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	//}
	//if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_LEFT) == true)
	//{//���ړ�
	//	m_posV.x += sinf(m_rot.y - (D3DX_PI / 2)) * CAMERA_POS_MOVE;
	//	m_posV.z += cosf(m_rot.y - (D3DX_PI / 2)) * CAMERA_POS_MOVE;

	//	m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
	//	m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
	//	m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	//}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_R) == true)
	{//��ړ�
		m_posV.y -= sinf(m_rot.x) * CAMERA_POS_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}
	if (pKeyboard->GetPress(CInputKeyboard::KEYINFO_F) == true)
	{//���ړ�
		m_posV.y += sinf(m_rot.x) * CAMERA_POS_MOVE;

		m_posR.x = m_posV.x - sinf(m_rot.x) * sinf(m_rot.y) * m_fDistance;
		m_posR.z = m_posV.z - sinf(m_rot.x) * cosf(m_rot.y) * m_fDistance;
		m_posR.y = m_posV.y - cosf(m_rot.x) * m_fDistance;
	}

	//if (m_posV.y <= D3DX_PI / 2)
	//{//�n�ʂ̃J���������蔻��
	//	m_posV.y = D3DX_PI / 2;
	//}

	//�p�x�̐��K��
	if (m_rot.y > D3DX_PI)
	{
		m_rot.y -= D3DX_PI * 2;
	}
	if (m_rot.y < -D3DX_PI)
	{
		m_rot.y += D3DX_PI * 2;
	}
}

//======================================================
//	�ݒ菈��
//======================================================
void CCamera::Draw()
{
	//�f�o�C�X�̎擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	//�r���[�}�g���b�N�X�̏�����
	D3DXMatrixIdentity(&m_mtxView);

	//�r���[�}�g���b�N�X�̍쐬
	D3DXMatrixLookAtLH(&m_mtxView, &m_posV, &m_posR, &m_vecU);

	//�r���[�}�g���b�N�X�̐ݒ�
	pDevice->SetTransform(D3DTS_VIEW, &m_mtxView);

	//�v���W�F�N�V�����}�g���b�N�X�̍쐬
	D3DXMatrixPerspectiveFovLH(&m_mtxProjection,
		D3DXToRadian(45.0f),
		(float)CRenderer::SCREEN_WIDTH / (float)CRenderer::SCREEN_HEIGHT,
		10.0f,
		6400.0f);			//���E�̐ݒ�

	//�v���W�F�N�V�����}�g���b�N�X�̐ݒ�
	pDevice->SetTransform(D3DTS_PROJECTION, &m_mtxProjection);
}