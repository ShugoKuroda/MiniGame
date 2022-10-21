//=============================================================================
//
// テクスチャマネージャー [texture.cpp]
// Author : SHUGO KURODA
//
//=============================================================================
#include <stdio.h>

#include "texture.h"
#include "renderer.h"
#include "manager.h"

//================================================
// マクロ定義
//================================================
#define MAX_CHAR		(128)		// 最大読み取り文字数

//================================================
// 静的メンバ変数宣言
//================================================
std::vector<LPDIRECT3DTEXTURE9> CTexture::m_apTexture = {};
std::vector<std::string> CTexture::m_aPas;
std::map<std::string, int> CTexture::m_texType;
int CTexture::m_nNumTex = 0;

//=============================================================================
// コンストラクタ
//=============================================================================
CTexture::CTexture()
{
	// 変数の初期化
	m_texType.clear();
}

//=============================================================================
// デストラクタ
//=============================================================================
CTexture::~CTexture()
{
}

//=============================================================================
// テクスチャの生成
//=============================================================================
void CTexture::Init()
{
	//ファイル読み込み
	FILE *pFile = fopen("data/TEXT/texPas.txt", "r");

	if (pFile != NULL)
	{
		char cString[MAX_CHAR];

		//一行ずつ保存
		while (fgets(cString, MAX_CHAR, pFile) != NULL)
		{
			//文字列を保存
			fscanf(pFile, "%s", cString);
			//文字列の中にTEX_NUMがあったら
			if (strncmp("TEX_NUM", cString, 8) == 0)
			{
				//テクスチャ最大数読み込み
				fscanf(pFile, "%*s%d", &m_nNumTex);

				int nNum = 0;
				//一行ずつ保存
				while (fgets(cString, MAX_CHAR, pFile) != NULL)
				{
					//文字列を保存
					fscanf(pFile, "%s", cString);
					//文字列の中にPASがあったら
					if (strncmp("PAS", cString, 4) == 0)
					{
						//パスの取得
						fscanf(pFile, "%*s%s", &cString[0]);
						m_aPas.push_back(&cString[0]);

						//名前の取得
						fscanf(pFile, "%*s%*s%s", cString);
						//名前と数の割り当て
						m_texType[cString] = nNum;
						nNum++;
					}
				}
			}
			else if (strncmp("END_SCRIPT", cString, 11) == 0)
			{//テキストファイルを読み切った時
				break;
			}
		}
	}
	else
	{
		printf("テクスチャファイルが開けませんでした\n");
	}

	// ファイルを閉じる
	fclose(pFile);

	//デバイスを取得する
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	for (int nCntTex = 0; nCntTex < m_nNumTex; nCntTex++)
	{
		// テクスチャ保存用
		LPDIRECT3DTEXTURE9 pTexBuffer = nullptr;

		//テクスチャの生成
		D3DXCreateTextureFromFile(pDevice, m_aPas[nCntTex].c_str(), &pTexBuffer);

		// テクスチャの割り当て
		m_apTexture.push_back(pTexBuffer);
	}
}

//=============================================================================
// 終了
//=============================================================================
void CTexture::Uninit()
{
	for (int nCntTexture = 0; nCntTexture < m_nNumTex; nCntTexture++)
	{
		//テクスチャの破棄
		if (m_apTexture[nCntTexture] != NULL)
		{
			m_apTexture[nCntTexture]->Release();
			m_apTexture[nCntTexture] = NULL;
		}
	}
}
