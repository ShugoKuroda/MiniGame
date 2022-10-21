//===================================================================
//
//	プレイヤーの処理[player.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _PLAYER_H_
#define _PLAYER_H_

#include "object2D.h"
#include "model.h"

//*******************************************************************
//	前方宣言
//*******************************************************************
class CLife;
class CScore;

//*******************************************************************
//	プレイヤークラスの定義
//*******************************************************************
class CPlayer : public CModel
{
private:
	//プレイヤーのサイズ(X)
	static const float SIZE_X;
	// プレイヤーのサイズ(Y)
	static const float SIZE_Y;
	// 登場時のサイズ(X)
	static const float ENTRY_SIZE_X;
	// 登場時のサイズ(Y)
	static const float ENTRY_SIZE_Y;
	// プレイヤーの基本移動量
	static const float MOVE_DEFAULT;
	// アニメーション間隔
	static const int ANIM_INTERVAL;
	// アニメーション最大数
	static const int MAX_ANIM;
	// U座標の最大分割数
	static const int DIVISION_U;
	// V座標の最大分割数
	static const int DIVISION_V;
	// プレイヤーのデフォルトカラー
	static const D3DXCOLOR DEFAULT_COL;
	// 最大オプション数
	static const int MAX_OPTION = 4;
	// デフォルト残機数
	static const int DEFAULT_LIFE;

public:
	// プレイヤー
	enum PLAYER
	{
		PLAYER_1 = 0,	//1P
		PLAYER_2,		//2P
		PLAYER_MAX
	};

	//状態
	enum STATE
	{
		STATE_NORMAL = 0,	//通常
		STATE_ENTRY,		//登場
		STATE_RESPAWN,		//無敵(リスポーン)状態
		STATE_DIE,			//死亡状態
		STATE_INAVALANCHE,	//雪崩に巻き込まれている状態
		STATE_MAX
	};

	//アニメーション番号
	enum ANIMTYPE
	{
		TYPE_NEUTRAL = 0,
		TYPE_UP,
		TYPE_DOWN,
		TYPE_MAX
	};

	CPlayer();
	~CPlayer() override;

	//メンバ関数
	static CPlayer *Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);	//インスタンス生成処理

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;
	void Move();
	void Jump();

	STATE GetState() { return m_state; }
	// スコア情報の取得
	CScore *GetScore() { return m_pScore; }
	// 死亡状態の取得
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

private:	//メンバ変数
	// テクスチャのポインタ
	static LPDIRECT3DTEXTURE9 m_apTexture[PLAYER_MAX];

	// ライフのポインタ
	CLife *m_pLife;
	// スコアのポインタ
	CScore *m_pScore;

	//移動量
	D3DXVECTOR3 m_move;
	//前回の位置
	D3DXVECTOR3 m_posOld;
	//状態
	STATE m_state;
	//状態カウンター
	int m_nCntState;
	//攻撃カウンター
	int m_nCntAttack;
	//アニメーションカウンター
	int m_nCntAnim;
	//アニメーションのパターンNo.
	int m_nPatternAnim;
	//アニメーション遷移までの硬直カウンター
	int m_nCntAnimMove;
	//現在のアニメーションV番号
	int m_nPatterAnimV;
	//テクスチャアニメーションの種類
	ANIMTYPE m_nTexRotType;
	//プレイヤーの番号
	int m_nPlayerNum;
	//弾の発射位置
	D3DXVECTOR2 posBullet;
	// ジャンプしているかどうか
	bool m_bIsJumping;
	//プレイヤーが操作できるかどうか
	bool m_bControl;
	//海に入ったかどうか
	bool m_bInSea;
	//プレイヤーが雪崩に巻き込まれているかどうか
	bool m_bInAvalanche;
	//雪崩を抜けるためのキー(ボタン)入力回数
	int m_nPushButton;

	// 死亡したかどうか
	bool m_bDie;
};

#endif //_PLAYER_H_