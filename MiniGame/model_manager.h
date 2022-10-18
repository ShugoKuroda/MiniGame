//===================================================================
//
//	���f���̃}�l�[�W���[����[model_manager.h]
//	Author : SHUGO KURODA
//
//===================================================================
#ifndef _MODEL_MANAGER_H_
#define _MODEL_MANAGER_H_

//*******************************************************************
//	���f���̃}�l�[�W���[�N���X�̒�`
//*******************************************************************
class CModelManager
{
public:
	//�����o�֐�
	CModelManager();
	~CModelManager();

	static CModelManager *Create();		//�C���X�^���X��������

	HRESULT Init();
	void Uninit();
	void Update();
	void Draw();

private:
	int m_nCounter;		// �J�E���^�[
	int m_nNumCreate;	// �I�u�W�F�N�g�����܂ł̐��l
};

#endif	// _MODEL_MANAGER_H_
