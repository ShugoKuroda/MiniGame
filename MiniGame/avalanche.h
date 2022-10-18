//===================================================================
//
//	雪崩発生時の処理[avalanche.h]
//	Author:Koshimoto Manato
//
//===================================================================
#ifndef _AVALANCHE_H_
#define _AVALANCHE_H_

#include "object2D.h"

//*******************************************************************
//	雪崩クラスの定義
//*******************************************************************
class CAvalanche : public CObject2D
{
private:
	//定数定義
	static const int amountPush;	//雪崩でプレイヤーが押し戻される量
public:
	CAvalanche();					//コンストラクタ
	~CAvalanche() override;			//デストラクタ

	//メンバ関数
	static CAvalanche *Create();	//生成処理
	HRESULT Init() override;		//初期化
	void Uninit() override;			//終了
	void Update() override;			//更新
	void Draw() override;			//描画

private:
	//メンバ変数
	static D3DXVECTOR3 m_pushback;		//雪崩発生時にプレイヤーを押し戻す量
	static int m_duration;				//雪崩の継続時間
};

#endif		// _AVALANCHE_H_