//-----------------------------------------------------------------------------------------------
//
//	���f���̃}�l�[�W���[����[model_obstacle.cpp]
//	Author : SHUGO KURODA
//
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// �C���N���[�h�t�@�C��
//-----------------------------------------------------------------------------------------------
#include "manager.h"
#include "renderer.h"

#include "library.h"

// �ǉ�
#include "x_file.h"
#include "model_manager.h"
#include "game.h"
#include "camera.h"
#include "model_obstacle.h"

//-----------------------------------------------------------------------------------------------
// using�錾
//-----------------------------------------------------------------------------------------------
using namespace LibrarySpace;

//-----------------------------------------------------------------------------------------------
// �萔�錾
//-----------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------
// �R���X�g���N�^
//-----------------------------------------------------------------------------------------------
CModelManager::CModelManager() :m_nCounter(0), m_nCounterCreate(0), m_nNumCreate(0)
{
}

//-----------------------------------------------------------------------------------------------
// �f�X�g���N�^
//-----------------------------------------------------------------------------------------------
CModelManager::~CModelManager()
{
}

//-----------------------------------------------------------------------------------------------
// ����
//-----------------------------------------------------------------------------------------------
CModelManager *CModelManager::Create()
{
	// �|�C���^�N���X��錾
	CModelManager* pObstacle = new CModelManager;

	if (pObstacle != nullptr)
	{
		// ������
		pObstacle->Init();
	}

	return pObstacle;
}

//-----------------------------------------------------------------------------------------------
// ������
//-----------------------------------------------------------------------------------------------
HRESULT CModelManager::Init()
{
	// ���f�������܂ł̐��l�擾
	m_nCounterCreate = GetRandNum(120, 60);

	return S_OK;
}

//-----------------------------------------------------------------------------------------------
// �I��
//-----------------------------------------------------------------------------------------------
void CModelManager::Uninit()
{
	// �j��
	Release();
}

//-----------------------------------------------------------------------------------------------
// �X�V
//-----------------------------------------------------------------------------------------------
void CModelManager::Update()
{
	// �Q�[�����J�n���Ă����
	if (CManager::GetManager()->GetGame()->GetStart() == true)
	{
		// �J�E���^�[���Z
		m_nCounter++;

		// �J�E���^�[�������܂ł̐��l�ȏ�ɂȂ�����
		if (m_nCounterCreate <= m_nCounter)
		{
			// �J�E���^�[���Z�b�g
			m_nCounter = 0;
			// ���f�������܂ł̐��l�擾
			m_nCounterCreate = GetRandNum(240, 90);
			// ��������I�u�W�F�N�g�����擾
			m_nNumCreate = GetRandNum(3, 1);

			// �J�������̎擾
			D3DXVECTOR3 posCamera = CManager::GetManager()->GetGame()->GetCamera()->GetPosV();

			//�؂𐶐�
			CObstacle::Create(D3DXVECTOR3(-200.0f, 0.0f, posCamera.z+100.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_1");
			CObstacle::Create(D3DXVECTOR3(-200.0f, 0.0f, posCamera.z - 200.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_2");
			CObstacle::Create(D3DXVECTOR3(-200.0f, 0.0f, posCamera.z - 450.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_3");
			CObstacle::Create(D3DXVECTOR3(-200.0f, 0.0f, posCamera.z - 600.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_4");

			CObstacle::Create(D3DXVECTOR3(-270.0f, 0.0f, posCamera.z + 100.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_1");
			CObstacle::Create(D3DXVECTOR3(-270.0f, 0.0f, posCamera.z - 200.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_2");
			CObstacle::Create(D3DXVECTOR3(-270.0f, 0.0f, posCamera.z - 450.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_3");
			CObstacle::Create(D3DXVECTOR3(-270.0f, 0.0f, posCamera.z - 600.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_4");

			CObstacle::Create(D3DXVECTOR3(200.0f, 0.0f, posCamera.z + 100.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_1");
			CObstacle::Create(D3DXVECTOR3(200.0f, 0.0f, posCamera.z - 200.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_2");
			CObstacle::Create(D3DXVECTOR3(200.0f, 0.0f, posCamera.z - 450.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_3");
			CObstacle::Create(D3DXVECTOR3(200.0f, 0.0f, posCamera.z - 600.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_4");

			CObstacle::Create(D3DXVECTOR3(270.0f, 0.0f, posCamera.z + 100.0f), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_1");
			CObstacle::Create(D3DXVECTOR3(270.0f, 0.0f, posCamera.z - 200.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_2");
			CObstacle::Create(D3DXVECTOR3(270.0f, 0.0f, posCamera.z - 450.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_3");
			CObstacle::Create(D3DXVECTOR3(270.0f, 0.0f, posCamera.z - 600.0f*m_nNumCreate), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_WOOD_4");


			for (int nCntModel = 0; nCntModel < m_nNumCreate; nCntModel++)
			{
				//2��ؐ���
				float fRand = (float)GetRandNum(80, -80);

				// ��Q������
				switch (GetRandNum(1, 0))
				{
				case 0:
					CObstacle::Create(D3DXVECTOR3(fRand, 0.0f, posCamera.z), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_ROCKICE_BIG");
					break;

				case 1:
					CObstacle::Create(D3DXVECTOR3(fRand, -0.0f, posCamera.z), D3DXVECTOR3(0.0f, 0.0f, 0.0f), "XFILE_TYPE_ROCKICE_BIG");
					break;

				default:
					break;
				}
			}
		}
	}
}

//-----------------------------------------------------------------------------------------------
// �`��
//-----------------------------------------------------------------------------------------------
void CModelManager::Draw()
{
}
