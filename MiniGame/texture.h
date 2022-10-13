//=============================================================================
//
// �e�N�X�`������ [texture.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _TEXTURE_H_
#define _TEXTURE_H_

//=============================================================================
// �C���N���[�h
//=============================================================================
#include "object2D.h"
#include <vector>
#include <string>
#include <map>

//using namespace std;

//=============================================================================
// �N���X��`
//=============================================================================
class CTexture
{
public:
	//�����o�֐�
	CTexture();						//�R���X�g���N�^
	~CTexture();					//�f�X�g���N�^

	// ������
	static void Init();
	// �I��
	static void Uninit();
	// �e�N�X�`���̊��蓖��(���O�w��)
	static LPDIRECT3DTEXTURE9 GetTexture(std::string texType) { return m_apTexture[m_texType[texType]]; }
	// �e�N�X�`���̊��蓖��(�ԍ��w��)
	static LPDIRECT3DTEXTURE9 GetTexture(int nCnt) { return m_apTexture[nCnt]; }
	// �e�N�X�`���̃p�X�擾����
	static std::string GetPas(int nCntTex) { return m_aPas[nCntTex]; }
	// �e�N�X�`���̑����擾����
	static int GetNum() { return m_nNumTex; }

private:
	static std::vector<LPDIRECT3DTEXTURE9> m_apTexture;		//�e�N�X�`��
	static std::vector<std::string>	m_aPas;					//�e�N�X�`���̃p�X
	static std::map<std::string, int> m_texType;			//�e�N�X�`���̎��
	static int m_nNumTex;									//�e�N�X�`���̑���
};

#endif
