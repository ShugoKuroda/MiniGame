////=============================================================================
////
//// X�t�@�C�����[�V���� [x_file_motion.h]
//// Author : SHUGO KURODA
////
////=============================================================================
//#ifndef _X_FILE_MOTION_H_
//#define _X_FILE_MOTION_H_
//
//#include "x_file_data.h"
//#include "motion_data.h"
//#include <vector>
//#include <string>
//#include <map>
//
////using namespace std;
//
////=============================================================================
//// �N���X��`
////=============================================================================
//class CXFileMotion
//{
//	// �����o�֐�
//public:
//	CXFileMotion();					//�R���X�g���N�^
//	~CXFileMotion();				//�f�X�g���N�^
//
//	// ������
//	HRESULT Init(HWND hWnd);
//	// �I��
//	void Uninit();
//	// ���[�V�������̓ǂݍ���
//	bool LoadMotion(char *pas);
//	// ���f���p�[�c�̓ǂݍ���
//	void LoadParts(char *pas);
//
//private:
//	// �e�N�X�`���̓ǂݍ���
//	void LoadXFileTexture(SModelInfo& XFile);
//
//	// �����o�ϐ�
//private:
//	std::vector<ModelMotion> m_motion;		//���[�V�������
//	std::vector<std::string> m_aPas;		// X�t�@�C���̃p�X
//	std::map<std::string, int> m_texType;	// X�t�@�C���̎��
//	int m_nNumXFile;						// X�t�@�C���̑���
//};
//
//#endif	//_X_FILE_MOTION_H_
