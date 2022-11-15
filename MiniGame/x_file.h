//=============================================================================
//
// Xファイル処理 [x_file.h]
// Author : SHUGO KURODA
//
//=============================================================================
#ifndef _X_FILE_H_
#define _X_FILE_H_

//=============================================================================
// インクルード
//=============================================================================
#include "x_file_data.h"
#include <vector>
#include <string>
#include <map>

//using namespace std;

//=============================================================================
// クラス定義
//=============================================================================
class CXFile
{
public:
	//メンバ関数
	CXFile();					//コンストラクタ
	~CXFile();					//デストラクタ

	// 初期化
	static void Init();
	// 終了
	static void Uninit();
	// Xファイルのテクスチャ読み込み
	static void LoadXFileTexture(SModelInfo& XFile);

	// Xファイル情報の取得(名前指定)
	static SModelInfo GetXFile(std::string texType) { return m_aXFile[m_texType[texType]]; }
	// Xファイル情報の取得(番号指定)
	static SModelInfo GetXFile(int nCnt) { return m_aXFile[nCnt]; }
	// Xファイルのパス取得処理
	static std::string GetPas(int nCntTex) { return m_aPas[nCntTex]; }
	// Xファイルの総数取得処理
	static int GetNum() { return m_nNumXFile; }

private:
	static std::vector<SModelInfo> m_aXFile;		// Xファイル情報
	static std::vector<std::string>	m_aPas;			// Xファイルのパス
	static std::map<std::string, int> m_texType;	// Xファイルの種類
	static int m_nNumXFile;							// Xファイルの総数
};

#endif		// _X_FILE_H_
