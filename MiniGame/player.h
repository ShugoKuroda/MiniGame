//===================================================================
//
//	�v���C���[�̏���[player.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _PLAYER_H_
#define _PLAYER_H_

#include "object2D.h"
#include "model.h"

//*******************************************************************
//	�O���錾
//*******************************************************************
class CLife;
class CScore;

//*******************************************************************
//	�v���C���[�N���X�̒�`
//*******************************************************************
class CPlayer : public CModel
{
private:
	//�v���C���[�̃T�C�Y(X)
	static const float SIZE_X;
	// �v���C���[�̃T�C�Y(Y)
	static const float SIZE_Y;
	// �o�ꎞ�̃T�C�Y(X)
	static const float ENTRY_SIZE_X;
	// �o�ꎞ�̃T�C�Y(Y)
	static const float ENTRY_SIZE_Y;
	// �v���C���[�̊�{�ړ���
	static const float MOVE_DEFAULT;
	// �A�j���[�V�����Ԋu
	static const int ANIM_INTERVAL;
	// �A�j���[�V�����ő吔
	static const int MAX_ANIM;
	// U���W�̍ő啪����
	static const int DIVISION_U;
	// V���W�̍ő啪����
	static const int DIVISION_V;
	// �v���C���[�̃f�t�H���g�J���[
	static const D3DXCOLOR DEFAULT_COL;
	// �ő�I�v�V������
	static const int MAX_OPTION = 4;
	// �f�t�H���g�c�@��
	static const int DEFAULT_LIFE;

public:
	// �v���C���[
	enum PLAYER
	{
		PLAYER_1 = 0,	//1P
		PLAYER_2,		//2P
		PLAYER_MAX
	};

	//���
	enum STATE
	{
		STATE_NORMAL = 0,	//�ʏ�
		STATE_ENTRY,		//�o��
		STATE_RESPAWN,		//���G(���X�|�[��)���
		STATE_DIE,			//���S���
		STATE_INAVALANCHE,	//����Ɋ������܂�Ă�����
		STATE_MAX
	};

	//�A�j���[�V�����ԍ�
	enum ANIMTYPE
	{
		TYPE_NEUTRAL = 0,
		TYPE_UP,
		TYPE_DOWN,
		TYPE_MAX
	};

	CPlayer();
	~CPlayer() override;

	//�����o�֐�
	static CPlayer *Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);	//�C���X�^���X��������

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;
	void Move();
	void Jump();

	STATE GetState() { return m_state; }
	// �X�R�A���̎擾
	CScore *GetScore() { return m_pScore; }
	// ���S��Ԃ̎擾
	bool GetDie() { return m_bDie; }
	D3DXVECTOR3 GetPositionOld() { return m_posOld; }
	void SetMove(D3DXVECTOR3 move) { m_move = move; }
	void SetMoveX(float fmove) { m_move.x = fmove; }
	void SetMoveZ(float fmove) { m_move.z = fmove; }
	void SetMoveY(float fmove) { m_move.y = fmove; }
	void SetBadState(bool inState) { m_bInAvalanche = inState; }
	void SetJumping(bool bJumping) { m_bIsJumping = bJumping; }

	void State();
	void Damage();
	void Die();

private:	//�����o�ϐ�
	// �e�N�X�`���̃|�C���^
	static LPDIRECT3DTEXTURE9 m_apTexture[PLAYER_MAX];

	// ���C�t�̃|�C���^
	CLife *m_pLife;
	// �X�R�A�̃|�C���^
	CScore *m_pScore;

	//�ړ���
	D3DXVECTOR3 m_move;
	//�O��̈ʒu
	D3DXVECTOR3 m_posOld;
	//���
	STATE m_state;
	//��ԃJ�E���^�[
	int m_nCntState;
	//�U���J�E���^�[
	int m_nCntAttack;
	//�A�j���[�V�����J�E���^�[
	int m_nCntAnim;
	//�A�j���[�V�����̃p�^�[��No.
	int m_nPatternAnim;
	//�A�j���[�V�����J�ڂ܂ł̍d���J�E���^�[
	int m_nCntAnimMove;
	//���݂̃A�j���[�V����V�ԍ�
	int m_nPatterAnimV;
	//�e�N�X�`���A�j���[�V�����̎��
	ANIMTYPE m_nTexRotType;
	//�v���C���[�̔ԍ�
	int m_nPlayerNum;
	//�e�̔��ˈʒu
	D3DXVECTOR2 posBullet;
	// �W�����v���Ă��邩�ǂ���
	bool m_bIsJumping;
	//�v���C���[������ł��邩�ǂ���
	bool m_bControl;
	//�C�ɓ��������ǂ���
	bool m_bInSea;
	//�v���C���[������Ɋ������܂�Ă��邩�ǂ���
	bool m_bInAvalanche;
	//����𔲂��邽�߂̃L�[(�{�^��)���͉�
	int m_nPushButton;

	// ���S�������ǂ���
	bool m_bDie;
};

#endif //_PLAYER_H_