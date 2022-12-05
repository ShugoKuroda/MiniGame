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
 262;
 1.06488;199.81440;-11.06391;,
 5.82807;199.81440;-9.58161;,
 11.64441;-1.79196;-19.26141;,
 1.06488;-1.79196;-22.24116;,
 9.31497;199.81440;-5.53194;,
 19.38918;-1.79196;-11.12058;,
 10.59126;199.81440;0.00000;,
 22.22397;-1.79196;0.00000;,
 9.31497;199.81440;5.53197;,
 19.38918;-1.79196;11.12058;,
 5.82807;199.81440;9.58161;,
 11.64444;-1.79196;19.26141;,
 1.06488;199.81440;11.06391;,
 1.06488;-1.79196;22.24116;,
 -3.69828;199.81440;9.58164;,
 -9.51465;-1.79196;19.26141;,
 -7.18515;199.81440;5.53197;,
 -17.25939;-1.79196;11.12058;,
 -8.46147;199.81440;0.00000;,
 -20.09418;-1.79196;0.00000;,
 -7.18518;199.81440;-5.53194;,
 -17.25942;-1.79196;-11.12058;,
 -3.69831;199.81440;-9.58161;,
 -9.51465;-1.79196;-19.26141;,
 1.06488;199.81440;-11.06391;,
 1.06488;-1.79196;-22.24116;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;199.81440;0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 1.06488;-1.79196;-0.00000;,
 -0.06711;170.61876;-24.57417;,
 -0.06711;187.02769;-18.43062;,
 14.62251;187.02769;-13.03242;,
 19.51905;170.61876;-17.37657;,
 20.70720;187.02769;0.00000;,
 27.63186;170.61876;0.00000;,
 14.62251;187.02769;13.03242;,
 19.51905;170.61876;17.37657;,
 -0.06711;187.02769;18.43062;,
 -0.06711;170.61876;24.57417;,
 -14.75673;187.02769;13.03242;,
 -19.65327;170.61876;17.37657;,
 -20.84139;187.02769;0.00000;,
 -27.76611;170.61876;0.00000;,
 -14.75673;187.02769;-13.03242;,
 -19.65327;170.61876;-17.37657;,
 -0.06711;187.02769;-18.43062;,
 -0.06711;170.61876;-24.57417;,
 -0.06711;203.43663;-12.28707;,
 9.72597;203.43663;-8.68827;,
 13.78239;203.43663;0.00000;,
 9.72597;203.43663;8.68827;,
 -0.06711;203.43663;12.28707;,
 -9.86019;203.43663;8.68827;,
 -13.91661;203.43663;0.00000;,
 -9.86019;203.43663;-8.68827;,
 -0.06711;203.43663;-12.28707;,
 -0.06711;219.84555;-6.14355;,
 4.82943;219.84555;-4.34415;,
 6.85764;219.84555;0.00000;,
 4.82943;219.84555;4.34415;,
 -0.06711;219.84555;6.14355;,
 -4.96365;219.84555;4.34415;,
 -6.99186;219.84555;0.00000;,
 -4.96365;219.84555;-4.34415;,
 -0.06711;219.84555;-6.14355;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;236.25448;0.00000;,
 -0.06711;170.61876;0.00000;,
 -0.06711;170.61876;-24.57417;,
 19.51905;170.61876;-17.37657;,
 27.63186;170.61876;0.00000;,
 19.51905;170.61876;17.37657;,
 -0.06711;170.61876;24.57417;,
 -19.65327;170.61876;17.37657;,
 -27.76611;170.61876;0.00000;,
 -19.65327;170.61876;-17.37657;,
 -0.06711;136.25788;-36.80694;,
 -0.06711;152.66680;-27.60522;,
 21.82542;152.66680;-19.51983;,
 29.12289;136.25788;-26.02644;,
 30.89364;152.66680;0.00000;,
 41.21379;136.25788;0.00000;,
 21.82542;152.66680;19.51983;,
 29.12289;136.25788;26.02644;,
 -0.06711;152.66680;27.60522;,
 -0.06711;136.25788;36.80694;,
 -21.95961;152.66680;19.51983;,
 -29.25714;136.25788;26.02644;,
 -31.02780;152.66680;0.00000;,
 -41.34801;136.25788;0.00000;,
 -21.95961;152.66680;-19.51983;,
 -29.25714;136.25788;-26.02644;,
 -0.06711;152.66680;-27.60522;,
 -0.06711;136.25788;-36.80694;,
 -0.06711;169.07575;-18.40347;,
 14.52789;169.07575;-13.01322;,
 20.57334;169.07575;0.00000;,
 14.52789;169.07575;13.01322;,
 -0.06711;169.07575;18.40347;,
 -14.66214;169.07575;13.01322;,
 -20.70756;169.07575;0.00000;,
 -14.66214;169.07575;-13.01322;,
 -0.06711;169.07575;-18.40347;,
 -0.06711;185.48468;-9.20175;,
 7.23042;185.48468;-6.50661;,
 10.25313;185.48468;0.00000;,
 7.23042;185.48468;6.50661;,
 -0.06711;185.48468;9.20175;,
 -7.36461;185.48468;6.50661;,
 -10.38735;185.48468;0.00000;,
 -7.36461;185.48468;-6.50661;,
 -0.06711;185.48468;-9.20175;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;201.89358;0.00000;,
 -0.06711;136.25788;0.00000;,
 -0.06711;136.25788;-36.80694;,
 29.12289;136.25788;-26.02644;,
 41.21379;136.25788;0.00000;,
 29.12289;136.25788;26.02644;,
 -0.06711;136.25788;36.80694;,
 -29.25714;136.25788;26.02644;,
 -41.34801;136.25788;0.00000;,
 -29.25714;136.25788;-26.02644;,
 -0.06711;49.08879;-59.41167;,
 -0.06711;65.49771;-44.55879;,
 33.05199;65.49771;-31.50783;,
 44.09175;49.08879;-42.01041;,
 46.77051;65.49771;0.00000;,
 62.38287;49.08879;0.00000;,
 33.05199;65.49771;31.50783;,
 44.09175;49.08879;42.01041;,
 -0.06711;65.49771;44.55879;,
 -0.06711;49.08879;59.41167;,
 -33.18621;65.49771;31.50783;,
 -44.22594;49.08879;42.01041;,
 -46.90458;65.49771;0.00000;,
 -62.51712;49.08879;0.00000;,
 -33.18621;65.49771;-31.50783;,
 -44.22591;49.08879;-42.01041;,
 -0.06711;65.49771;-44.55879;,
 -0.06711;49.08879;-59.41167;,
 -0.06711;81.90663;-29.70585;,
 22.01232;81.90663;-21.00522;,
 31.15788;81.90663;0.00000;,
 22.01232;81.90663;21.00522;,
 -0.06711;81.90663;29.70585;,
 -22.14651;81.90663;21.00522;,
 -31.29210;81.90663;0.00000;,
 -22.14651;81.90663;-21.00522;,
 -0.06711;81.90663;-29.70585;,
 -0.06711;98.31558;-14.85291;,
 10.97265;98.31558;-10.50261;,
 15.54540;98.31558;0.00000;,
 10.97265;98.31558;10.50261;,
 -0.06711;98.31558;14.85291;,
 -11.10681;98.31558;10.50261;,
 -15.67962;98.31558;0.00000;,
 -11.10681;98.31558;-10.50261;,
 -0.06711;98.31558;-14.85291;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;114.72447;0.00000;,
 -0.06711;49.08879;0.00000;,
 -0.06711;49.08879;-59.41167;,
 44.09175;49.08879;-42.01041;,
 62.38287;49.08879;0.00000;,
 44.09175;49.08879;42.01041;,
 -0.06711;49.08879;59.41167;,
 -44.22594;49.08879;42.01041;,
 -62.51712;49.08879;0.00000;,
 -44.22591;49.08879;-42.01041;,
 -0.06711;92.51215;-52.18605;,
 -0.06711;108.92106;-39.13953;,
 26.26224;108.92106;-27.67581;,
 35.03868;92.51215;-36.90111;,
 37.16826;108.92106;0.00000;,
 49.57995;92.51215;0.00000;,
 26.26224;108.92106;27.67581;,
 35.03868;92.51215;36.90111;,
 -0.06711;108.92106;39.13953;,
 -0.06711;92.51215;52.18605;,
 -26.39643;108.92106;27.67581;,
 -35.17293;92.51215;36.90111;,
 -37.30239;108.92106;0.00000;,
 -49.71420;92.51215;0.00000;,
 -26.39643;108.92106;-27.67581;,
 -35.17290;92.51215;-36.90111;,
 -0.06711;108.92106;-39.13953;,
 -0.06711;92.51215;-52.18605;,
 -0.06711;125.33001;-26.09301;,
 17.48580;125.33001;-18.45057;,
 24.75642;125.33001;0.00000;,
 17.48580;125.33001;18.45057;,
 -0.06711;125.33001;26.09301;,
 -17.62002;125.33001;18.45054;,
 -24.89064;125.33001;0.00000;,
 -17.62002;125.33001;-18.45057;,
 -0.06711;125.33001;-26.09301;,
 -0.06711;141.73894;-13.04652;,
 8.70936;141.73894;-9.22527;,
 12.34467;141.73894;0.00000;,
 8.70936;141.73894;9.22527;,
 -0.06711;141.73894;13.04652;,
 -8.84355;141.73894;9.22527;,
 -12.47886;141.73894;0.00000;,
 -8.84355;141.73894;-9.22527;,
 -0.06711;141.73894;-13.04652;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;158.14785;0.00000;,
 -0.06711;92.51215;0.00000;,
 -0.06711;92.51215;-52.18605;,
 35.03868;92.51215;-36.90111;,
 49.57995;92.51215;0.00000;,
 35.03868;92.51215;36.90111;,
 -0.06711;92.51215;52.18605;,
 -35.17293;92.51215;36.90111;,
 -49.71420;92.51215;0.00000;,
 -35.17290;92.51215;-36.90111;;
 
 196;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;18,20,21,19;,
 4;20,22,23,21;,
 4;22,24,25,23;,
 3;26,1,0;,
 3;27,4,1;,
 3;28,6,4;,
 3;29,8,6;,
 3;30,10,8;,
 3;31,12,10;,
 3;32,14,12;,
 3;33,16,14;,
 3;34,18,16;,
 3;35,20,18;,
 3;36,22,20;,
 3;37,24,22;,
 3;38,3,2;,
 3;39,2,5;,
 3;40,5,7;,
 3;41,7,9;,
 3;42,9,11;,
 3;43,11,13;,
 3;44,13,15;,
 3;45,15,17;,
 3;46,17,19;,
 3;47,19,21;,
 3;48,21,23;,
 3;49,23,25;,
 4;50,51,52,53;,
 4;53,52,54,55;,
 4;55,54,56,57;,
 4;57,56,58,59;,
 4;59,58,60,61;,
 4;61,60,62,63;,
 4;63,62,64,65;,
 4;65,64,66,67;,
 4;51,68,69,52;,
 4;52,69,70,54;,
 4;54,70,71,56;,
 4;56,71,72,58;,
 4;58,72,73,60;,
 4;60,73,74,62;,
 4;62,74,75,64;,
 4;64,75,76,66;,
 4;68,77,78,69;,
 4;69,78,79,70;,
 4;70,79,80,71;,
 4;71,80,81,72;,
 4;72,81,82,73;,
 4;73,82,83,74;,
 4;74,83,84,75;,
 4;75,84,85,76;,
 3;77,86,78;,
 3;78,87,79;,
 3;79,88,80;,
 3;80,89,81;,
 3;81,90,82;,
 3;82,91,83;,
 3;83,92,84;,
 3;84,93,85;,
 3;94,95,96;,
 3;94,96,97;,
 3;94,97,98;,
 3;94,98,99;,
 3;94,99,100;,
 3;94,100,101;,
 3;94,101,102;,
 3;94,102,95;,
 4;103,104,105,106;,
 4;106,105,107,108;,
 4;108,107,109,110;,
 4;110,109,111,112;,
 4;112,111,113,114;,
 4;114,113,115,116;,
 4;116,115,117,118;,
 4;118,117,119,120;,
 4;104,121,122,105;,
 4;105,122,123,107;,
 4;107,123,124,109;,
 4;109,124,125,111;,
 4;111,125,126,113;,
 4;113,126,127,115;,
 4;115,127,128,117;,
 4;117,128,129,119;,
 4;121,130,131,122;,
 4;122,131,132,123;,
 4;123,132,133,124;,
 4;124,133,134,125;,
 4;125,134,135,126;,
 4;126,135,136,127;,
 4;127,136,137,128;,
 4;128,137,138,129;,
 3;130,139,131;,
 3;131,140,132;,
 3;132,141,133;,
 3;133,142,134;,
 3;134,143,135;,
 3;135,144,136;,
 3;136,145,137;,
 3;137,146,138;,
 3;147,148,149;,
 3;147,149,150;,
 3;147,150,151;,
 3;147,151,152;,
 3;147,152,153;,
 3;147,153,154;,
 3;147,154,155;,
 3;147,155,148;,
 4;156,157,158,159;,
 4;159,158,160,161;,
 4;161,160,162,163;,
 4;163,162,164,165;,
 4;165,164,166,167;,
 4;167,166,168,169;,
 4;169,168,170,171;,
 4;171,170,172,173;,
 4;157,174,175,158;,
 4;158,175,176,160;,
 4;160,176,177,162;,
 4;162,177,178,164;,
 4;164,178,179,166;,
 4;166,179,180,168;,
 4;168,180,181,170;,
 4;170,181,182,172;,
 4;174,183,184,175;,
 4;175,184,185,176;,
 4;176,185,186,177;,
 4;177,186,187,178;,
 4;178,187,188,179;,
 4;179,188,189,180;,
 4;180,189,190,181;,
 4;181,190,191,182;,
 3;183,192,184;,
 3;184,193,185;,
 3;185,194,186;,
 3;186,195,187;,
 3;187,196,188;,
 3;188,197,189;,
 3;189,198,190;,
 3;190,199,191;,
 3;200,201,202;,
 3;200,202,203;,
 3;200,203,204;,
 3;200,204,205;,
 3;200,205,206;,
 3;200,206,207;,
 3;200,207,208;,
 3;200,208,201;,
 4;209,210,211,212;,
 4;212,211,213,214;,
 4;214,213,215,216;,
 4;216,215,217,218;,
 4;218,217,219,220;,
 4;220,219,221,222;,
 4;222,221,223,224;,
 4;224,223,225,226;,
 4;210,227,228,211;,
 4;211,228,229,213;,
 4;213,229,230,215;,
 4;215,230,231,217;,
 4;217,231,232,219;,
 4;219,232,233,221;,
 4;221,233,234,223;,
 4;223,234,235,225;,
 4;227,236,237,228;,
 4;228,237,238,229;,
 4;229,238,239,230;,
 4;230,239,240,231;,
 4;231,240,241,232;,
 4;232,241,242,233;,
 4;233,242,243,234;,
 4;234,243,244,235;,
 3;236,245,237;,
 3;237,246,238;,
 3;238,247,239;,
 3;239,248,240;,
 3;240,249,241;,
 3;241,250,242;,
 3;242,251,243;,
 3;243,252,244;,
 3;253,254,255;,
 3;253,255,256;,
 3;253,256,257;,
 3;253,257,258;,
 3;253,258,259;,
 3;253,259,260;,
 3;253,260,261;,
 3;253,261,254;;
 
 MeshMaterialList {
  7;
  196;
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
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5;;
  Material {
   0.024800;0.800000;0.169600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Downloads\\Ver.2.2\\data\\TEXTURE\\leaf000.jpg";
   }
  }
  Material {
   0.520800;0.094400;0.094400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\student\\Downloads\\Ver.2.2\\data\\TEXTURE\\wood000.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.401600;0.179200;0.103200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.006400;0.298400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.659200;0.800000;0.787200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.222480;0.270000;0.265680;;
  }
  Material {
   0.248000;0.248000;0.248000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  154;
  0.000000;1.000000;0.000000;,
  -0.000000;0.056124;-0.998424;,
  0.531704;0.056456;-0.845046;,
  0.882337;0.057036;-0.467150;,
  0.998368;0.057107;0.000002;,
  0.882346;0.056867;0.467152;,
  0.531704;0.056456;0.845047;,
  0.000001;0.056124;0.998424;,
  -0.531705;0.056456;0.845046;,
  -0.882337;0.057036;0.467149;,
  -0.998358;0.057275;0.000002;,
  -0.882338;0.057036;-0.467148;,
  -0.531705;0.056456;-0.845046;,
  0.000000;-1.000000;-0.000000;,
  -0.000000;0.350633;-0.936513;,
  0.627455;0.368791;-0.685779;,
  0.921320;0.388805;0.000000;,
  0.627455;0.368791;0.685779;,
  -0.000000;0.350633;0.936513;,
  -0.627455;0.368792;0.685779;,
  -0.921319;0.388806;0.000000;,
  -0.627455;0.368792;-0.685779;,
  -0.000000;0.350633;-0.936513;,
  0.627455;0.368792;-0.685779;,
  0.921319;0.388807;0.000000;,
  0.627455;0.368792;0.685779;,
  -0.000000;0.350633;0.936513;,
  -0.627455;0.368792;0.685779;,
  -0.921319;0.388807;0.000000;,
  -0.627455;0.368792;-0.685779;,
  -0.000000;0.350632;-0.936513;,
  0.627455;0.368792;-0.685779;,
  0.921319;0.388808;0.000000;,
  0.627455;0.368792;0.685779;,
  -0.000000;0.350632;0.936513;,
  -0.627455;0.368792;0.685779;,
  -0.921319;0.388807;0.000000;,
  -0.627455;0.368792;-0.685779;,
  0.000000;0.350632;-0.936513;,
  0.627455;0.368792;-0.685779;,
  0.921319;0.388807;0.000000;,
  0.627455;0.368792;0.685779;,
  0.000000;0.350632;0.936513;,
  -0.627455;0.368792;0.685779;,
  -0.921319;0.388807;0.000000;,
  -0.627455;0.368792;-0.685779;,
  0.333254;0.401736;-0.852965;,
  0.000000;0.489118;-0.872217;,
  0.580670;0.509907;-0.634679;,
  0.846497;0.532393;0.000000;,
  0.580670;0.509907;0.634679;,
  0.000000;0.489118;0.872217;,
  -0.580670;0.509908;0.634678;,
  -0.846496;0.532395;0.000000;,
  -0.580670;0.509908;-0.634678;,
  0.000000;0.489118;-0.872217;,
  0.580669;0.509908;-0.634679;,
  0.846496;0.532395;0.000000;,
  0.580669;0.509908;0.634679;,
  0.000000;0.489118;0.872217;,
  -0.580670;0.509908;0.634678;,
  -0.846496;0.532395;0.000000;,
  -0.580670;0.509908;-0.634678;,
  -0.000000;0.489118;-0.872217;,
  0.580670;0.509908;-0.634678;,
  0.846496;0.532395;0.000000;,
  0.580670;0.509908;0.634678;,
  -0.000000;0.489118;0.872217;,
  -0.580670;0.509908;0.634678;,
  -0.846496;0.532394;0.000000;,
  -0.580670;0.509908;-0.634678;,
  -0.000000;0.489119;-0.872217;,
  0.580670;0.509908;-0.634678;,
  0.846496;0.532395;0.000000;,
  0.580670;0.509908;0.634678;,
  -0.000000;0.489119;0.872217;,
  -0.580670;0.509908;0.634678;,
  -0.846496;0.532395;0.000000;,
  -0.580670;0.509908;-0.634678;,
  0.302945;0.548608;-0.779265;,
  -0.000000;0.671081;-0.741384;,
  0.507551;0.680084;-0.529035;,
  0.724470;0.689306;0.000000;,
  0.507551;0.680084;0.529035;,
  -0.000000;0.671081;0.741384;,
  -0.507550;0.680084;0.529035;,
  -0.724469;0.689307;-0.000000;,
  -0.507551;0.680084;-0.529035;,
  -0.000000;0.671081;-0.741384;,
  0.507550;0.680084;-0.529035;,
  0.724469;0.689307;0.000000;,
  0.507550;0.680084;0.529035;,
  -0.000000;0.671081;0.741384;,
  -0.507550;0.680084;0.529035;,
  -0.724469;0.689307;-0.000000;,
  -0.507551;0.680084;-0.529035;,
  -0.000000;0.671081;-0.741384;,
  0.507551;0.680084;-0.529035;,
  0.724470;0.689306;0.000000;,
  0.507551;0.680084;0.529035;,
  -0.000000;0.671081;0.741384;,
  -0.507551;0.680084;0.529035;,
  -0.724470;0.689306;0.000000;,
  -0.507551;0.680084;-0.529035;,
  -0.000001;0.671081;-0.741384;,
  0.507550;0.680085;-0.529034;,
  0.724470;0.689306;0.000000;,
  0.507550;0.680085;0.529034;,
  -0.000001;0.671081;0.741384;,
  -0.507550;0.680084;0.529035;,
  -0.724469;0.689307;0.000000;,
  -0.507550;0.680084;-0.529035;,
  0.623531;0.734813;-0.266944;,
  -0.000000;0.622348;-0.782741;,
  0.569977;0.612670;-0.547505;,
  0.797542;0.603263;0.000000;,
  0.569977;0.612670;0.547505;,
  0.000000;0.622348;0.782741;,
  -0.569976;0.612671;0.547504;,
  -0.797541;0.603265;-0.000000;,
  -0.569977;0.612671;-0.547504;,
  -0.000000;0.622347;-0.782742;,
  0.569977;0.612670;-0.547505;,
  0.797542;0.603263;0.000000;,
  0.569977;0.612670;0.547505;,
  -0.000000;0.622347;0.782741;,
  -0.569977;0.612670;0.547505;,
  -0.797542;0.603264;-0.000000;,
  -0.569977;0.612670;-0.547505;,
  -0.000000;0.622346;-0.782742;,
  0.569977;0.612670;-0.547505;,
  0.797542;0.603264;0.000000;,
  0.569977;0.612670;0.547505;,
  -0.000000;0.622346;0.782742;,
  -0.569978;0.612670;0.547505;,
  -0.797542;0.603263;0.000000;,
  -0.569978;0.612670;-0.547505;,
  -0.000000;0.622347;-0.782741;,
  0.569977;0.612670;-0.547504;,
  0.797542;0.603264;0.000000;,
  0.569977;0.612670;0.547504;,
  -0.000001;0.622347;0.782741;,
  -0.569978;0.612670;0.547504;,
  -0.797542;0.603264;0.000000;,
  -0.569978;0.612670;-0.547504;,
  0.698159;0.658719;-0.280468;,
  0.333254;0.401736;0.852965;,
  -0.921319;0.388807;0.000000;,
  0.302945;0.548608;0.779265;,
  -0.846495;0.532396;0.000000;,
  -0.256855;0.723331;0.640951;,
  -0.507549;0.680085;-0.529035;,
  -0.291167;0.671101;0.681796;,
  -0.569978;0.612670;-0.547504;;
  196;
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,8,8,7;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,11,11,10;,
  4;11,12,12,11;,
  4;12,1,1,12;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  4;14,22,23,15;,
  4;15,23,24,16;,
  4;16,24,25,17;,
  4;17,25,26,18;,
  4;18,26,27,19;,
  4;19,27,28,20;,
  4;20,28,29,21;,
  4;21,29,22,14;,
  4;22,30,31,23;,
  4;23,31,32,24;,
  4;24,32,33,25;,
  4;25,33,34,26;,
  4;26,34,35,27;,
  4;27,35,36,28;,
  4;28,36,37,29;,
  4;29,37,30,22;,
  4;30,38,39,31;,
  4;31,39,40,32;,
  4;32,40,41,33;,
  4;33,41,42,34;,
  4;34,42,43,35;,
  4;35,43,44,36;,
  4;36,44,45,37;,
  4;37,45,38,30;,
  3;38,46,39;,
  3;39,46,40;,
  3;40,146,41;,
  3;41,146,42;,
  3;42,146,43;,
  3;43,147,44;,
  3;44,147,45;,
  3;45,46,38;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  4;47,55,56,48;,
  4;48,56,57,49;,
  4;49,57,58,50;,
  4;50,58,59,51;,
  4;51,59,60,52;,
  4;52,60,61,53;,
  4;53,61,62,54;,
  4;54,62,55,47;,
  4;55,63,64,56;,
  4;56,64,65,57;,
  4;57,65,66,58;,
  4;58,66,67,59;,
  4;59,67,68,60;,
  4;60,68,69,61;,
  4;61,69,70,62;,
  4;62,70,63,55;,
  4;63,71,72,64;,
  4;64,72,73,65;,
  4;65,73,74,66;,
  4;66,74,75,67;,
  4;67,75,76,68;,
  4;68,76,77,69;,
  4;69,77,78,70;,
  4;70,78,71,63;,
  3;71,79,72;,
  3;72,79,73;,
  3;73,148,74;,
  3;74,148,75;,
  3;75,148,76;,
  3;76,149,77;,
  3;77,149,78;,
  3;78,79,71;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  4;80,88,89,81;,
  4;81,89,90,82;,
  4;82,90,91,83;,
  4;83,91,92,84;,
  4;84,92,93,85;,
  4;85,93,94,86;,
  4;86,94,95,87;,
  4;87,95,88,80;,
  4;88,96,97,89;,
  4;89,97,98,90;,
  4;90,98,99,91;,
  4;91,99,100,92;,
  4;92,100,101,93;,
  4;93,101,102,94;,
  4;94,102,103,95;,
  4;95,103,96,88;,
  4;96,104,105,97;,
  4;97,105,106,98;,
  4;98,106,107,99;,
  4;99,107,108,100;,
  4;100,108,109,101;,
  4;101,109,110,102;,
  4;102,110,111,103;,
  4;103,111,104,96;,
  3;104,112,105;,
  3;105,112,106;,
  3;106,112,107;,
  3;107,150,108;,
  3;108,150,109;,
  3;109,150,110;,
  3;110,151,111;,
  3;111,151,104;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  4;113,121,122,114;,
  4;114,122,123,115;,
  4;115,123,124,116;,
  4;116,124,125,117;,
  4;117,125,126,118;,
  4;118,126,127,119;,
  4;119,127,128,120;,
  4;120,128,121,113;,
  4;121,129,130,122;,
  4;122,130,131,123;,
  4;123,131,132,124;,
  4;124,132,133,125;,
  4;125,133,134,126;,
  4;126,134,135,127;,
  4;127,135,136,128;,
  4;128,136,129,121;,
  4;129,137,138,130;,
  4;130,138,139,131;,
  4;131,139,140,132;,
  4;132,140,141,133;,
  4;133,141,142,134;,
  4;134,142,143,135;,
  4;135,143,144,136;,
  4;136,144,137,129;,
  3;137,145,138;,
  3;138,145,139;,
  3;139,145,140;,
  3;140,152,141;,
  3;141,152,142;,
  3;142,152,143;,
  3;143,153,144;,
  3;144,153,137;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;;
 }
 MeshTextureCoords {
  262;
  0.000000;0.000000;,
  0.083330;0.000000;,
  0.083330;1.000000;,
  0.000000;1.000000;,
  0.166670;0.000000;,
  0.166670;1.000000;,
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.416670;0.000000;,
  0.416670;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.583330;0.000000;,
  0.583330;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.833330;0.000000;,
  0.833330;1.000000;,
  0.916670;0.000000;,
  0.916670;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.041670;0.000000;,
  0.125000;0.000000;,
  0.208330;0.000000;,
  0.291670;0.000000;,
  0.375000;0.000000;,
  0.458330;0.000000;,
  0.541670;0.000000;,
  0.625000;0.000000;,
  0.708330;0.000000;,
  0.791670;0.000000;,
  0.875000;0.000000;,
  0.958330;0.000000;,
  0.041670;1.000000;,
  0.125000;1.000000;,
  0.208330;1.000000;,
  0.291670;1.000000;,
  0.375000;1.000000;,
  0.458330;1.000000;,
  0.541670;1.000000;,
  0.625000;1.000000;,
  0.708330;1.000000;,
  0.791670;1.000000;,
  0.875000;1.000000;,
  0.958330;1.000000;,
  0.000000;1.000000;,
  0.000000;0.750000;,
  0.125000;0.750000;,
  0.125000;1.000000;,
  0.250000;0.750000;,
  0.250000;1.000000;,
  0.375000;0.750000;,
  0.375000;1.000000;,
  0.500000;0.750000;,
  0.500000;1.000000;,
  0.625000;0.750000;,
  0.625000;1.000000;,
  0.750000;0.750000;,
  0.750000;1.000000;,
  0.875000;0.750000;,
  0.875000;1.000000;,
  1.000000;0.750000;,
  1.000000;1.000000;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.750000;,
  0.125000;0.750000;,
  0.125000;1.000000;,
  0.250000;0.750000;,
  0.250000;1.000000;,
  0.375000;0.750000;,
  0.375000;1.000000;,
  0.500000;0.750000;,
  0.500000;1.000000;,
  0.625000;0.750000;,
  0.625000;1.000000;,
  0.750000;0.750000;,
  0.750000;1.000000;,
  0.875000;0.750000;,
  0.875000;1.000000;,
  1.000000;0.750000;,
  1.000000;1.000000;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.750000;,
  0.125000;0.750000;,
  0.125000;1.000000;,
  0.250000;0.750000;,
  0.250000;1.000000;,
  0.375000;0.750000;,
  0.375000;1.000000;,
  0.500000;0.750000;,
  0.500000;1.000000;,
  0.625000;0.750000;,
  0.625000;1.000000;,
  0.750000;0.750000;,
  0.750000;1.000000;,
  0.875000;0.750000;,
  0.875000;1.000000;,
  1.000000;0.750000;,
  1.000000;1.000000;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.750000;,
  0.125000;0.750000;,
  0.125000;1.000000;,
  0.250000;0.750000;,
  0.250000;1.000000;,
  0.375000;0.750000;,
  0.375000;1.000000;,
  0.500000;0.750000;,
  0.500000;1.000000;,
  0.625000;0.750000;,
  0.625000;1.000000;,
  0.750000;0.750000;,
  0.750000;1.000000;,
  0.875000;0.750000;,
  0.875000;1.000000;,
  1.000000;0.750000;,
  1.000000;1.000000;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.250000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
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
