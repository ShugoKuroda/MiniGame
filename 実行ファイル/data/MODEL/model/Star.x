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
 176;
 -0.19021;7.73820;0.50267;,
 -4.40327;6.39916;0.50267;,
 -0.16180;3.31756;0.50267;,
 -4.50327;6.70693;0.50267;,
 -0.30777;8.10000;0.50267;,
 -0.34123;3.02920;0.50198;,
 -4.63160;6.14103;0.50197;,
 0.19021;7.73820;0.50267;,
 0.16180;3.31756;0.50267;,
 0.00000;8.00000;0.50267;,
 0.00000;8.32361;0.50267;,
 0.30777;8.10000;0.50267;,
 -4.70940;6.47343;0.46910;,
 -4.79341;6.25858;0.30197;,
 -4.85568;6.62789;0.30196;,
 -4.79388;6.81810;0.50196;,
 0.00000;3.04307;0.46911;,
 0.34122;3.02920;0.50198;,
 0.17942;2.91164;0.30198;,
 -0.17942;2.91164;0.30198;,
 -2.88317;11.69307;0.50267;,
 -2.62137;11.88328;0.50267;,
 -3.20073;11.85487;0.50176;,
 -2.91274;12.01515;0.46905;,
 -3.13892;12.04509;0.30176;,
 -2.83758;12.21750;0.30188;,
 -2.63758;12.21750;0.50188;,
 2.62137;11.88328;0.50267;,
 2.88317;11.69307;0.50267;,
 2.63758;12.21750;0.50188;,
 2.91274;12.01515;0.46905;,
 2.83758;12.21750;0.30188;,
 3.13893;12.04509;0.30176;,
 3.20073;11.85487;0.50176;,
 4.50327;6.70693;0.50267;,
 4.40327;6.39916;0.50267;,
 4.79388;6.81810;0.50196;,
 4.70940;6.47343;0.46910;,
 4.85568;6.62789;0.30196;,
 4.79341;6.25858;0.30197;,
 4.63160;6.14103;0.50197;,
 -0.19021;7.73820;-0.49733;,
 -0.16180;3.31756;-0.49733;,
 -4.40327;6.39916;-0.49733;,
 0.16180;3.31756;-0.49733;,
 0.19021;7.73820;-0.49733;,
 -4.63160;6.14103;-0.49803;,
 -0.34123;3.02920;-0.49802;,
 -0.30777;8.10000;-0.49733;,
 -4.50327;6.70693;-0.49733;,
 0.00000;8.00000;-0.49733;,
 0.30777;8.10000;-0.49733;,
 0.00000;8.32361;-0.49733;,
 0.00000;3.04306;-0.46423;,
 -0.17942;2.91164;-0.29802;,
 0.17942;2.91164;-0.29802;,
 0.34122;3.02920;-0.49802;,
 -4.70940;6.47343;-0.46423;,
 -4.79388;6.81810;-0.49804;,
 -4.85568;6.62789;-0.29804;,
 -4.79341;6.25858;-0.29803;,
 -2.88317;11.69307;-0.49733;,
 -3.20073;11.85487;-0.49824;,
 -2.62137;11.88328;-0.49733;,
 -2.91274;12.01515;-0.46428;,
 -2.63758;12.21750;-0.49812;,
 -2.83758;12.21750;-0.29812;,
 -3.13892;12.04509;-0.29824;,
 2.62137;11.88328;-0.49733;,
 2.63758;12.21750;-0.49812;,
 2.88317;11.69307;-0.49733;,
 2.91274;12.01515;-0.46428;,
 3.20073;11.85487;-0.49824;,
 3.13893;12.04509;-0.29824;,
 2.83758;12.21750;-0.29812;,
 4.50327;6.70693;-0.49733;,
 4.79388;6.81810;-0.49804;,
 4.40327;6.39916;-0.49733;,
 4.70940;6.47343;-0.46423;,
 4.63160;6.14103;-0.49803;,
 4.79341;6.25858;-0.29803;,
 4.85568;6.62789;-0.29804;,
 0.00000;16.70025;0.48126;,
 -0.10135;16.87267;0.28046;,
 0.10135;16.87267;0.28046;,
 0.00000;16.70025;-0.51874;,
 -0.10135;16.87267;-0.31954;,
 0.10135;16.87267;-0.31954;,
 -7.69960;11.87211;0.48129;,
 -7.80000;12.04509;0.28058;,
 -7.89960;11.87211;0.28038;,
 -7.69960;11.87211;-0.51871;,
 -7.80000;12.04509;-0.31942;,
 -7.89960;11.87211;-0.31962;,
 7.69960;11.87211;0.48129;,
 7.89960;11.87211;0.28038;,
 7.80000;12.04509;0.28058;,
 7.69960;11.87211;-0.51871;,
 7.80000;12.04509;-0.31942;,
 7.89960;11.87211;-0.31962;,
 5.78245;0.32978;0.48106;,
 5.82058;0.13345;0.28036;,
 5.96187;0.24142;0.28037;,
 5.78245;0.32978;-0.51894;,
 5.96187;0.24142;-0.31963;,
 5.82058;0.13345;-0.31964;,
 -5.78245;0.32978;0.48106;,
 -5.96187;0.24142;0.28037;,
 -5.82058;0.13345;0.28036;,
 -5.78245;0.32978;-0.51894;,
 -5.82058;0.13345;-0.31964;,
 -5.96187;0.24142;-0.31963;,
 -1.23627;10.19792;-0.52339;,
 -1.00615;10.02139;-0.65625;,
 -1.23627;10.02139;-0.78911;,
 -1.00615;10.02139;-0.39053;,
 -1.23627;10.02139;-0.25767;,
 -1.46640;10.02139;-0.39053;,
 -1.46640;10.02139;-0.65625;,
 -0.83769;9.53908;-0.75351;,
 -1.23627;9.53908;-0.98363;,
 -0.83769;9.53908;-0.29327;,
 -1.23627;9.53908;-0.06315;,
 -1.63486;9.53908;-0.29327;,
 -1.63486;9.53908;-0.75351;,
 -0.77603;8.88023;-0.78911;,
 -1.23627;8.88023;-1.05483;,
 -0.77603;8.88023;-0.25767;,
 -1.23627;8.88023;0.00805;,
 -1.69652;8.88023;-0.25767;,
 -1.69652;8.88023;-0.78911;,
 -0.83769;8.22139;-0.75351;,
 -1.23627;8.22139;-0.98363;,
 -0.83769;8.22139;-0.29327;,
 -1.23627;8.22139;-0.06315;,
 -1.63486;8.22139;-0.29327;,
 -1.63486;8.22139;-0.75351;,
 -1.00615;7.73908;-0.65625;,
 -1.23627;7.73908;-0.78911;,
 -1.00615;7.73908;-0.39053;,
 -1.23627;7.73908;-0.25767;,
 -1.46640;7.73908;-0.39053;,
 -1.46640;7.73908;-0.65625;,
 -1.23627;7.56255;-0.52339;,
 1.21876;10.19792;-0.52339;,
 1.21876;10.02139;-0.78911;,
 0.98863;10.02139;-0.65625;,
 0.98863;10.02139;-0.39053;,
 1.21876;10.02139;-0.25767;,
 1.44888;10.02139;-0.39053;,
 1.44888;10.02139;-0.65625;,
 1.21876;9.53908;-0.98363;,
 0.82017;9.53908;-0.75351;,
 0.82017;9.53908;-0.29327;,
 1.21876;9.53908;-0.06315;,
 1.61734;9.53908;-0.29327;,
 1.61734;9.53908;-0.75351;,
 1.21876;8.88023;-1.05483;,
 0.75851;8.88023;-0.78911;,
 0.75851;8.88023;-0.25767;,
 1.21876;8.88023;0.00805;,
 1.67900;8.88023;-0.25767;,
 1.67900;8.88023;-0.78911;,
 1.21876;8.22139;-0.98363;,
 0.82017;8.22139;-0.75351;,
 0.82017;8.22139;-0.29327;,
 1.21876;8.22139;-0.06315;,
 1.61734;8.22139;-0.29327;,
 1.61734;8.22139;-0.75351;,
 1.21876;7.73908;-0.78911;,
 0.98863;7.73908;-0.65625;,
 0.98863;7.73908;-0.39053;,
 1.21876;7.73908;-0.25767;,
 1.44888;7.73908;-0.39053;,
 1.44888;7.73908;-0.65625;,
 1.21876;7.56255;-0.52339;;
 
 232;
 3;0,1,2;,
 4;3,1,0,4;,
 4;5,2,1,6;,
 4;7,0,2,8;,
 3;9,4,0;,
 3;9,10,4;,
 3;9,11,10;,
 3;9,7,11;,
 3;9,0,7;,
 3;12,6,1;,
 3;12,13,6;,
 3;12,14,13;,
 3;12,15,14;,
 3;12,3,15;,
 3;12,1,3;,
 3;16,8,2;,
 3;16,17,8;,
 3;16,18,17;,
 3;16,19,18;,
 3;16,5,19;,
 3;16,2,5;,
 3;4,20,3;,
 4;21,20,4,10;,
 4;15,3,20,22;,
 3;23,22,20;,
 3;23,24,22;,
 3;23,25,24;,
 3;23,26,25;,
 3;23,21,26;,
 3;23,20,21;,
 3;10,27,21;,
 4;28,27,10,11;,
 4;26,21,27,29;,
 3;30,29,27;,
 3;30,31,29;,
 3;30,32,31;,
 3;30,33,32;,
 3;30,28,33;,
 3;30,27,28;,
 3;11,34,28;,
 4;35,34,11,7;,
 4;33,28,34,36;,
 3;37,36,34;,
 3;37,38,36;,
 3;37,39,38;,
 3;37,40,39;,
 3;37,35,40;,
 3;37,34,35;,
 3;7,8,35;,
 4;40,35,8,17;,
 3;41,42,43;,
 4;44,42,41,45;,
 4;46,43,42,47;,
 4;48,41,43,49;,
 3;50,45,41;,
 3;50,51,45;,
 3;50,52,51;,
 3;50,48,52;,
 3;50,41,48;,
 3;53,47,42;,
 3;53,54,47;,
 3;53,55,54;,
 3;53,56,55;,
 3;53,44,56;,
 3;53,42,44;,
 3;57,49,43;,
 3;57,58,49;,
 3;57,59,58;,
 3;57,60,59;,
 3;57,46,60;,
 3;57,43,46;,
 3;48,49,61;,
 4;62,61,49,58;,
 4;52,48,61,63;,
 3;64,63,61;,
 3;64,65,63;,
 3;64,66,65;,
 3;64,67,66;,
 3;64,62,67;,
 3;64,61,62;,
 3;52,63,68;,
 4;69,68,63,65;,
 4;51,52,68,70;,
 3;71,70,68;,
 3;71,72,70;,
 3;71,73,72;,
 3;71,74,73;,
 3;71,69,74;,
 3;71,68,69;,
 3;51,70,75;,
 4;76,75,70,72;,
 4;45,51,75,77;,
 3;78,77,75;,
 3;78,79,77;,
 3;78,80,79;,
 3;78,81,80;,
 3;78,76,81;,
 3;78,75,76;,
 3;45,77,44;,
 4;56,44,77,79;,
 3;82,26,29;,
 4;25,26,82,83;,
 4;84,82,29,31;,
 3;84,83,82;,
 3;65,85,69;,
 4;86,85,65,66;,
 4;74,69,85,87;,
 3;86,87,85;,
 4;25,83,86,66;,
 4;87,86,83,84;,
 4;24,25,66,67;,
 4;87,84,31,74;,
 4;73,74,31,32;,
 3;22,88,15;,
 4;89,88,22,24;,
 4;14,15,88,90;,
 3;89,90,88;,
 3;91,62,58;,
 4;67,62,91,92;,
 4;93,91,58,59;,
 3;93,92,91;,
 4;89,24,67,92;,
 4;90,89,92,93;,
 4;90,93,59,14;,
 4;13,14,59,60;,
 3;33,36,94;,
 4;95,94,36,38;,
 4;32,33,94,96;,
 3;95,96,94;,
 3;72,97,76;,
 4;98,97,72,73;,
 4;81,76,97,99;,
 3;98,99,97;,
 4;98,73,32,96;,
 4;99,98,96,95;,
 4;99,95,38,81;,
 4;80,81,38,39;,
 3;17,100,40;,
 4;101,100,17,18;,
 4;39,40,100,102;,
 3;101,102,100;,
 3;79,103,56;,
 4;104,103,79,80;,
 4;55,56,103,105;,
 3;104,105,103;,
 4;80,39,102,104;,
 4;105,104,102,101;,
 4;18,55,105,101;,
 4;54,55,18,19;,
 3;6,106,5;,
 4;107,106,6,13;,
 4;19,5,106,108;,
 3;107,108,106;,
 3;46,47,109;,
 4;110,109,47,54;,
 4;60,46,109,111;,
 3;110,111,109;,
 4;108,110,54,19;,
 4;111,110,108,107;,
 4;13,60,111,107;,
 3;112,113,114;,
 3;112,115,113;,
 3;112,116,115;,
 3;112,117,116;,
 3;112,118,117;,
 3;112,114,118;,
 4;114,113,119,120;,
 4;113,115,121,119;,
 4;115,116,122,121;,
 4;116,117,123,122;,
 4;117,118,124,123;,
 4;118,114,120,124;,
 4;120,119,125,126;,
 4;119,121,127,125;,
 4;121,122,128,127;,
 4;122,123,129,128;,
 4;123,124,130,129;,
 4;124,120,126,130;,
 4;126,125,131,132;,
 4;125,127,133,131;,
 4;127,128,134,133;,
 4;128,129,135,134;,
 4;129,130,136,135;,
 4;130,126,132,136;,
 4;132,131,137,138;,
 4;131,133,139,137;,
 4;133,134,140,139;,
 4;134,135,141,140;,
 4;135,136,142,141;,
 4;136,132,138,142;,
 3;138,137,143;,
 3;137,139,143;,
 3;139,140,143;,
 3;140,141,143;,
 3;141,142,143;,
 3;142,138,143;,
 3;144,145,146;,
 3;144,146,147;,
 3;144,147,148;,
 3;144,148,149;,
 3;144,149,150;,
 3;144,150,145;,
 4;145,151,152,146;,
 4;146,152,153,147;,
 4;147,153,154,148;,
 4;148,154,155,149;,
 4;149,155,156,150;,
 4;150,156,151,145;,
 4;151,157,158,152;,
 4;152,158,159,153;,
 4;153,159,160,154;,
 4;154,160,161,155;,
 4;155,161,162,156;,
 4;156,162,157,151;,
 4;157,163,164,158;,
 4;158,164,165,159;,
 4;159,165,166,160;,
 4;160,166,167,161;,
 4;161,167,168,162;,
 4;162,168,163,157;,
 4;163,169,170,164;,
 4;164,170,171,165;,
 4;165,171,172,166;,
 4;166,172,173,167;,
 4;167,173,174,168;,
 4;168,174,169,163;,
 3;169,175,170;,
 3;170,175,171;,
 3;171,175,172;,
 3;172,175,173;,
 3;173,175,174;,
 3;174,175,169;;
 
 MeshMaterialList {
  2;
  232;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   1.000000;0.973000;0.000000;0.700000;;
   5.000000;
   0.500000;0.500000;0.500000;;
   0.500000;0.486500;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  180;
  0.000000;0.000000;1.000000;,
  -0.000001;-0.495588;0.868558;,
  -0.500046;-0.108616;0.859161;,
  -0.257019;0.413798;0.873334;,
  0.257015;0.413796;0.873336;,
  0.500046;-0.108616;0.859161;,
  -0.000001;-0.493748;-0.869605;,
  -0.498237;-0.108125;-0.860273;,
  -0.255480;0.412061;-0.874606;,
  0.255476;0.412059;-0.874608;,
  0.498237;-0.108125;-0.860273;,
  0.000000;0.000000;-1.000000;,
  -0.041987;0.007426;0.999091;,
  0.019448;-0.037377;0.999112;,
  -0.004107;0.041354;0.999136;,
  -0.032681;-0.028614;0.999056;,
  0.037406;0.019283;0.999114;,
  -0.037406;0.019283;0.999114;,
  0.032681;-0.028614;0.999056;,
  0.004107;0.041354;0.999136;,
  -0.019449;-0.037377;0.999112;,
  0.041987;0.007426;0.999091;,
  0.020438;-0.035752;-0.999152;,
  -0.040713;0.008858;-0.999132;,
  -0.030587;-0.029155;-0.999107;,
  -0.001937;0.040461;-0.999179;,
  -0.037207;0.017068;-0.999162;,
  0.037207;0.017068;-0.999162;,
  0.001937;0.040461;-0.999179;,
  0.030587;-0.029155;-0.999107;,
  0.040713;0.008858;-0.999132;,
  -0.020439;-0.035752;-0.999152;,
  -0.244700;0.432288;0.867899;,
  -0.289755;0.229711;0.929126;,
  0.289755;0.229711;0.929126;,
  -0.290532;0.224234;-0.930221;,
  -0.245568;0.426416;-0.870555;,
  0.290532;0.224234;-0.930221;,
  -0.633616;0.664666;0.395915;,
  -0.455567;0.798521;0.393475;,
  -0.456544;0.797087;-0.395247;,
  -0.634243;0.663285;-0.397226;,
  0.456544;0.797087;-0.395247;,
  0.455567;0.798521;0.393475;,
  0.633612;0.664669;0.395917;,
  0.634238;0.663288;-0.397228;,
  -0.065107;0.347988;0.935236;,
  -0.248696;0.420228;0.872673;,
  -0.349081;-0.166372;0.922205;,
  -0.242131;0.419132;-0.875044;,
  -0.059120;0.346747;-0.936094;,
  -0.344320;-0.168850;-0.923544;,
  -0.461183;0.791630;0.400789;,
  -0.265396;0.871282;0.412834;,
  -0.263362;0.871310;-0.414076;,
  -0.458920;0.792120;-0.402416;,
  -0.922839;-0.004274;0.385161;,
  -0.922007;-0.005255;-0.387139;,
  -0.880660;-0.306598;-0.361158;,
  -0.881516;-0.305590;0.359922;,
  0.065106;0.347986;0.935236;,
  0.349081;-0.166372;0.922206;,
  0.506157;-0.003671;0.862434;,
  0.059118;0.346745;-0.936095;,
  0.242131;0.419132;-0.875044;,
  0.189272;-0.134454;-0.972676;,
  0.458920;0.792120;-0.402416;,
  0.263356;0.871310;-0.414080;,
  0.265389;0.871282;0.412838;,
  0.461183;0.791630;0.400789;,
  0.922007;-0.005255;-0.387139;,
  0.922839;-0.004274;0.385161;,
  0.881516;-0.305590;0.359922;,
  0.880660;-0.306598;-0.361158;,
  -0.115145;-0.350809;0.929341;,
  0.044538;-0.485476;0.873115;,
  0.364245;0.018701;0.931116;,
  0.361903;0.022903;-0.931934;,
  0.452302;-0.166050;-0.876271;,
  -0.118435;-0.347368;-0.930219;,
  0.922611;-0.019748;-0.385227;,
  0.923003;-0.021083;0.384214;,
  0.856297;-0.322957;0.403055;,
  0.856183;-0.321372;-0.404562;,
  -0.186127;-0.901652;0.390360;,
  -0.187303;-0.900955;-0.391405;,
  0.084744;-0.911265;-0.403006;,
  0.086160;-0.911810;0.401472;,
  -0.364245;0.018701;0.931116;,
  -0.454787;-0.170615;0.874105;,
  0.115143;-0.350808;0.929342;,
  -0.361903;0.022903;-0.931934;,
  0.118434;-0.347367;-0.930220;,
  -0.041002;-0.481770;-0.875338;,
  -0.086160;-0.911809;0.401473;,
  -0.084745;-0.911265;-0.403008;,
  0.187302;-0.900954;-0.391407;,
  0.186126;-0.901651;0.390361;,
  -0.923003;-0.021083;0.384214;,
  -0.922611;-0.019748;-0.385227;,
  -0.856183;-0.321372;-0.404562;,
  -0.856297;-0.322957;0.403055;,
  0.830532;-0.252276;-0.496562;,
  0.650218;0.385394;0.654743;,
  0.651783;0.380284;-0.656173;,
  -0.676610;-0.388353;0.625604;,
  -0.673019;-0.391420;-0.627564;,
  0.001665;0.740919;0.671592;,
  0.673019;-0.391420;-0.627564;,
  0.748360;0.144397;0.647384;,
  -0.341003;-0.684935;-0.643879;,
  0.337456;-0.687750;0.642747;,
  -0.746604;0.148709;-0.648435;,
  0.000008;1.000000;0.000000;,
  0.000007;0.641054;-0.767495;,
  0.664670;0.641055;-0.383747;,
  0.664670;0.641055;0.383747;,
  0.000007;0.641055;0.767495;,
  -0.664661;0.641062;0.383751;,
  -0.664661;0.641062;-0.383751;,
  0.000006;0.244143;-0.969739;,
  0.839818;0.244144;-0.484870;,
  0.839819;0.244144;0.484869;,
  0.000006;0.244143;0.969739;,
  -0.839815;0.244145;0.484875;,
  -0.839815;0.244145;-0.484875;,
  0.500000;-0.000001;-0.866025;,
  1.000000;-0.000001;-0.000000;,
  0.500000;-0.000001;0.866025;,
  -0.499991;-0.000001;0.866030;,
  -1.000000;-0.000001;0.000000;,
  0.187475;-0.283439;-0.940487;,
  0.720750;-0.283440;-0.632599;,
  0.908222;-0.283440;0.307889;,
  0.187475;-0.283439;0.940487;,
  -0.720744;-0.283441;0.632605;,
  -0.908220;-0.283441;-0.307892;,
  0.000007;-0.641055;-0.767495;,
  0.664669;-0.641056;-0.383747;,
  0.664669;-0.641056;0.383747;,
  0.000007;-0.641055;0.767495;,
  -0.664660;-0.641063;0.383751;,
  -0.664660;-0.641063;-0.383751;,
  0.000008;-1.000000;-0.000000;,
  0.000009;1.000000;0.000000;,
  0.000007;0.641055;-0.767495;,
  -0.664661;0.641062;-0.383751;,
  -0.664661;0.641062;0.383751;,
  0.000007;0.641055;0.767495;,
  0.664670;0.641055;0.383747;,
  0.000006;0.244144;-0.969739;,
  -0.839815;0.244145;-0.484875;,
  -0.839815;0.244145;0.484875;,
  0.000006;0.244143;0.969739;,
  0.839819;0.244144;0.484869;,
  0.839818;0.244144;-0.484870;,
  -0.499991;-0.000001;-0.866030;,
  0.500000;-0.000001;0.866025;,
  -0.187463;-0.283439;-0.940489;,
  -0.720744;-0.283441;-0.632605;,
  -0.908220;-0.283441;0.307893;,
  -0.187463;-0.283439;0.940489;,
  0.720750;-0.283440;0.632599;,
  0.908221;-0.283440;-0.307889;,
  0.000007;-0.641056;-0.767494;,
  -0.664660;-0.641063;-0.383751;,
  -0.664660;-0.641063;0.383751;,
  0.000007;-0.641055;0.767495;,
  0.664669;-0.641056;0.383747;,
  0.664669;-0.641056;-0.383747;,
  0.000009;-1.000000;-0.000000;,
  0.995649;-0.093181;-0.000000;,
  0.497825;-0.093183;0.862257;,
  -0.497816;-0.093183;0.862262;,
  -0.995649;-0.093182;0.000000;,
  -0.497816;-0.093183;-0.862262;,
  0.500000;-0.000001;-0.866025;,
  0.497825;-0.093183;0.862257;,
  0.995649;-0.093182;-0.000000;,
  0.497824;-0.093183;-0.862257;;
  232;
  3;0,12,13;,
  4;15,12,0,0;,
  4;90,13,12,88;,
  4;0,0,13,20;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;2,88,12;,
  3;2,98,88;,
  3;2,59,98;,
  3;2,48,59;,
  3;2,15,48;,
  3;2,12,15;,
  3;1,20,13;,
  3;1,74,20;,
  3;1,84,74;,
  3;1,97,84;,
  3;1,90,97;,
  3;1,13,90;,
  3;0,14,15;,
  4;17,14,0,0;,
  4;48,15,14,46;,
  3;3,46,14;,
  3;3,53,46;,
  3;3,38,53;,
  3;3,33,38;,
  3;3,17,33;,
  3;3,14,17;,
  3;0,16,17;,
  4;19,16,0,0;,
  4;33,17,16,34;,
  3;4,34,16;,
  3;4,44,34;,
  3;4,68,44;,
  3;4,60,68;,
  3;4,19,60;,
  3;4,16,19;,
  3;0,18,19;,
  4;21,18,0,0;,
  4;60,19,18,61;,
  3;5,61,18;,
  3;5,72,61;,
  3;5,81,72;,
  3;5,76,81;,
  3;5,21,76;,
  3;5,18,21;,
  3;0,20,21;,
  4;76,21,20,74;,
  3;11,22,23;,
  4;31,22,11,11;,
  4;91,23,22,92;,
  4;11,11,23,24;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;6,92,22;,
  3;6,96,92;,
  3;6,85,96;,
  3;6,79,85;,
  3;6,31,79;,
  3;6,22,31;,
  3;7,24,23;,
  3;7,51,24;,
  3;7,58,51;,
  3;7,99,58;,
  3;7,91,99;,
  3;7,23,91;,
  3;11,24,25;,
  4;50,25,24,51;,
  4;11,11,25,26;,
  3;8,26,25;,
  3;8,35,26;,
  3;8,41,35;,
  3;8,54,41;,
  3;8,50,54;,
  3;8,25,50;,
  3;11,26,27;,
  4;37,27,26,35;,
  4;11,11,27,28;,
  3;9,28,27;,
  3;9,63,28;,
  3;9,67,63;,
  3;9,45,67;,
  3;9,37,45;,
  3;9,27,37;,
  3;11,28,29;,
  4;65,29,28,63;,
  4;11,11,29,30;,
  3;10,30,29;,
  3;10,77,30;,
  3;10,80,77;,
  3;10,73,80;,
  3;10,102,73;,
  3;10,29,65;,
  3;11,30,31;,
  4;79,31,30,77;,
  3;32,33,34;,
  4;38,33,32,39;,
  4;43,103,34,44;,
  3;43,39,32;,
  3;35,36,37;,
  4;40,36,35,41;,
  4;45,37,104,42;,
  3;40,42,36;,
  4;38,39,40,41;,
  4;42,40,39,43;,
  4;53,38,41,54;,
  4;42,43,44,45;,
  4;67,45,44,68;,
  3;46,47,48;,
  4;52,47,46,53;,
  4;59,48,105,56;,
  3;52,56,47;,
  3;49,50,51;,
  4;54,50,49,55;,
  4;57,106,51,58;,
  3;57,55,49;,
  4;52,53,54,55;,
  4;56,52,55,57;,
  4;56,57,58,59;,
  4;98,59,58,99;,
  3;60,61,62;,
  4;71,62,61,72;,
  4;68,60,107,69;,
  3;71,69,62;,
  3;63,64,65;,
  4;66,64,63,67;,
  4;73,65,108,70;,
  3;66,70,64;,
  4;66,67,68,69;,
  4;70,66,69,71;,
  4;70,71,72,73;,
  4;80,73,72,81;,
  3;74,75,76;,
  4;87,75,74,84;,
  4;81,76,109,82;,
  3;87,82,75;,
  3;77,78,79;,
  4;83,78,77,80;,
  4;85,79,110,86;,
  3;83,86,78;,
  4;80,81,82,83;,
  4;86,83,82,87;,
  4;84,85,86,87;,
  4;96,85,84,97;,
  3;88,89,90;,
  4;101,89,88,98;,
  4;97,90,111,94;,
  3;101,94,89;,
  3;91,92,93;,
  4;95,93,92,96;,
  4;99,91,112,100;,
  3;95,100,93;,
  4;94,95,96,97;,
  4;100,95,94,101;,
  4;98,99,100,101;,
  3;113,115,114;,
  3;113,116,115;,
  3;113,117,116;,
  3;113,118,117;,
  3;113,119,118;,
  3;113,114,119;,
  4;114,115,121,120;,
  4;115,116,122,121;,
  4;116,117,123,122;,
  4;117,118,124,123;,
  4;118,119,125,124;,
  4;119,114,120,125;,
  4;120,121,126,126;,
  4;121,122,127,127;,
  4;122,123,128,128;,
  4;123,124,129,129;,
  4;124,125,130,130;,
  4;125,120,156,156;,
  4;126,126,132,131;,
  4;127,127,133,171;,
  4;128,128,134,172;,
  4;129,129,135,173;,
  4;130,130,136,174;,
  4;156,156,175,175;,
  4;131,132,138,137;,
  4;132,133,139,138;,
  4;133,134,140,139;,
  4;134,135,141,140;,
  4;135,136,142,141;,
  4;136,131,137,142;,
  3;137,138,143;,
  3;138,139,143;,
  3;139,140,143;,
  3;140,141,143;,
  3;141,142,143;,
  3;142,137,143;,
  3;144,145,146;,
  3;144,146,147;,
  3;144,147,148;,
  3;144,148,149;,
  3;144,149,115;,
  3;144,115,145;,
  4;145,150,151,146;,
  4;146,151,152,147;,
  4;147,152,153,148;,
  4;148,153,154,149;,
  4;149,154,155,115;,
  4;115,155,150,145;,
  4;150,156,156,151;,
  4;151,130,130,152;,
  4;152,129,129,153;,
  4;153,157,157,154;,
  4;154,127,127,155;,
  4;155,176,176,150;,
  4;156,158,159,156;,
  4;130,174,160,130;,
  4;129,173,161,129;,
  4;157,177,162,157;,
  4;127,178,163,127;,
  4;176,179,179,176;,
  4;158,164,165,159;,
  4;159,165,166,160;,
  4;160,166,167,161;,
  4;161,167,168,162;,
  4;162,168,169,163;,
  4;163,169,164,158;,
  3;164,170,165;,
  3;165,170,166;,
  3;166,170,167;,
  3;167,170,168;,
  3;168,170,169;,
  3;169,170,164;;
 }
}
