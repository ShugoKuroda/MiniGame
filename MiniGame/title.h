//=============================================================================
//
// �^�C�g����ʏ��� [title.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _TITLE_H_
#define _TITLE_H_

#include "base.h"
#include "cloud_data.h"

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CObject2D;
class CPlayer;
class CEnemyBoss;
class CItem;
class CCamera;

//-----------------------------------------------------------------------------
// �x�[�X�N���X(�h���N���X)
//-----------------------------------------------------------------------------
class CTitle : public CBase
{
public:
	enum TITLE_OBJ
	{//�w�i�̎��
		BG_SKY = 0,		// �w�i�̋�
		LOGO_PLAYER,	// �v���C���[���S
		LOGO_TITLE,		// �^�C�g�����S
		LOGO_PRESS,		// PRESS���S
		BG_FADE,		// ��ʂ𔖈Â�����p
		LOGO_TUTORIAL,	// �`���[�g���A��
		LOGO_SHADOW,	// �v���C���[���S(��)
		OBJ_MAX			// �w�i�̍ő吔
	};

public:
	CTitle();
	~CTitle() override;

	//�����o�֐�
	HRESULT Init() override;
	void Uninit() override;
	void Update() override;

	// �v���C���[���
	static CPlayer* GetPlayer() { return m_pPlayer; }
	// �G�{�X���
	static CEnemyBoss* GetEnemyBoss() { return m_pEnemyBoss; }
	//Item ���
	static CItem* GetItem() { return m_pItem; }
	//�J�������
	static CCamera* GetCamera() { return m_pCamera; }

private:
	//�����o�ϐ�
	static LPDIRECT3DTEXTURE9 m_apTexture[OBJ_MAX];		//�e�N�X�`���̃|�C���^
	static CPlayer* m_pPlayer;
	static CEnemyBoss* m_pEnemyBoss;
	static CItem* m_pItem;
	static CCamera* m_pCamera;
	CObject2D *m_apObject2D[OBJ_MAX - 1];
	bool m_bTitleDraw;
	bool m_bPush;
	bool m_bEntry[2];
	bool m_bTutorial;
	int m_nCounter;
	D3DXVECTOR3 m_move;		// �ړ���
};

#endif		// _TITLE_H_
