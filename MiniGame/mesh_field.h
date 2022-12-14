//===================================================================
//
//	メッシュフィールド処理のヘッダー[mesh_field.h]
//	Author:SHUGO KURODA
//
//===================================================================
#ifndef _MESH_FIELD_H_
#define _MESH_FIELD_H_

#include "object.h"

//-------------------------------------------
//	マクロ定義
//-------------------------------------------
#define MESHFIELD_X_BLOCK			(1)			//X方向のブロック数
#define MESHFIELD_Y_BLOCK			(20)		//Y方向のブロック数

//-------------------------------------------
// ロゴクラス
//-------------------------------------------
class CMeshField : public CObject
{
public:
	// コンストラクタ
	CMeshField();
	// デストラクタ
	~CMeshField() override;

	// 生成
	static CMeshField *Create();
	// テクスチャの読み込み
	static HRESULT Load();
	// テクスチャの削除
	static void Unload();

	// 初期化
	HRESULT Init() override;
	// 終了
	void Uninit() override;
	// 更新
	void Update() override;
	// 描画
	void Draw() override;
	// 移動量の設定
	void SetMove(const D3DXVECTOR3& move) { m_move = move; }
	// 終了フラグの設定
	void SetUninit(bool bUninit) { m_bUninit = bUninit; }

private:
	// テクスチャのポインタ
	static LPDIRECT3DTEXTURE9 m_pTexture;
	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff;				//頂点バッファへのポインタ
	LPDIRECT3DINDEXBUFFER9 m_pIdxBuff;		//インデックスバッファへのポインタ
	D3DXVECTOR3 m_pos;		//位置
	D3DXVECTOR3 m_move;		//移動量(画面シェイク用)
	D3DXCOLOR m_col;		//色
	int m_nCounterAnim;
	int m_nPatternAnim;
	bool m_bCol;			//色変更フラグ
	bool m_bUninit;	//終了するかどうか
};

#endif		// _MESH_FIELD_H_
