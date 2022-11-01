//=============================================================================
//
// ゲーム画面処理 [game.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _GAME_H_
#define _GAME_H_

#include "enemy_data.h"
#include "cloud_data.h"

#include "player.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CScore;
class CMeshField;
class CEnemyBoss;
class CItem;
class CCamera;

//-----------------------------------------------------------------------------
// ゲーム画面クラス
//-----------------------------------------------------------------------------
class CGame
{
private:	//定数
	static const int MAX_POS_CLOUD = 250;
	static const int MIN_POS_CLOUD = 180;

public:		//メンバ関数
	CGame();
	~CGame();

	HRESULT Init();
	void Uninit();
	void Update();

	// 雲を生成
	void CreateCloud();
	// 水中の泡を生成
	void CreateBubble();
	// 敵を生成
	void CreateEnemy();
	// ロゴを生成
	void CreateLogo(int nCounter);

	// 雲の生成状態を設定
	void SetCreateCloud(bool bCreate) { m_bCreateCloud = bCreate; }
	// 泡の生成状態を設定
	void SetCreateBubble(bool bCreate) { m_bCreateBubble = bCreate; }
	// ボス死亡フラグを設定
	void SetDieBoss(bool bDie);
	// ゲーム開始フラグを取得
	void SetStart(bool bStart) { m_bStart = bStart; }

	// プレイヤー情報の取得
	CPlayer *GetPlayer(int nNum) { return m_pPlayer[nNum]; }
	// 敵ボス情報
	CEnemyBoss* GetEnemyBoss() { return m_pEnemyBoss; }
	//Item 情報
	CItem* GetItem() { return m_pItem; }
	//カメラ情報
	CCamera* GetCamera() { return m_pCamera; }

	// スコア情報の取得
	CMeshField *GetMeshField() { return m_pMeshField; }
	// 泡の生成状態を取得
	bool GetBubble() { return m_bCreateCloud; }
	// ボス死亡フラグを取得
	bool GetDieBoss() { return m_bDieBoss; }
	// ゲーム開始フラグを取得
	bool GetStart() { return m_bStart; }
	// プレイヤーのスコアをランキングに設定
	void SetPlayerScore();

private:
	// テクスチャ読み込み
	//static void LoadAll();
	// テクスチャ破棄
	//static void UnloadAll();

private:	//メンバ変数
	// プレイヤー情報
	CPlayer *m_pPlayer[CPlayer::PLAYER_MAX];
	CMeshField *m_pMeshField;
	CEnemyBoss* m_pEnemyBoss;
	CItem* m_pItem;
	CCamera* m_pCamera;

	// 雲を生成するかどうか
	bool m_bCreateCloud;
	// 泡を生成するかどうか
	bool m_bCreateBubble;
	// ボスが倒されたかどうか
	bool m_bDieBoss;

	// 雲の生成情報
	CloudInfo m_CloudInfo;
	// 雲が生成されるまでの時間(乱数)
	int m_nRandBubble;
	// 雲が生成されるまでの時間カウンター
	int m_nCntBubble;

	// ゲームが始まったかどうか
	bool m_bStart;

	// 敵のセット情報
	EnemySetInfo m_EnemyInfo;
};

#endif	//_GAME_H_
