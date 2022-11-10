////=============================================================================
////
//// Xファイルモーション [x_file_motion.cpp]
//// Author : SHUGO KURODA
////
////=============================================================================
//
////======================================================
//// インクルード
////======================================================
//#include <stdio.h>
//#include "x_file_motion.h"
//
//#include "renderer.h"
//#include "manager.h"
//
////======================================================
//// マクロ定義
////======================================================
//#define LINE_MAX_READING_LENGTH (256)			//一行の最大読み取り文字数
//
////=============================================================================
//// コンストラクタ
////=============================================================================
//CXFileMotion::CXFileMotion()
//{
//}
//
////=============================================================================
//// デストラクタ
////=============================================================================
//CXFileMotion::~CXFileMotion()
//{
//}
//
////=============================================================================
//// 初期化
////=============================================================================
//HRESULT CXFileMotion::Init(HWND hWnd)
//{
//	// ファイルポインター宣言
//	FILE *pFile = NULL;
//
//	char cBff[LINE_MAX_READING_LENGTH];			// 一行分読み取るための変数
//	char cBffHead[LINE_MAX_READING_LENGTH];		// 頭の文字を読み取るための変数
//	int nMotionIdx = 0;							// モーション番号
//
//	// ファイルを開く
//	pFile = fopen("motion_pas.ini", "r");
//
//	if (pFile == NULL)
//	{//開けなかった時用
//		MessageBox(hWnd, "INIファイルを開けませんでした", "警告！", MB_ICONWARNING);
//		return E_FAIL;
//	}
//
//	//文字列の読み取りループ処理
//	while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//	{
//		//文字読み込み用変数の初期化
//		memset(&cBffHead, 0, sizeof(cBffHead));
//		//文字列の分析
//		sscanf(cBff, "%s", &cBffHead);
//
//		if (strcmp(&cBffHead[0], "MODEL_FILENAME") == 0)
//		{//モーションテキストの相対パス用
//
//			//相対パス保存用
//			char sPath[LINE_MAX_READING_LENGTH];
//
//			//一行の文字列から相対パスの読み取り
//			sscanf(cBff, "%s = %s", &cBffHead, &sPath[0]);
//
//			//Xファイルの読み込み
//			if (LoadMotion(&sPath[0]) == false)
//			{// 読み込み失敗
//				MessageBox(hWnd, "モーションテキストを開けませんでした", "警告！", MB_ICONWARNING);
//				return E_FAIL;
//			}
//		}
//		else if (strcmp(&cBffHead[0], "END_SCRIPT") == 0)
//		{//読み込み終了
//			break;
//		}
//	}
//
//	return S_OK;
//}
//
////=============================================================================
//// 終了
////=============================================================================
//void CXFileMotion::Uninit()
//{
//	for (int nCnt = 0; nCnt < m_nNumXFile; nCnt++)
//	{
//		//メッシュの破棄
//		if (m_aXFile[nCnt].pMesh != NULL)
//		{
//			m_aXFile[nCnt].pMesh->Release();
//			m_aXFile[nCnt].pMesh = NULL;
//		}
//		//マテリアルの破棄
//		if (m_aXFile[nCnt].pBuffMat != NULL)
//		{
//			m_aXFile[nCnt].pBuffMat->Release();
//			m_aXFile[nCnt].pBuffMat = NULL;
//		}
//	}
//}
//
////-----------------------------------------------------------------------------
//// モーション情報の読み込み
////-----------------------------------------------------------------------------
//bool CXFileMotion::LoadMotion(char* pas)
//{
//	// ファイルポインター宣言
//	FILE *pFile = NULL;
//
//	char cBff[LINE_MAX_READING_LENGTH];			// 一行分読み取るための変数
//	char cBffHead[LINE_MAX_READING_LENGTH];		// 頭の文字を読み取るための変数
//	int nMotionIdx = 0;							// モーション番号
//
//	// ファイルを開く
//	pFile = fopen(pas, "r");
//
//	if (pFile == NULL)
//	{// ファイルを開けなかった場合
//		return false;
//	}
//
//	//文字列の読み取りループ処理
//	while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//	{
//		//文字読み込み用変数の初期化
//		memset(&cBffHead, 0, sizeof(cBffHead));
//		//文字列の分析
//		sscanf(cBff, "%s", &cBffHead);
//
//		if (strcmp(&cBffHead[0], "MODEL_FILENAME") == 0)
//		{//Xファイルの相対パス用
//
//			//相対パス保存用
//			char sPath[LINE_MAX_READING_LENGTH];
//
//			//一行の文字列から相対パスの読み取り
//			sscanf(cBff, "%s = %s", &cBffHead, &sPath[0]);
//
//			//Xファイルの読み込み
//			LoadParts(&sPath[0]);
//		}
//		else if (strcmp(&cBffHead[0], "CHARACTERSET") == 0)
//		{//プレイヤーの配置用
//
//			//プレイヤー情報の読み取りループ処理
//			while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//			{
//				//文字列の分析
//				sscanf(cBff, "%s", &cBffHead);
//
//				if (strcmp(&cBffHead[0], "NUM_PARTS") == 0)
//				{//パーツ数
//					//文字列の分析
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->nNumParts);
//				}
//				else if (strcmp(&cBffHead[0], "MOVE") == 0)
//				{//移動量
//					//文字列の分析
//					sscanf(cBff, "%s = %f", &cBffHead, &pPlayer->fMove);
//				}
//				else if (strcmp(&cBffHead[0], "JUMP") == 0)
//				{//ジャンプ量
//					//文字列の分析
//					sscanf(cBff, "%s = %f", &cBffHead, &pPlayer->fJump);
//				}
//				else if (strcmp(&cBffHead[0], "PARTSSET") == 0)
//				{
//					//インデックス保存用
//					int nIndex = 0;
//
//					//プレイヤーパーツ情報の読み取りループ処理
//					while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//					{
//						//文字列の分析
//						sscanf(cBff, "%s", &cBffHead);
//
//						if (strcmp(&cBffHead[0], "INDEX") == 0)
//						{//パーツ番号
//						 //文字列の分析
//							sscanf(cBff, "%s = %d", &cBffHead, &nIndex);
//							pPlayer->aParts[nIndex].nIndex = nIndex;
//							pPlayer->aParts[nIndex].bUse = true;
//						}
//						else if (strcmp(&cBffHead[0], "PARENT") == 0)
//						{//現在のパーツの親
//						 //文字列の分析
//							sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aParts[nIndex].nParent);
//						}
//						else if (strcmp(&cBffHead[0], "POS") == 0)
//						{//位置
//						 //文字列の分析
//							sscanf(cBff, "%s = %f%f%f", &cBffHead, &pPlayer->aParts[nIndex].pos.x, &pPlayer->aParts[nIndex].pos.y, &pPlayer->aParts[nIndex].pos.z);
//						}
//						else if (strcmp(&cBffHead[0], "ROT") == 0)
//						{//回転(角度)
//						 //文字列の分析
//							sscanf(cBff, "%s = %f%f%f", &cBffHead, &pPlayer->aParts[nIndex].rot.x, &pPlayer->aParts[nIndex].rot.y, &pPlayer->aParts[nIndex].rot.z);
//							pPlayer->aParts[nIndex].baseRot = pPlayer->aParts[nIndex].rot;
//						}
//						else if (strcmp(&cBffHead[0], "END_PARTSSET") == 0)
//						{//パーツ読み込み終了
//							break;
//						}
//					}
//				}
//				else if (strcmp(&cBffHead[0], "END_CHARACTERSET") == 0)
//				{//プレイヤー読み込み終了
//					break;
//				}
//			}
//		}
//		else if (strcmp(&cBffHead[0], "MOTIONSET") == 0)
//		{//モーション設定用
//
//		 //キーセット番号の保存用変数
//			int nKeySetIdx = 0;
//			//モーション情報の読み取りループ処理
//			while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//			{
//				//文字列の分析
//				sscanf(cBff, "%s", &cBffHead);
//
//				if (strcmp(&cBffHead[0], "LOOP") == 0)
//				{//ループ設定
//				 //文字列の分析
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nLoop);
//				}
//				else if (strcmp(&cBffHead[0], "NUM_KEY") == 0)
//				{//キーの数
//				 //文字列の分析
//					sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nNumKey);
//				}
//				else if (strcmp(&cBffHead[0], "KEYSET") == 0)
//				{
//					//モデルパーツのセット番号
//					int nPartsIdx = 0;
//
//					//キーセット情報の読み取りループ処理
//					while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//					{
//						//文字列の分析
//						sscanf(cBff, "%s", &cBffHead);
//
//						if (strcmp(&cBffHead[0], "FRAME") == 0)
//						{//ループ設定
//						 //文字列の分析
//							sscanf(cBff, "%s = %d", &cBffHead, &pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx]);
//							if (pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx] == 0)
//							{//再生フレーム数が0の場合1にする
//								pPlayer->aMotion[nMotionIdx].nFrame[nKeySetIdx] = 1;
//							}
//						}
//						if (strcmp(&cBffHead[0], "KEY") == 0)
//						{// ループ設定
//						 // キー情報の読み取りループ処理
//							while (fgets(cBff, LINE_MAX_READING_LENGTH, pFile) != NULL)
//							{
//								//文字列の分析
//								sscanf(cBff, "%s", &cBffHead);
//
//								if (strcmp(&cBffHead[0], "POS") == 0)
//								{//モーション再生中の位置情報読み込み
//								 //文字列の分析
//									sscanf(cBff, "%s = %f%f%f", &cBffHead,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].x,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].y,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].pos[nPartsIdx].z);
//								}
//								else if (strcmp(&cBffHead[0], "ROT") == 0)
//								{//モーション再生中の回転情報読み込み
//								 //文字列の分析
//									sscanf(cBff, "%s = %f%f%f", &cBffHead,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].x,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].y,
//										&pPlayer->aMotion[nMotionIdx].aKey[nKeySetIdx].rot[nPartsIdx].z);
//								}
//								else if (strcmp(&cBffHead[0], "END_KEY") == 0)
//								{
//									nPartsIdx++;
//									break;
//								}
//							}
//						}
//						else if (strcmp(&cBffHead[0], "END_KEYSET") == 0)
//						{
//							nKeySetIdx++;
//							break;
//						}
//					}
//				}
//				else if (strcmp(&cBffHead[0], "END_MOTIONSET") == 0)
//				{
//					nMotionIdx++;
//					break;
//				}
//			}
//		}
//		else if (strcmp(&cBffHead[0], "END_SCRIPT") == 0)
//		{//テキストファイルを読み切った時
//			break;
//		}
//	}
//
//	//プレイヤーを使用している状態にする
//	pPlayer->bUse = true;
//
//	//ファイルを閉じる
//	fclose(pFile);
//
//	return true;
//}
//
////-----------------------------------------------------------------------------
//// Xファイルの読み込み
////-----------------------------------------------------------------------------
//void CXFileMotion::LoadParts(char *pas)
//{
//	//デバイスを取得する
//	LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//
//	// テクスチャ保存用
//	SModelInfo XFile;
//
//	//Xファイルの読み込み
//	D3DXLoadMeshFromX(pas,
//		D3DXMESH_SYSTEMMEM,
//		pDevice,
//		NULL,
//		&XFile.pBuffMat,
//		NULL,
//		&XFile.nNumMat,
//		&XFile.pMesh);
//
//	// テクスチャの読み込み処理
//	LoadXFileTexture(XFile);
//}
//
////-----------------------------------------------------------------------------
//// テクスチャの読み込み
////-----------------------------------------------------------------------------
//void CXFileMotion::LoadXFileTexture(SModelInfo& XFile)
//{
//	//マテリアルデータへのポインタ
//	D3DXMATERIAL *pMat;
//
//	//マテリアルデータへのポインタを取得
//	pMat = (D3DXMATERIAL*)XFile.pBuffMat->GetBufferPointer();
//
//	for (int nCntMat = 0; nCntMat < (int)XFile.nNumMat; nCntMat++)
//	{
//		//マテリアルの設定
//		//pDevice->SetMaterial(&pMat[nCntMat].MatD3D);
//
//		//テクスチャがあった場合
//		if ((pMat[nCntMat].pTextureFilename != NULL) && (strcmp(pMat[nCntMat].pTextureFilename, "") != 0))
//		{
//			//デバイスを取得する
//			LPDIRECT3DDEVICE9 pDevice = CManager::GetManager()->GetRenderer()->GetDevice();
//			//テクスチャの読み込み
//			D3DXCreateTextureFromFile(pDevice, pMat[nCntMat].pTextureFilename, &XFile.pTexture[nCntMat]);
//		}
//	}
//}
