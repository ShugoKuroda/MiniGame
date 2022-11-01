//=============================================================================
//
// �Q�[����ʏ��� [game.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _GAME_H_
#define _GAME_H_

#include "enemy_data.h"
#include "cloud_data.h"

#include "player.h"

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CScore;
class CMeshField;
class CEnemyBoss;
class CItem;
class CCamera;

//-----------------------------------------------------------------------------
// �Q�[����ʃN���X
//-----------------------------------------------------------------------------
class CGame
{
private:	//�萔
	static const int MAX_POS_CLOUD = 250;
	static const int MIN_POS_CLOUD = 180;

public:		//�����o�֐�
	CGame();
	~CGame();

	HRESULT Init();
	void Uninit();
	void Update();

	// �_�𐶐�
	void CreateCloud();
	// �����̖A�𐶐�
	void CreateBubble();
	// �G�𐶐�
	void CreateEnemy();
	// ���S�𐶐�
	void CreateLogo(int nCounter);

	// �_�̐�����Ԃ�ݒ�
	void SetCreateCloud(bool bCreate) { m_bCreateCloud = bCreate; }
	// �A�̐�����Ԃ�ݒ�
	void SetCreateBubble(bool bCreate) { m_bCreateBubble = bCreate; }
	// �{�X���S�t���O��ݒ�
	void SetDieBoss(bool bDie);
	// �Q�[���J�n�t���O���擾
	void SetStart(bool bStart) { m_bStart = bStart; }

	// �v���C���[���̎擾
	CPlayer *GetPlayer(int nNum) { return m_pPlayer[nNum]; }
	// �G�{�X���
	CEnemyBoss* GetEnemyBoss() { return m_pEnemyBoss; }
	//Item ���
	CItem* GetItem() { return m_pItem; }
	//�J�������
	CCamera* GetCamera() { return m_pCamera; }

	// �X�R�A���̎擾
	CMeshField *GetMeshField() { return m_pMeshField; }
	// �A�̐�����Ԃ��擾
	bool GetBubble() { return m_bCreateCloud; }
	// �{�X���S�t���O���擾
	bool GetDieBoss() { return m_bDieBoss; }
	// �Q�[���J�n�t���O���擾
	bool GetStart() { return m_bStart; }
	// �v���C���[�̃X�R�A�������L���O�ɐݒ�
	void SetPlayerScore();

private:
	// �e�N�X�`���ǂݍ���
	//static void LoadAll();
	// �e�N�X�`���j��
	//static void UnloadAll();

private:	//�����o�ϐ�
	// �v���C���[���
	CPlayer *m_pPlayer[CPlayer::PLAYER_MAX];
	CMeshField *m_pMeshField;
	CEnemyBoss* m_pEnemyBoss;
	CItem* m_pItem;
	CCamera* m_pCamera;

	// �_�𐶐����邩�ǂ���
	bool m_bCreateCloud;
	// �A�𐶐����邩�ǂ���
	bool m_bCreateBubble;
	// �{�X���|���ꂽ���ǂ���
	bool m_bDieBoss;

	// �_�̐������
	CloudInfo m_CloudInfo;
	// �_�����������܂ł̎���(����)
	int m_nRandBubble;
	// �_�����������܂ł̎��ԃJ�E���^�[
	int m_nCntBubble;

	// �Q�[�����n�܂������ǂ���
	bool m_bStart;

	// �G�̃Z�b�g���
	EnemySetInfo m_EnemyInfo;
};

#endif	//_GAME_H_
