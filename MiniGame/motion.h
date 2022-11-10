////===================================================================
////
////	モデル処理のヘッダー[motion.h]
////	Author:SHUGO KURODA
////
////===================================================================
//#ifndef _MOTION_H_			//このマクロ定義がされなかったら
//#define _MOTION_H_			//2重インクルード防止のマクロ定義
//
//#include "object.h"
//#include "x_file_data.h"
//
////=============================================================================
//// クラス定義
////=============================================================================
//class CMotion : public CObject
//{
//private:
//	// 最大パーツ数
//	static const int MAX_PARTS = 20;
//
//public:
//	//メンバ関数
//	CMotion();					//コンストラクタ
//	~CMotion();					//デストラクタ
//
//	// 生成
//	static CMotion* Create(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const char* name);
//
//	// 初期化
//	HRESULT Init() override;
//	// 終了
//	void Uninit() override;
//	// 更新
//	void Update() override;
//	// 描画
//	void Draw() override;
//	// モーション再生
//	void Motion();
//
//	// 位置設定
//	void SetPosition(D3DXVECTOR3 pos) { m_pos = pos; }
//	// 角度設定
//	void SetRotation(D3DXVECTOR3 rot) { m_rot = rot; }
//	// 位置取得
//	D3DXVECTOR3 GetPosition() { return m_pos; }
//	// 位置取得
//	D3DXVECTOR3 *GetpPosition() { return &m_pos; }
//	// 角度取得
//	D3DXVECTOR3 GetRotation() { return m_rot; }
//	// 最大サイズ取得
//	D3DXVECTOR3 GetSizeMax() { return m_vtxMax; }
//	// 最小サイズ取得
//	D3DXVECTOR3 GetSizeMin() { return m_vtxMin; }
//	// Xファイルの設定
//	void BindXFile(SModelInfo XFile) { m_aXFile = XFile; }
//
//private:
//	//Xファイル情報
//	SModelInfo m_aXFile[MAX_PARTS];
//	//位置
//	D3DXVECTOR3 m_pos;
//	//前回の位置
//	D3DXVECTOR3 m_posOld;
//	//回転
//	D3DXVECTOR3 m_rot;
//	//モデルの最大サイズ,最小サイズ
//	D3DXVECTOR3 m_vtxMax, m_vtxMin;
//	//ワールドマトリックス
//	D3DXMATRIX m_mtxWorld;
//	// 最大パーツ数
//	int m_nPartsMax;
//	//影の番号
//	int m_nIdxShadow;
//};
//
//#endif
