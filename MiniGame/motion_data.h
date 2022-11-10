//===================================================================
//
// Xファイル情報 [x_file_data.h]
// Author : SHUGO KURODA
//
//===================================================================
#ifndef _MOTION_DATA_H_
#define _MOTION_DATA_H_

#include <d3dx9.h>		// 描画処理に必要

//===================================================================
//	マクロ定義
//===================================================================
#define MAX_PARTS			(20)		//プレイヤーのモデルパーツの最大数
#define MAX_MOTION			(20)		//モーションの最大数
#define MAX_KEY				(20)		//モーションキーの最大数
#define MAX_FRAME			(120)		//モーションの最大フレーム数

//*******************************************************************
// 構造体宣言
//*******************************************************************
//プレイヤーパーツ構造体
typedef struct
{
	D3DXVECTOR3 pos;			//位置
	D3DXVECTOR3 rot;			//回転
	D3DXVECTOR3 baseRot;		//基本の角度
	D3DXMATRIX mtxWorld;		//ワールドマトリックス
	int nIndex;					//このパーツの番号
	int nParent;				//親パーツの番号
	bool bUse;					//使用しているかどうか
}PlayerParts;

//モーションキー情報の構造体
typedef struct
{
	D3DXVECTOR3 aPos[MAX_KEY];		//モーション再生中の位置
	D3DXVECTOR3 aRot[MAX_KEY];		//モーション再生中の向き
}KeySet;

//モーション情報の構造体
typedef struct
{
	int nLoop;
	int nNumKey;
	int nFrame;
	KeySet aKey[MAX_KEY];
	bool bUse;
}MotionSet;

//全てのモデルモーション情報の構造体
typedef struct
{
	PlayerParts aParts[MAX_PARTS];		//パーツの情報
	MotionSet aMotion[MAX_MOTION];		//各モーションの情報
}ModelMotion;

#endif		// _MOTION_DATA_H_
