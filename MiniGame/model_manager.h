//===================================================================
//
//	モデルのマネージャー処理[model_manager.h]
//	Author : SHUGO KURODA
//
//===================================================================
#ifndef _MODEL_MANAGER_H_
#define _MODEL_MANAGER_H_

//*******************************************************************
//	モデルのマネージャークラスの定義
//*******************************************************************
class CModelManager
{
public:
	//メンバ関数
	CModelManager();
	~CModelManager();

	static CModelManager *Create();		//インスタンス生成処理

	HRESULT Init();
	void Uninit();
	void Update();
	void Draw();

private:
	int m_nCounter;		// カウンター
	int m_nNumCreate;	// オブジェクト生成までの数値
};

#endif	// _MODEL_MANAGER_H_
