//=============================================================================
//
// X�t�@�C������ [x_file.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _X_FILE_H_
#define _X_FILE_H_

//=============================================================================
// �C���N���[�h
//=============================================================================
#include "object2D.h"
#include <vector>
#include <string>
#include <map>

//using namespace std;

//=============================================================================
//	�}�N����`
//=============================================================================
#define MAX_TEXTURE		(30)		// 1��X�t�@�C���̍ő�e�N�X�`����

//=============================================================================
// �N���X��`
//=============================================================================
class CXFile
{
public:
	// X�t�@�C�����̍\����
	struct SModelInfo
	{
		LPD3DXMESH pMesh = nullptr;			//���b�V�����ւ̃|�C���^
		LPD3DXBUFFER pBuffMat = nullptr;	//�}�e���A�����ւ̃|�C���^
		DWORD nNumMat = 0;					//�}�e���A�����̐�
		LPDIRECT3DTEXTURE9 pTexture[MAX_TEXTURE] = { nullptr };			//�e�N�X�`���ւ̃|�C���^
	};

	//�����o�֐�
	CXFile();					//�R���X�g���N�^
	~CXFile();					//�f�X�g���N�^

	// ������
	static void Init();
	// �I��
	static void Uninit();
	// X�t�@�C���̃e�N�X�`���ǂݍ���
	static void LoadXFileTexture(SModelInfo& XFile);

	// X�t�@�C�����̎擾(���O�w��)
	static SModelInfo GetXFile(std::string texType) { return m_aXFile[m_texType[texType]]; }
	// X�t�@�C�����̎擾(�ԍ��w��)
	static SModelInfo GetXFile(int nCnt) { return m_aXFile[nCnt]; }
	// X�t�@�C���̃p�X�擾����
	static std::string GetPas(int nCntTex) { return m_aPas[nCntTex]; }
	// X�t�@�C���̑����擾����
	static int GetNum() { return m_nNumXFile; }

private:
	static std::vector<SModelInfo> m_aXFile;			// X�t�@�C�����
	static std::vector<std::string>	m_aPas;			// X�t�@�C���̃p�X
	static std::map<std::string, int> m_texType;	// X�t�@�C���̎��
	static int m_nNumXFile;							// X�t�@�C���̑���
};

#endif		// _X_FILE_H_
