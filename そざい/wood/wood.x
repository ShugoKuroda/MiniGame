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
 208;
 -0.12403;39.58269;-3.28933;,
 0.51649;39.58269;-3.21967;,
 0.77960;33.76696;-4.41140;,
 -0.12403;33.76696;-4.50967;,
 1.12705;39.58269;-3.01394;,
 1.64097;33.76696;-4.12117;,
 1.67912;39.58269;-2.68177;,
 2.41981;33.76696;-3.65255;,
 2.14687;39.58269;-2.23869;,
 3.07971;33.76696;-3.02747;,
 2.50844;39.58269;-1.70542;,
 3.58980;33.76696;-2.27513;,
 2.74692;39.58269;-1.10689;,
 3.92624;33.76696;-1.43074;,
 2.85116;39.58269;-0.47108;,
 4.07329;33.76696;-0.53376;,
 2.81627;39.58269;0.17226;,
 4.02408;33.76696;0.37386;,
 2.64391;39.58269;0.79307;,
 3.78091;33.76696;1.24968;,
 2.34212;39.58269;1.36231;,
 3.35515;33.76696;2.05275;,
 1.92501;39.58269;1.85337;,
 2.76671;33.76696;2.74552;,
 1.41209;39.58269;2.24328;,
 2.04310;33.76696;3.29560;,
 0.82735;39.58269;2.51381;,
 1.21815;33.76696;3.67726;,
 0.19812;39.58269;2.65231;,
 0.33045;33.76696;3.87266;,
 -0.44617;39.58269;2.65231;,
 -0.57850;33.76696;3.87266;,
 -1.07540;39.58269;2.51381;,
 -1.46620;33.76696;3.67726;,
 -1.66015;39.58269;2.24328;,
 -2.29115;33.76696;3.29560;,
 -2.17306;39.58269;1.85337;,
 -3.01476;33.76696;2.74553;,
 -2.59017;39.58269;1.36232;,
 -3.60320;33.76696;2.05276;,
 -2.89196;39.58269;0.79308;,
 -4.02896;33.76696;1.24969;,
 -3.06433;39.58269;0.17227;,
 -4.27214;33.76696;0.37387;,
 -3.09921;39.58269;-0.47108;,
 -4.32135;33.76696;-0.53375;,
 -2.99498;39.58269;-1.10688;,
 -4.17430;33.76696;-1.43073;,
 -2.75650;39.58269;-1.70542;,
 -3.83786;33.76696;-2.27513;,
 -2.39493;39.58269;-2.23869;,
 -3.32777;33.76696;-3.02746;,
 -1.92718;39.58269;-2.68177;,
 -2.66787;33.76696;-3.65255;,
 -1.37511;39.58269;-3.01394;,
 -1.88903;33.76696;-4.12116;,
 -0.76455;39.58269;-3.21967;,
 -1.02766;33.76696;-4.41139;,
 -0.12403;39.58269;-3.28933;,
 -0.12403;33.76696;-4.50967;,
 0.93069;25.62401;-5.09576;,
 -0.12403;25.62401;-5.21046;,
 1.93609;25.62401;-4.75700;,
 2.84516;25.62401;-4.21003;,
 3.61540;25.62401;-3.48042;,
 4.21078;25.62401;-2.60230;,
 4.60347;25.62401;-1.61671;,
 4.77512;25.62401;-0.56975;,
 4.71768;25.62401;0.48963;,
 4.43385;25.62401;1.51190;,
 3.93689;25.62401;2.44925;,
 3.45647;25.62401;3.25785;,
 2.40545;25.62401;3.89990;,
 1.44258;25.62401;4.34538;,
 0.40644;25.62401;4.57345;,
 -0.65449;25.62401;4.57345;,
 -1.69062;25.62401;4.34538;,
 -2.65351;25.62401;3.89991;,
 -3.49811;25.62401;3.25786;,
 -4.18495;25.62401;2.44925;,
 -4.68190;25.62401;1.51190;,
 -4.96573;25.62401;0.48964;,
 -5.02317;25.62401;-0.56974;,
 -4.85153;25.62401;-1.61670;,
 -4.45884;25.62401;-2.60229;,
 -3.86346;25.62401;-3.48042;,
 -3.09323;25.62401;-4.21002;,
 -2.18415;25.62401;-4.75700;,
 -1.17876;25.62401;-5.09575;,
 -0.12403;25.62401;-5.21046;,
 -0.12403;25.62401;-5.21046;,
 0.93069;25.62401;-5.09576;,
 1.90314;1.65882;-9.50040;,
 -0.12403;1.65882;-9.72087;,
 1.93609;25.62401;-4.75700;,
 3.83553;1.65882;-8.84930;,
 2.84516;25.62401;-4.21003;,
 5.58277;1.65882;-7.79803;,
 3.61540;25.62401;-3.48042;,
 7.06316;1.65882;-6.39572;,
 4.21078;25.62401;-2.60230;,
 8.20749;1.65882;-4.70796;,
 4.60347;25.62401;-1.61671;,
 8.96225;1.65882;-2.81366;,
 4.77512;25.62401;-0.56975;,
 9.29214;1.65882;-0.80140;,
 4.71768;25.62401;0.48963;,
 9.18175;1.65882;1.23474;,
 4.43385;25.62401;1.51190;,
 8.63622;1.65882;3.19953;,
 4.55398;26.05080;-0.29863;,
 7.68108;1.65882;5.00113;,
 3.45647;25.62401;3.25785;,
 6.36098;1.65882;6.55527;,
 2.40545;25.62401;3.89990;,
 4.73765;1.65882;7.78929;,
 1.44258;25.62401;4.34538;,
 2.88699;1.65882;8.64550;,
 0.40644;25.62401;4.57345;,
 0.89554;1.65882;9.08385;,
 -0.65449;25.62401;4.57345;,
 -1.14358;1.65882;9.08385;,
 -1.69062;25.62401;4.34538;,
 -3.13503;1.65882;8.64550;,
 -2.65351;25.62401;3.89991;,
 -4.98569;1.65882;7.78930;,
 -3.49811;25.62401;3.25786;,
 -6.60903;1.65882;6.55528;,
 -4.18495;25.62401;2.44925;,
 -7.92913;1.65882;5.00114;,
 -4.68190;25.62401;1.51190;,
 -8.88427;1.65882;3.19955;,
 -4.96573;25.62401;0.48964;,
 -9.42980;1.65882;1.23475;,
 -5.02317;25.62401;-0.56974;,
 -9.54020;1.65882;-0.80138;,
 -4.85153;25.62401;-1.61670;,
 -9.21031;1.65882;-2.81365;,
 -4.45884;25.62401;-2.60229;,
 -8.45555;1.65882;-4.70795;,
 -3.86346;25.62401;-3.48042;,
 -7.31123;1.65882;-6.39571;,
 -3.09323;25.62401;-4.21002;,
 -5.83083;1.65882;-7.79801;,
 -2.18415;25.62401;-4.75700;,
 -4.08360;1.65882;-8.84930;,
 -1.17876;25.62401;-5.09575;,
 -2.15122;1.65882;-9.50040;,
 -0.12403;25.62401;-5.21046;,
 -0.12403;1.65882;-9.72087;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 -0.12403;39.58269;-0.30977;,
 3.45647;25.62401;3.25785;,
 4.55398;26.05080;-0.29863;,
 4.43385;25.62401;1.51190;,
 -0.11788;26.00150;-11.63138;,
 -0.11788;52.65150;-0.20138;,
 7.96435;26.00150;-8.28361;,
 -0.11788;52.65150;-0.20138;,
 11.31212;26.00150;-0.20137;,
 -0.11788;52.65150;-0.20138;,
 7.96435;26.00150;7.88086;,
 -0.11788;52.65150;-0.20138;,
 -0.11788;26.00150;11.22862;,
 -0.11788;52.65150;-0.20138;,
 -8.20011;26.00150;7.88085;,
 -0.11788;52.65150;-0.20138;,
 -11.54788;26.00150;-0.20138;,
 -0.11788;52.65150;-0.20138;,
 -8.20011;26.00150;-8.28361;,
 -0.11788;52.65150;-0.20138;,
 -0.11788;26.00150;-11.63138;,
 -0.11788;26.00150;-0.20138;,
 -0.11788;26.00150;-11.63138;,
 7.96435;26.00150;-8.28361;,
 11.31212;26.00150;-0.20137;,
 7.96435;26.00150;7.88086;,
 -0.11788;26.00150;11.22862;,
 -8.20011;26.00150;7.88085;,
 -11.54788;26.00150;-0.20138;,
 -8.20011;26.00150;-8.28361;;
 
 134;
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
 4;24,26,27,25;,
 4;26,28,29,27;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 4;36,38,39,37;,
 4;38,40,41,39;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,50,51,49;,
 4;50,52,53,51;,
 4;52,54,55,53;,
 4;54,56,57,55;,
 4;56,58,59,57;,
 4;3,2,60,61;,
 4;2,5,62,60;,
 4;5,7,63,62;,
 4;7,9,64,63;,
 4;9,11,65,64;,
 4;11,13,66,65;,
 4;13,15,67,66;,
 4;15,17,68,67;,
 4;17,19,69,68;,
 4;19,21,70,69;,
 4;21,23,71,70;,
 4;23,25,72,71;,
 4;25,27,73,72;,
 4;27,29,74,73;,
 4;29,31,75,74;,
 4;31,33,76,75;,
 4;33,35,77,76;,
 4;35,37,78,77;,
 4;37,39,79,78;,
 4;39,41,80,79;,
 4;41,43,81,80;,
 4;43,45,82,81;,
 4;45,47,83,82;,
 4;47,49,84,83;,
 4;49,51,85,84;,
 4;51,53,86,85;,
 4;53,55,87,86;,
 4;55,57,88,87;,
 4;57,59,89,88;,
 4;90,91,92,93;,
 4;91,94,95,92;,
 4;94,96,97,95;,
 4;96,98,99,97;,
 4;98,100,101,99;,
 4;100,102,103,101;,
 4;102,104,105,103;,
 4;104,106,107,105;,
 4;106,108,109,107;,
 4;108,110,111,109;,
 4;110,112,113,111;,
 4;112,114,115,113;,
 4;114,116,117,115;,
 4;116,118,119,117;,
 4;118,120,121,119;,
 4;120,122,123,121;,
 4;122,124,125,123;,
 4;124,126,127,125;,
 4;126,128,129,127;,
 4;128,130,131,129;,
 4;130,132,133,131;,
 4;132,134,135,133;,
 4;134,136,137,135;,
 4;136,138,139,137;,
 4;138,140,141,139;,
 4;140,142,143,141;,
 4;142,144,145,143;,
 4;144,146,147,145;,
 4;146,148,149,147;,
 3;150,1,0;,
 3;151,4,1;,
 3;152,6,4;,
 3;153,8,6;,
 3;154,10,8;,
 3;155,12,10;,
 3;156,14,12;,
 3;157,16,14;,
 3;158,18,16;,
 3;159,20,18;,
 3;160,22,20;,
 3;161,24,22;,
 3;162,26,24;,
 3;163,28,26;,
 3;164,30,28;,
 3;165,32,30;,
 3;166,34,32;,
 3;167,36,34;,
 3;168,38,36;,
 3;169,40,38;,
 3;170,42,40;,
 3;171,44,42;,
 3;172,46,44;,
 3;173,48,46;,
 3;174,50,48;,
 3;175,52,50;,
 3;176,54,52;,
 3;177,56,54;,
 3;178,58,56;,
 3;179,180,70;,
 3;181,70,180;,
 3;182,183,184;,
 3;184,185,186;,
 3;186,187,188;,
 3;188,189,190;,
 3;190,191,192;,
 3;192,193,194;,
 3;194,195,196;,
 3;196,197,198;,
 3;199,200,201;,
 3;199,201,202;,
 3;199,202,203;,
 3;199,203,204;,
 3;199,204,205;,
 3;199,205,206;,
 3;199,206,207;,
 3;199,207,200;;
 
 MeshMaterialList {
  3;
  134;
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
  0;;
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
 }
 MeshNormals {
  130;
  0.000000;1.000000;0.000000;,
  -0.000003;0.205362;-0.978686;,
  0.210389;0.205376;-0.955802;,
  0.410939;0.205417;-0.888219;,
  0.592260;0.205481;-0.779105;,
  0.745884;0.205568;-0.633561;,
  0.864622;0.205670;-0.458397;,
  0.942926;0.205786;-0.261807;,
  0.977136;0.205909;-0.052978;,
  0.965654;0.206034;0.158310;,
  0.909024;0.206154;0.362183;,
  0.809892;0.206264;0.549117;,
  0.672899;0.206360;0.710367;,
  0.504450;0.206436;0.838400;,
  0.312419;0.206489;0.927231;,
  0.105788;0.206516;0.972708;,
  -0.105788;0.206516;0.972708;,
  -0.312418;0.206488;0.927231;,
  -0.504448;0.206436;0.838401;,
  -0.672898;0.206360;0.710369;,
  -0.809891;0.206265;0.549119;,
  -0.909021;0.206154;0.362189;,
  -0.965654;0.206035;0.158313;,
  -0.977136;0.205910;-0.052978;,
  -0.942927;0.205786;-0.261802;,
  -0.864623;0.205670;-0.458396;,
  -0.745884;0.205567;-0.633561;,
  -0.592260;0.205481;-0.779106;,
  -0.410937;0.205416;-0.888220;,
  -0.210392;0.205375;-0.955801;,
  -0.000004;0.145826;-0.989310;,
  0.212671;0.145836;-0.966180;,
  0.415401;0.145865;-0.897867;,
  0.598697;0.145912;-0.787573;,
  0.753998;0.145974;-0.640452;,
  0.874038;0.146048;-0.463386;,
  0.953206;0.146131;-0.264660;,
  0.987801;0.146220;-0.053557;,
  0.976207;0.146310;0.160041;,
  0.918969;0.146397;0.366148;,
  0.830096;0.148741;0.537417;,
  0.685755;0.151257;0.711942;,
  0.498968;0.147922;0.853903;,
  0.315850;0.146637;0.937409;,
  0.106950;0.146657;0.983389;,
  -0.106950;0.146657;0.983389;,
  -0.315848;0.146637;0.937410;,
  -0.509982;0.146600;0.847601;,
  -0.680275;0.146545;0.718157;,
  -0.818762;0.146476;0.555133;,
  -0.918967;0.146397;0.366152;,
  -0.976207;0.146310;0.160043;,
  -0.987801;0.146220;-0.053556;,
  -0.953207;0.146131;-0.264655;,
  -0.874039;0.146048;-0.463386;,
  -0.753998;0.145974;-0.640452;,
  -0.598697;0.145912;-0.787573;,
  -0.415399;0.145865;-0.897868;,
  -0.212674;0.145836;-0.966179;,
  0.847047;0.090845;0.523697;,
  -0.000003;0.135526;-0.990774;,
  0.212985;0.135535;-0.967609;,
  0.416014;0.135562;-0.899197;,
  0.599584;0.135605;-0.788740;,
  0.755116;0.135663;-0.641401;,
  0.875336;0.135733;-0.464073;,
  0.954622;0.135811;-0.265052;,
  0.989270;0.135894;-0.053639;,
  0.977661;0.135978;0.160279;,
  0.934937;0.119329;0.334146;,
  -0.304153;0.096768;0.947696;,
  0.711047;0.142209;0.688614;,
  0.488983;0.136978;0.861471;,
  0.316324;0.136283;0.938811;,
  0.107110;0.136301;0.984860;,
  -0.107110;0.136301;0.984860;,
  -0.316320;0.136283;0.938812;,
  -0.510743;0.136248;0.848868;,
  -0.681291;0.136197;0.719230;,
  -0.819984;0.136133;0.555961;,
  -0.920338;0.136059;0.366697;,
  -0.977660;0.135978;0.160281;,
  -0.989270;0.135894;-0.053636;,
  -0.954623;0.135811;-0.265049;,
  -0.875337;0.135732;-0.464071;,
  -0.755117;0.135663;-0.641400;,
  -0.599585;0.135605;-0.788739;,
  -0.416013;0.135562;-0.899197;,
  -0.212987;0.135535;-0.967609;,
  -0.000002;0.184959;-0.982746;,
  0.211260;0.184971;-0.959768;,
  0.412640;0.185008;-0.891908;,
  0.594720;0.185066;-0.782342;,
  0.748985;0.185144;-0.636194;,
  0.868222;0.185238;-0.460302;,
  0.946855;0.185344;-0.262895;,
  0.981211;0.185456;-0.053203;,
  0.969687;0.185569;0.158971;,
  0.946995;0.184574;0.262933;,
  0.723614;0.189357;0.663722;,
  0.485164;0.184640;0.854707;,
  0.313733;0.185982;0.931119;,
  0.106232;0.186006;0.976789;,
  -0.106232;0.186006;0.976789;,
  -0.313728;0.185981;0.931121;,
  -0.506561;0.185934;0.841917;,
  -0.675716;0.185865;0.713345;,
  -0.813281;0.185779;0.551417;,
  -0.912823;0.185678;0.363701;,
  -0.969686;0.185569;0.158973;,
  -0.981211;0.185456;-0.053199;,
  -0.946855;0.185344;-0.262893;,
  -0.868223;0.185238;-0.460300;,
  -0.748986;0.185144;-0.636193;,
  -0.594721;0.185066;-0.782341;,
  -0.412642;0.185008;-0.891907;,
  -0.211260;0.184972;-0.959768;,
  0.856171;0.185993;0.482056;,
  -0.377563;-0.898401;-0.224326;,
  -0.409309;-0.883167;-0.229089;,
  -0.440539;-0.866818;-0.233563;,
  0.000000;0.394169;-0.919038;,
  0.649858;0.394169;-0.649858;,
  0.919038;0.394169;0.000000;,
  0.649858;0.394169;0.649858;,
  -0.000000;0.394169;0.919038;,
  -0.649858;0.394169;0.649858;,
  -0.919038;0.394169;0.000000;,
  -0.649858;0.394169;-0.649858;,
  0.000000;-1.000000;-0.000000;;
  134;
  4;1,2,31,30;,
  4;2,3,32,31;,
  4;3,4,33,32;,
  4;4,5,34,33;,
  4;5,6,35,34;,
  4;6,7,36,35;,
  4;7,8,37,36;,
  4;8,9,38,37;,
  4;9,10,39,38;,
  4;10,11,40,39;,
  4;11,12,41,40;,
  4;12,13,42,41;,
  4;13,14,43,42;,
  4;14,15,44,43;,
  4;15,16,45,44;,
  4;16,17,46,45;,
  4;17,18,47,46;,
  4;18,19,48,47;,
  4;19,20,49,48;,
  4;20,21,50,49;,
  4;21,22,51,50;,
  4;22,23,52,51;,
  4;23,24,53,52;,
  4;24,25,54,53;,
  4;25,26,55,54;,
  4;26,27,56,55;,
  4;27,28,57,56;,
  4;28,29,58,57;,
  4;29,1,30,58;,
  4;30,31,61,60;,
  4;31,32,62,61;,
  4;32,33,63,62;,
  4;33,34,64,63;,
  4;34,35,65,64;,
  4;35,36,66,65;,
  4;36,37,67,66;,
  4;37,38,68,67;,
  4;38,39,69,68;,
  4;39,40,59,69;,
  4;40,41,71,59;,
  4;41,42,72,71;,
  4;42,43,73,72;,
  4;43,44,74,73;,
  4;44,45,75,74;,
  4;45,46,76,75;,
  4;46,47,77,76;,
  4;47,48,78,77;,
  4;48,49,79,78;,
  4;49,50,80,79;,
  4;50,51,81,80;,
  4;51,52,82,81;,
  4;52,53,83,82;,
  4;53,54,84,83;,
  4;54,55,85,84;,
  4;55,56,86,85;,
  4;56,57,87,86;,
  4;57,58,88,87;,
  4;58,30,60,88;,
  4;60,61,90,89;,
  4;61,62,91,90;,
  4;62,63,92,91;,
  4;63,64,93,92;,
  4;64,65,94,93;,
  4;65,66,95,94;,
  4;66,67,96,95;,
  4;67,68,97,96;,
  4;68,69,98,97;,
  4;70,70,70,70;,
  4;117,71,99,117;,
  4;71,72,100,99;,
  4;72,73,101,100;,
  4;73,74,102,101;,
  4;74,75,103,102;,
  4;75,76,104,103;,
  4;76,77,105,104;,
  4;77,78,106,105;,
  4;78,79,107,106;,
  4;79,80,108,107;,
  4;80,81,109,108;,
  4;81,82,110,109;,
  4;82,83,111,110;,
  4;83,84,112,111;,
  4;84,85,113,112;,
  4;85,86,114,113;,
  4;86,87,115,114;,
  4;87,88,116,115;,
  4;88,60,89,116;,
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
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;118,119,119;,
  3;120,119,119;,
  3;121,122,122;,
  3;122,122,123;,
  3;123,124,124;,
  3;124,124,125;,
  3;125,126,126;,
  3;126,126,127;,
  3;127,128,128;,
  3;128,128,121;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;,
  3;129,129,129;;
 }
 MeshTextureCoords {
  208;
  0.000000;0.000000;,
  0.034480;0.000000;,
  0.034480;0.200000;,
  0.000000;0.200000;,
  0.068970;0.000000;,
  0.068970;0.200000;,
  0.103450;0.000000;,
  0.103450;0.200000;,
  0.137930;0.000000;,
  0.137930;0.200000;,
  0.172410;0.000000;,
  0.172410;0.200000;,
  0.206900;0.000000;,
  0.206900;0.200000;,
  0.241380;0.000000;,
  0.241380;0.200000;,
  0.275860;0.000000;,
  0.275860;0.200000;,
  0.310340;0.000000;,
  0.310340;0.200000;,
  0.344830;0.000000;,
  0.344830;0.200000;,
  0.379310;0.000000;,
  0.379310;0.200000;,
  0.413790;0.000000;,
  0.413790;0.200000;,
  0.448280;0.000000;,
  0.448280;0.200000;,
  0.482760;0.000000;,
  0.482760;0.200000;,
  0.517240;0.000000;,
  0.517240;0.200000;,
  0.551720;0.000000;,
  0.551720;0.200000;,
  0.586210;0.000000;,
  0.586210;0.200000;,
  0.620690;0.000000;,
  0.620690;0.200000;,
  0.655170;0.000000;,
  0.655170;0.200000;,
  0.689660;0.000000;,
  0.689660;0.200000;,
  0.724140;0.000000;,
  0.724140;0.200000;,
  0.758620;0.000000;,
  0.758620;0.200000;,
  0.793100;0.000000;,
  0.793100;0.200000;,
  0.827590;0.000000;,
  0.827590;0.200000;,
  0.862070;0.000000;,
  0.862070;0.200000;,
  0.896550;0.000000;,
  0.896550;0.200000;,
  0.931030;0.000000;,
  0.931030;0.200000;,
  0.965520;0.000000;,
  0.965520;0.200000;,
  1.000000;0.000000;,
  1.000000;0.200000;,
  0.034480;0.400000;,
  0.000000;0.400000;,
  0.068970;0.400000;,
  0.103450;0.400000;,
  0.137930;0.400000;,
  0.172410;0.400000;,
  0.206900;0.400000;,
  0.241380;0.400000;,
  0.275860;0.400000;,
  0.310340;0.400000;,
  0.344830;0.400000;,
  0.379310;0.400000;,
  0.413790;0.400000;,
  0.448280;0.400000;,
  0.482760;0.400000;,
  0.517240;0.400000;,
  0.551720;0.400000;,
  0.586210;0.400000;,
  0.620690;0.400000;,
  0.655170;0.400000;,
  0.689660;0.400000;,
  0.724140;0.400000;,
  0.758620;0.400000;,
  0.793100;0.400000;,
  0.827590;0.400000;,
  0.862070;0.400000;,
  0.896550;0.400000;,
  0.931030;0.400000;,
  0.965520;0.400000;,
  1.000000;0.400000;,
  0.000000;0.800000;,
  0.034480;0.800000;,
  0.034480;1.000000;,
  0.000000;1.000000;,
  0.068970;0.800000;,
  0.068970;1.000000;,
  0.103450;0.800000;,
  0.103450;1.000000;,
  0.137930;0.800000;,
  0.137930;1.000000;,
  0.172410;0.800000;,
  0.172410;1.000000;,
  0.206900;0.800000;,
  0.206900;1.000000;,
  0.241380;0.800000;,
  0.241380;1.000000;,
  0.275860;0.800000;,
  0.275860;1.000000;,
  0.310340;0.800000;,
  0.310340;1.000000;,
  0.344830;0.800000;,
  0.344830;1.000000;,
  0.379310;0.800000;,
  0.379310;1.000000;,
  0.413790;0.800000;,
  0.413790;1.000000;,
  0.448280;0.800000;,
  0.448280;1.000000;,
  0.482760;0.800000;,
  0.482760;1.000000;,
  0.517240;0.800000;,
  0.517240;1.000000;,
  0.551720;0.800000;,
  0.551720;1.000000;,
  0.586210;0.800000;,
  0.586210;1.000000;,
  0.620690;0.800000;,
  0.620690;1.000000;,
  0.655170;0.800000;,
  0.655170;1.000000;,
  0.689660;0.800000;,
  0.689660;1.000000;,
  0.724140;0.800000;,
  0.724140;1.000000;,
  0.758620;0.800000;,
  0.758620;1.000000;,
  0.793100;0.800000;,
  0.793100;1.000000;,
  0.827590;0.800000;,
  0.827590;1.000000;,
  0.862070;0.800000;,
  0.862070;1.000000;,
  0.896550;0.800000;,
  0.896550;1.000000;,
  0.931030;0.800000;,
  0.931030;1.000000;,
  0.965520;0.800000;,
  0.965520;1.000000;,
  1.000000;0.800000;,
  1.000000;1.000000;,
  0.017240;0.000000;,
  0.051720;0.000000;,
  0.086210;0.000000;,
  0.120690;0.000000;,
  0.155170;0.000000;,
  0.189660;0.000000;,
  0.224140;0.000000;,
  0.258620;0.000000;,
  0.293100;0.000000;,
  0.327590;0.000000;,
  0.362070;0.000000;,
  0.396550;0.000000;,
  0.431030;0.000000;,
  0.465520;0.000000;,
  0.500000;0.000000;,
  0.534480;0.000000;,
  0.568970;0.000000;,
  0.603450;0.000000;,
  0.637930;0.000000;,
  0.672410;0.000000;,
  0.706900;0.000000;,
  0.741380;0.000000;,
  0.775860;0.000000;,
  0.810340;0.000000;,
  0.844830;0.000000;,
  0.879310;0.000000;,
  0.913790;0.000000;,
  0.948280;0.000000;,
  0.982760;0.000000;,
  0.379310;0.500000;,
  0.344830;0.600000;,
  0.310340;0.500000;,
  0.000000;1.000000;,
  0.062500;0.000000;,
  0.125000;1.000000;,
  0.125000;0.000000;,
  0.250000;1.000000;,
  0.187500;0.000000;,
  0.375000;1.000000;,
  0.250000;0.000000;,
  0.500000;1.000000;,
  0.312500;0.000000;,
  0.625000;1.000000;,
  0.375000;0.000000;,
  0.750000;1.000000;,
  0.437500;0.000000;,
  0.875000;1.000000;,
  0.500000;0.000000;,
  1.000000;1.000000;,
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
