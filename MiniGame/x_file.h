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
#include "x_file_data.h"
#include <vector>
#include <string>
#include <map>

//using namespace std;

//=============================================================================
// �N���X��`
//=============================================================================
class CXFile
{
public:
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
	static std::vector<SModelInfo> m_aXFile;		// X�t�@�C�����
	static std::vector<std::string>	m_aPas;			// X�t�@�C���̃p�X
	static std::map<std::string, int> m_texType;	// X�t�@�C���̎��
	static int m_nNumXFile;							// X�t�@�C���̑���
};

#endif		// _X_FILE_H_
