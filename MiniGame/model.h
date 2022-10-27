//===================================================================
//
//	���f�������̃w�b�_�[[model.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _MODEL_H_			//���̃}�N����`������Ȃ�������
#define _MODEL_H_			//2�d�C���N���[�h�h�~�̃}�N����`

#include "object.h"
#include "x_file.h"

//=============================================================================
// �N���X��`
//=============================================================================
class CModel : public CObject
{
public:
	//�����o�֐�
	CModel();					//�R���X�g���N�^
	~CModel();					//�f�X�g���N�^

	// ����
	static CModel* Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);

	// ������
	HRESULT Init() override;
	// �I��
	void Uninit() override;
	// �X�V
	void Update() override;
	// �`��
	void Draw() override;
	// �����蔻��
	//bool Collision();

	// �ʒu�ݒ�
	void SetPosition(D3DXVECTOR3 pos) { m_pos = pos; }
	// �p�x�ݒ�
	void SetRotation(D3DXVECTOR3 rot) { m_rot = rot; }
	// �ʒu�擾
	D3DXVECTOR3 GetPosition() { return m_pos; }
	// �ʒu�擾
	D3DXVECTOR3 *GetpPosition() { return &m_pos; }
	// �p�x�擾
	D3DXVECTOR3 GetRotation() { return m_rot; }
	// �ő�T�C�Y�擾
	D3DXVECTOR3 GetSizeMax() { return m_vtxMax; }
	// �ŏ��T�C�Y�擾
	D3DXVECTOR3 GetSizeMin() { return m_vtxMin; }
	// �e�N�X�`���̐ݒ�
	void BindXFile(CXFile::SModelInfo XFile) { m_aXFile = XFile; }

private:
	//X�t�@�C�����
	CXFile::SModelInfo m_aXFile;	
	//�ʒu
	D3DXVECTOR3 m_pos;
	//�O��̈ʒu
	D3DXVECTOR3 m_posOld;
	//��]
	D3DXVECTOR3 m_rot;
	//���f���̍ő�T�C�Y,�ŏ��T�C�Y
	D3DXVECTOR3 m_vtxMax, m_vtxMin;
	//���[���h�}�g���b�N�X
	D3DXMATRIX m_mtxWorld;
	//�e�̔ԍ�
	int m_nIdxShadow;
};

#endif
