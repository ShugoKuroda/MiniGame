////=============================================================================
////
//// Xファイルモーション [x_file_motion.h]
//// Author : SHUGO KURODA
////
////=============================================================================
//#ifndef _X_FILE_MOTION_H_
//#define _X_FILE_MOTION_H_
//
//#include "x_file_data.h"
//#include "motion_data.h"
//#include <vector>
//#include <string>
//#include <map>
//
////using namespace std;
//
////=============================================================================
//// クラス定義
////=============================================================================
//class CXFileMotion
//{
//	// メンバ関数
//public:
//	CXFileMotion();					//コンストラクタ
//	~CXFileMotion();				//デストラクタ
//
//	// 初期化
//	HRESULT Init(HWND hWnd);
//	// 終了
//	void Uninit();
//	// モーション情報の読み込み
//	bool LoadMotion(char *pas);
//	// モデルパーツの読み込み
//	void LoadParts(char *pas);
//
//private:
//	// テクスチャの読み込み
//	void LoadXFileTexture(SModelInfo& XFile);
//
//	// メンバ変数
//private:
//	std::vector<ModelMotion> m_motion;		//モーション情報
//	std::vector<std::string> m_aPas;		// Xファイルのパス
//	std::map<std::string, int> m_texType;	// Xファイルの種類
//	int m_nNumXFile;						// Xファイルの総数
//};
//
//#endif	//_X_FILE_MOTION_H_
