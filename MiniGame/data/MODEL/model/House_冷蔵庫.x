xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 154;
 -13.77187;67.57415;12.84112;,
 15.23846;67.57415;12.84112;,
 15.23846;67.57415;-12.64086;,
 -13.77187;67.57415;-12.64086;,
 -13.77187;-0.66079;-12.64086;,
 15.23846;-0.66079;-12.64086;,
 15.23846;-0.66079;12.84112;,
 -13.77187;-0.66079;12.84112;,
 -13.77187;67.57415;-12.64086;,
 15.23846;67.57415;-12.64086;,
 15.23846;66.88854;-15.37106;,
 -13.77187;66.88854;-15.37106;,
 15.23846;65.01548;-17.36975;,
 -13.77187;65.01548;-17.36975;,
 15.23846;62.45664;-18.10126;,
 -13.77187;62.45664;-18.10126;,
 -13.77187;0.02482;-15.37106;,
 15.23846;0.02482;-15.37106;,
 15.23846;-0.66079;-12.64086;,
 -13.77187;1.89805;-17.36975;,
 15.23846;1.89805;-17.36975;,
 -13.77187;4.45689;-18.10126;,
 15.23846;4.45689;-18.10126;,
 -13.77187;66.88854;15.57132;,
 15.23846;66.88854;15.57132;,
 15.23846;67.57415;12.84112;,
 -13.77187;65.01548;17.57001;,
 15.23846;65.01548;17.57001;,
 -13.77187;62.45664;18.30152;,
 15.23846;62.45664;18.30152;,
 -13.77187;-0.66079;12.84112;,
 15.23846;-0.66079;12.84112;,
 15.23846;0.02482;15.57132;,
 -13.77187;0.02482;15.57132;,
 15.23846;1.89805;17.57001;,
 -13.77187;1.89805;17.57001;,
 15.23846;4.45689;18.30152;,
 -13.77187;4.45689;18.30152;,
 18.34674;66.88854;12.84112;,
 18.34674;66.88854;-12.64086;,
 20.62202;65.01548;12.84112;,
 20.62202;65.01548;-12.64086;,
 21.45485;62.45664;12.84112;,
 21.45485;62.45664;-12.64086;,
 18.34674;0.02482;-12.64086;,
 18.34674;0.02482;12.84112;,
 20.62202;1.89805;-12.64086;,
 20.62202;1.89805;12.84112;,
 21.45485;4.45689;-12.64086;,
 21.45485;4.45689;12.84112;,
 -16.87998;66.88854;-12.64086;,
 -16.87998;66.88854;12.84112;,
 -19.15543;65.01548;-12.64086;,
 -19.15543;65.01548;12.84112;,
 -19.98826;62.45664;-12.64086;,
 -19.98826;62.45664;12.84112;,
 -16.87998;0.02482;12.84112;,
 -16.87998;0.02482;-12.64086;,
 -19.15543;1.89805;12.84112;,
 -19.15543;1.89805;-12.64086;,
 -19.98826;4.45689;12.84112;,
 -19.98826;4.45689;-12.64086;,
 19.04527;65.01548;-15.98476;,
 20.62202;62.45664;-15.37106;,
 18.34674;62.45664;-17.36975;,
 -17.57868;65.01548;-15.98476;,
 -19.15543;62.45664;-15.37106;,
 -16.87998;62.45664;-17.36975;,
 19.04527;1.89805;-15.98476;,
 20.62202;4.45689;-15.37106;,
 18.34674;4.45689;-17.36975;,
 19.04527;65.01548;16.18485;,
 20.62202;62.45664;15.57132;,
 18.34674;62.45664;17.57001;,
 -17.57868;1.89805;-15.98476;,
 -19.15543;4.45689;-15.37106;,
 -16.87998;4.45689;-17.36975;,
 19.04527;1.89805;16.18485;,
 20.62202;4.45689;15.57132;,
 18.34674;4.45689;17.57001;,
 -17.57868;65.01548;16.18485;,
 -19.15543;62.45664;15.57132;,
 -16.87998;62.45664;17.57001;,
 -17.57868;1.89805;16.18485;,
 -19.15543;4.45689;15.57132;,
 -16.87998;4.45689;17.57001;,
 15.23846;48.83556;-18.10126;,
 -13.77187;48.66148;-18.10126;,
 15.23846;62.45664;-18.10126;,
 15.23846;50.38137;18.30152;,
 15.23846;62.45664;18.30152;,
 -13.77187;62.45664;18.30152;,
 -13.77187;50.20729;18.30152;,
 21.45485;50.18689;12.84112;,
 21.45485;49.10484;-12.64086;,
 21.45485;62.45664;-12.64086;,
 -19.98826;49.93818;12.84112;,
 -19.98826;62.45664;12.84112;,
 -19.98826;62.45664;-12.64086;,
 -19.98826;48.85613;-12.64086;,
 15.23846;48.83556;-18.10126;,
 18.34674;48.88537;-17.36975;,
 20.62202;48.98380;-15.37106;,
 21.45485;49.10484;-12.64086;,
 15.23846;50.38137;18.30152;,
 18.34674;50.36896;17.57001;,
 20.62202;50.29773;15.57132;,
 21.45485;50.18689;12.84112;,
 -13.77187;48.66148;-18.10126;,
 -16.87998;48.67389;-17.36975;,
 -19.15543;48.74512;-15.37106;,
 -19.98826;48.85613;-12.64086;,
 -13.77187;50.20729;18.30152;,
 -16.87998;50.15765;17.57001;,
 -19.15543;50.05905;15.57132;,
 -19.98826;49.93818;12.84112;,
 15.23846;47.44020;-18.10126;,
 15.23846;4.45689;-18.10126;,
 -13.77187;4.45689;-18.10126;,
 -13.77187;47.26187;-18.10126;,
 -13.77187;48.54826;18.30152;,
 15.23846;4.45689;18.30152;,
 15.23846;48.72659;18.30152;,
 21.45485;48.57189;12.84112;,
 21.45485;4.45689;12.84112;,
 21.45485;4.45689;-12.64086;,
 21.45485;47.67140;-12.64086;,
 -19.98826;47.41674;-12.64086;,
 -19.98826;4.45689;-12.64086;,
 -19.98826;48.31706;12.84112;,
 18.34674;47.48525;-17.36975;,
 15.23846;47.44020;-18.10126;,
 20.62202;47.56974;-15.37106;,
 21.45485;47.67140;-12.64086;,
 15.23846;48.72659;18.30152;,
 18.34674;48.71979;17.57001;,
 20.62202;48.66318;15.57132;,
 21.45485;48.57189;12.84112;,
 -13.77187;47.26187;-18.10126;,
 -16.87998;47.26867;-17.36975;,
 -19.15543;47.32528;-15.37106;,
 -19.98826;47.41674;-12.64086;,
 -16.87998;48.50321;17.57001;,
 -13.77187;48.54826;18.30152;,
 -19.15543;48.41872;15.57132;,
 -19.98826;48.31706;12.84112;,
 18.34674;39.18143;-17.36975;,
 15.23846;39.13247;-18.10126;,
 15.23846;40.64122;18.30152;,
 18.34674;40.62949;17.57001;,
 18.34674;34.13226;-17.36975;,
 15.23846;34.09775;-18.10126;,
 15.23846;34.67031;18.30152;,
 18.34674;34.68187;17.57001;;
 
 150;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;16,17,18,4;,
 4;19,20,17,16;,
 4;21,22,20,19;,
 4;23,24,25,0;,
 4;26,27,24,23;,
 4;28,29,27,26;,
 4;30,31,32,33;,
 4;33,32,34,35;,
 4;35,34,36,37;,
 4;9,25,38,39;,
 4;39,38,40,41;,
 4;41,40,42,43;,
 4;31,18,44,45;,
 4;45,44,46,47;,
 4;47,46,48,49;,
 4;0,8,50,51;,
 4;51,50,52,53;,
 4;53,52,54,55;,
 4;4,30,56,57;,
 4;57,56,58,59;,
 4;59,58,60,61;,
 3;9,39,10;,
 3;39,41,62;,
 3;62,10,39;,
 3;10,62,12;,
 3;41,43,63;,
 3;63,62,41;,
 3;62,63,64;,
 3;64,12,62;,
 3;12,64,14;,
 3;11,50,8;,
 3;65,52,50;,
 3;50,11,65;,
 3;13,65,11;,
 3;66,54,52;,
 3;52,65,66;,
 3;67,66,65;,
 3;65,13,67;,
 3;15,67,13;,
 3;17,44,18;,
 3;68,46,44;,
 3;44,17,68;,
 3;20,68,17;,
 3;69,48,46;,
 3;46,68,69;,
 3;70,69,68;,
 3;68,20,70;,
 3;22,70,20;,
 3;24,38,25;,
 3;71,40,38;,
 3;38,24,71;,
 3;27,71,24;,
 3;72,42,40;,
 3;40,71,72;,
 3;73,72,71;,
 3;71,27,73;,
 3;29,73,27;,
 3;4,57,16;,
 3;57,59,74;,
 3;74,16,57;,
 3;16,74,19;,
 3;59,61,75;,
 3;75,74,59;,
 3;74,75,76;,
 3;76,19,74;,
 3;19,76,21;,
 3;31,45,32;,
 3;45,47,77;,
 3;77,32,45;,
 3;32,77,34;,
 3;47,49,78;,
 3;78,77,47;,
 3;77,78,79;,
 3;79,34,77;,
 3;34,79,36;,
 3;0,51,23;,
 3;51,53,80;,
 3;80,23,51;,
 3;23,80,26;,
 3;53,55,81;,
 3;81,80,53;,
 3;80,81,82;,
 3;82,26,80;,
 3;26,82,28;,
 3;33,56,30;,
 3;83,58,56;,
 3;56,33,83;,
 3;35,83,33;,
 3;84,60,58;,
 3;58,83,84;,
 3;85,84,83;,
 3;83,35,85;,
 3;37,85,35;,
 4;86,87,15,88;,
 4;89,90,91,92;,
 4;93,94,95,42;,
 4;96,97,98,99;,
 4;100,14,64,101;,
 4;101,64,63,102;,
 4;102,63,43,103;,
 4;104,105,73,29;,
 4;105,106,72,73;,
 4;106,107,42,72;,
 4;108,109,67,15;,
 4;109,110,66,67;,
 4;110,111,54,66;,
 4;112,28,82,113;,
 4;113,82,81,114;,
 4;114,81,55,115;,
 4;116,117,118,119;,
 4;116,119,87,86;,
 4;120,37,121,122;,
 4;120,122,89,92;,
 4;123,124,125,126;,
 4;123,126,94,93;,
 4;127,128,60,129;,
 4;127,129,96,99;,
 4;130,131,100,101;,
 4;132,69,70,130;,
 4;132,130,101,102;,
 4;133,48,69,132;,
 4;133,132,102,103;,
 4;134,135,105,104;,
 4;135,79,78,136;,
 4;135,136,106,105;,
 4;136,78,49,137;,
 4;136,137,107,106;,
 4;138,21,76,139;,
 4;138,139,109,108;,
 4;139,76,75,140;,
 4;139,140,110,109;,
 4;140,75,61,141;,
 4;140,141,111,110;,
 4;142,85,37,143;,
 4;142,143,112,113;,
 4;144,84,85,142;,
 4;144,142,113,114;,
 4;145,60,84,144;,
 4;145,144,114,115;,
 4;146,147,131,130;,
 4;148,149,135,134;,
 4;150,70,22,151;,
 4;150,151,147,146;,
 4;152,36,79,153;,
 4;152,153,149,148;;
 
 MeshMaterialList {
  13;
  150;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  4,
  3,
  3,
  3,
  3,
  3,
  4,
  4,
  3,
  4,
  3,
  4,
  3,
  3,
  3,
  3,
  3,
  3,
  4,
  3,
  4,
  3,
  4,
  3,
  3,
  3,
  3,
  3,
  4,
  3,
  3,
  3,
  4,
  3,
  3;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\MiniGame\\そざい\\logHouse\\Tex\\Wood_Floor.jpg";
   }
  }
  Material {
   0.599200;0.599200;0.599200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.668000;0.668000;0.668000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.279216;0.417255;0.558431;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.181490;0.271216;0.362980;;
  }
  Material {
   0.213600;0.213600;0.213600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.570980;0.432941;0.210196;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.392549;0.297647;0.144510;;
  }
  Material {
   0.523922;0.376471;0.153725;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.353647;0.254118;0.103765;;
  }
  Material {
   0.404706;0.665098;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.111294;0.182902;0.220000;;
  }
  Material {
   0.000000;0.684000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.205200;0.240000;;
  }
  Material {
   0.341600;0.357600;0.357600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.004270;0.004470;0.004470;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.600000;0.600000;0.600000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\MiniGame\\そざい\\logHouse\\Tex\\Wood_Floor.jpg";
   }
  }
  Material {
   0.800000;0.574118;0.345098;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.550000;0.394706;0.237255;;
   TextureFilename {
    "C:\\Users\\student\\Pictures\\Saved Pictures\\wood01.jpg";
   }
  }
  Material {
   0.800000;0.561600;0.320000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Pictures\\Saved Pictures\\wood01.jpg";
   }
  }
 }
 MeshNormals {
  106;
  -0.107569;0.986679;0.122036;,
  0.107564;0.986680;0.122037;,
  -0.107569;0.986679;-0.122037;,
  0.107564;0.986680;-0.122037;,
  -0.114271;0.137934;-0.983827;,
  0.114265;0.137934;-0.983828;,
  -0.114271;-0.137934;-0.983827;,
  0.114265;-0.137934;-0.983828;,
  -0.107569;-0.986679;-0.122036;,
  0.107563;-0.986680;-0.122036;,
  -0.107569;-0.986679;0.122036;,
  0.107563;-0.986680;0.122036;,
  -0.114270;-0.137934;0.983828;,
  0.114264;-0.137934;0.983828;,
  -0.114270;0.137934;0.983828;,
  0.114264;0.137934;0.983828;,
  0.977062;0.155161;0.145858;,
  0.977062;-0.155161;0.145858;,
  0.977062;0.155161;-0.145858;,
  0.977062;-0.155161;-0.145858;,
  -0.977062;-0.155161;0.145858;,
  -0.977062;0.155161;0.145858;,
  -0.977062;-0.155161;-0.145858;,
  -0.977062;0.155161;-0.145858;,
  -0.166325;0.871060;-0.462159;,
  0.166322;0.871059;-0.462162;,
  -0.161764;0.491654;-0.855633;,
  0.161761;0.491658;-0.855632;,
  -0.166333;-0.871047;-0.462180;,
  0.166330;-0.871046;-0.462183;,
  -0.161766;-0.491638;-0.855642;,
  0.161763;-0.491642;-0.855641;,
  -0.166334;0.871057;0.462161;,
  0.166330;0.871056;0.462164;,
  -0.161776;0.491660;0.855628;,
  0.161773;0.491664;0.855626;,
  -0.166341;-0.871044;0.462182;,
  0.166338;-0.871043;0.462185;,
  -0.161778;-0.491645;0.855636;,
  0.161775;-0.491648;0.855635;,
  0.418799;0.887580;0.191858;,
  0.418796;0.887582;-0.191853;,
  0.823738;0.530583;0.199844;,
  0.823741;0.530581;-0.199838;,
  0.418819;-0.887568;0.191868;,
  0.418817;-0.887570;-0.191862;,
  0.823747;-0.530568;0.199846;,
  0.823750;-0.530566;-0.199840;,
  -0.418791;0.887585;0.191851;,
  -0.418789;0.887587;-0.191846;,
  -0.823730;0.530596;0.199842;,
  -0.823733;0.530593;-0.199837;,
  -0.418811;-0.887573;0.191861;,
  -0.418809;-0.887576;-0.191855;,
  -0.823739;-0.530581;0.199844;,
  -0.823742;-0.530578;-0.199839;,
  0.429432;-0.181082;-0.884758;,
  0.429432;0.181082;-0.884758;,
  0.836847;-0.195215;-0.511447;,
  0.836847;0.195216;-0.511447;,
  0.429437;-0.181099;0.884752;,
  0.429437;0.181100;0.884752;,
  0.836843;-0.195228;0.511448;,
  0.836843;0.195228;0.511448;,
  -0.429424;-0.181073;-0.884764;,
  -0.429424;0.181073;-0.884764;,
  -0.836840;-0.195212;-0.511460;,
  -0.836840;0.195212;-0.511460;,
  -0.429429;-0.181090;0.884758;,
  -0.429429;0.181090;0.884758;,
  -0.836836;-0.195225;0.511461;,
  -0.836836;0.195225;0.511461;,
  0.535758;0.594583;-0.599528;,
  -0.535753;0.594584;-0.599532;,
  0.535767;-0.594565;-0.599538;,
  0.535760;0.594590;0.599520;,
  -0.535762;-0.594566;-0.599541;,
  0.535769;-0.594572;0.599530;,
  -0.535754;0.594591;0.599524;,
  -0.535764;-0.594573;0.599534;,
  -0.115317;0.000000;-0.993329;,
  0.115311;0.000000;-0.993329;,
  -0.115317;0.000000;0.993329;,
  0.115311;0.000000;0.993329;,
  0.989062;0.000000;0.147498;,
  0.989062;0.000000;-0.147499;,
  -0.989062;0.000000;0.147498;,
  -0.989062;0.000000;-0.147499;,
  0.458188;0.000000;-0.888856;,
  0.840251;0.000000;-0.542197;,
  0.458187;0.000000;0.888856;,
  0.840251;0.000000;0.542197;,
  -0.458176;0.000000;-0.888861;,
  -0.840241;0.000000;-0.542213;,
  -0.458176;0.000000;0.888861;,
  -0.840241;0.000000;0.542213;,
  0.115311;0.000000;-0.993329;,
  0.115311;0.000000;0.993329;,
  0.458188;0.000000;-0.888855;,
  0.458187;0.000000;0.888856;,
  -0.458176;0.000000;-0.888861;,
  -0.840241;0.000000;-0.542213;,
  -0.458176;0.000000;0.888861;,
  0.229084;0.000000;-0.973407;,
  0.229084;0.000000;0.973407;,
  0.229084;0.000000;-0.973407;;
  150;
  4;0,1,3,2;,
  4;8,9,11,10;,
  4;2,3,25,24;,
  4;24,25,27,26;,
  4;26,27,5,4;,
  4;28,29,9,8;,
  4;30,31,29,28;,
  4;6,7,31,30;,
  4;32,33,1,0;,
  4;34,35,33,32;,
  4;14,15,35,34;,
  4;10,11,37,36;,
  4;36,37,39,38;,
  4;38,39,13,12;,
  4;3,1,40,41;,
  4;41,40,42,43;,
  4;43,42,16,18;,
  4;11,9,45,44;,
  4;44,45,47,46;,
  4;46,47,19,17;,
  4;0,2,49,48;,
  4;48,49,51,50;,
  4;50,51,23,21;,
  4;8,10,52,53;,
  4;53,52,54,55;,
  4;55,54,20,22;,
  3;3,41,25;,
  3;41,43,72;,
  3;72,25,41;,
  3;25,72,27;,
  3;43,18,59;,
  3;59,72,43;,
  3;72,59,57;,
  3;57,27,72;,
  3;27,57,5;,
  3;24,49,2;,
  3;73,51,49;,
  3;49,24,73;,
  3;26,73,24;,
  3;67,23,51;,
  3;51,73,67;,
  3;65,67,73;,
  3;73,26,65;,
  3;4,65,26;,
  3;29,45,9;,
  3;74,47,45;,
  3;45,29,74;,
  3;31,74,29;,
  3;58,19,47;,
  3;47,74,58;,
  3;56,58,74;,
  3;74,31,56;,
  3;7,56,31;,
  3;33,40,1;,
  3;75,42,40;,
  3;40,33,75;,
  3;35,75,33;,
  3;63,16,42;,
  3;42,75,63;,
  3;61,63,75;,
  3;75,35,61;,
  3;15,61,35;,
  3;8,53,28;,
  3;53,55,76;,
  3;76,28,53;,
  3;28,76,30;,
  3;55,22,66;,
  3;66,76,55;,
  3;76,66,64;,
  3;64,30,76;,
  3;30,64,6;,
  3;11,44,37;,
  3;44,46,77;,
  3;77,37,44;,
  3;37,77,39;,
  3;46,17,62;,
  3;62,77,46;,
  3;77,62,60;,
  3;60,39,77;,
  3;39,60,13;,
  3;0,48,32;,
  3;48,50,78;,
  3;78,32,48;,
  3;32,78,34;,
  3;50,21,71;,
  3;71,78,50;,
  3;78,71,69;,
  3;69,34,78;,
  3;34,69,14;,
  3;36,52,10;,
  3;79,54,52;,
  3;52,36,79;,
  3;38,79,36;,
  3;70,20,54;,
  3;54,79,70;,
  3;68,70,79;,
  3;79,38,68;,
  3;12,68,38;,
  4;81,80,4,5;,
  4;83,15,14,82;,
  4;84,85,18,16;,
  4;86,21,23,87;,
  4;81,5,57,88;,
  4;88,57,59,89;,
  4;89,59,18,85;,
  4;83,90,61,15;,
  4;90,91,63,61;,
  4;91,84,16,63;,
  4;80,92,65,4;,
  4;92,93,67,65;,
  4;93,87,23,67;,
  4;82,14,69,94;,
  4;94,69,71,95;,
  4;95,71,21,86;,
  4;96,7,6,80;,
  4;96,80,80,81;,
  4;82,12,13,97;,
  4;82,97,83,82;,
  4;84,17,19,85;,
  4;84,85,85,84;,
  4;87,22,20,86;,
  4;87,86,86,87;,
  4;98,96,81,88;,
  4;89,58,56,98;,
  4;89,98,88,89;,
  4;85,19,58,89;,
  4;85,89,89,85;,
  4;97,99,90,83;,
  4;99,60,62,91;,
  4;99,91,91,90;,
  4;91,62,17,84;,
  4;91,84,84,91;,
  4;80,6,64,100;,
  4;80,100,92,80;,
  4;100,64,66,101;,
  4;100,101,93,92;,
  4;101,66,22,87;,
  4;101,87,87,93;,
  4;102,68,12,82;,
  4;102,82,82,94;,
  4;95,70,68,102;,
  4;95,102,94,95;,
  4;86,20,70,95;,
  4;86,95,95,86;,
  4;103,103,96,98;,
  4;104,104,99,97;,
  4;105,56,7,105;,
  4;105,105,103,103;,
  4;104,13,60,104;,
  4;104,104,104,104;;
 }
 MeshTextureCoords {
  154;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.234850;,
  0.000000;0.237850;,
  1.000000;0.000000;,
  1.000000;0.791810;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.788800;,
  0.211550;0.000000;,
  0.230200;1.000000;,
  0.000000;1.000000;,
  0.784160;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.765510;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.258900;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.261980;,
  0.000000;0.760200;,
  1.000000;0.000000;,
  1.000000;0.763270;,
  0.239390;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.254920;1.000000;,
  0.740690;1.000000;,
  0.000000;1.000000;,
  0.756210;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
