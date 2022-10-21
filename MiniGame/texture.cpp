//=============================================================================
//
// �e�N�X�`���}�l�[�W���[ [texture.cpp]
// Author : SHUGO KURODA
//
//=============================================================================
#include <stdio.h>

#include "texture.h"
#include "renderer.h"
#include "manager.h"

//================================================
// �}�N����`
//================================================
#define MAX_CHAR		(128)		// �ő�ǂݎ�蕶����

//================================================
// �ÓI�����o�ϐ��錾
//================================================
std::vector<LPDIRECT3DTEXTURE9> CTexture::m_apTexture = {};
std::vector<std::string> CTexture::m_aPas;
std::map<std::string, int> CTexture::m_texType;
int CTexture::m_nNumTex = 0;

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CTexture::CTexture()
{
	// �ϐ��̏�����
	m_texType.clear();
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CTexture::~CTexture()
{
}

//=============================================================================
// �e�N�X�`���̐���
//=============================================================================
void CTexture::Init()
{
	//�t�@�C���ǂݍ���
	FILE *pFile = fopen("data/TEXT/texPas.txt", "r");

	if (pFile != NULL)
	{
		char cString[MAX_CHAR];

		//��s���ۑ�
		while (fgets(cString, MAX_CHAR, pFile) != NULL)
		{
			//�������ۑ�
			fscanf(pFile, "%s", cString);
			//������̒���TEX_NUM����������
			if (strncmp("TEX_NUM", cString, 8) == 0)
			{
				//�e�N�X�`���ő吔�ǂݍ���
				fscanf(pFile, "%*s%d", &m_nNumTex);

				int nNum = 0;
				//��s���ۑ�
				while (fgets(cString, MAX_CHAR, pFile) != NULL)
				{
					//�������ۑ�
					fscanf(pFile, "%s", cString);
					//������̒���PAS����������
					if (strncmp("PAS", cString, 4) == 0)
					{
						//�p�X�̎擾
						fscanf(pFile, "%*s%s", &cString[0]);
						m_aPas.push_back(&cString[0]);

						//���O�̎擾
						fscanf(pFile, "%*s%*s%s", cString);
						//���O�Ɛ��̊��蓖��
						m_texType[cString] = nNum;
						nNum++;
					}
				}
			}
			else if (strncmp("END_SCRIPT", cString, 11) == 0)
			{//�e�L�X�g�t�@�C����ǂݐ؂�����
				break;
			}
		}
	}
	else
	{
		printf("�e�N�X�`���t�@�C�����J���܂���ł���\n");
	}

	// �t�@�C�������
	fclose(pFile);

	//�f�o�C�X���擾����
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	for (int nCntTex = 0; nCntTex < m_nNumTex; nCntTex++)
	{
		// �e�N�X�`���ۑ��p
		LPDIRECT3DTEXTURE9 pTexBuffer = nullptr;

		//�e�N�X�`���̐���
		D3DXCreateTextureFromFile(pDevice, m_aPas[nCntTex].c_str(), &pTexBuffer);

		// �e�N�X�`���̊��蓖��
		m_apTexture.push_back(pTexBuffer);
	}
}

//=============================================================================
// �I��
//=============================================================================
void CTexture::Uninit()
{
	for (int nCntTexture = 0; nCntTexture < m_nNumTex; nCntTexture++)
	{
		//�e�N�X�`���̔j��
		if (m_apTexture[nCntTexture] != NULL)
		{
			m_apTexture[nCntTexture]->Release();
			m_apTexture[nCntTexture] = NULL;
		}
	}
}
