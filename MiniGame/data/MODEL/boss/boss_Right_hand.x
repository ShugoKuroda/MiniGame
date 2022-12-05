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
 62;
 59.96007;20.97570;28.38171;,
 -0.04026;20.97570;28.38168;,
 -0.04026;-17.85141;28.38168;,
 59.96007;-17.85141;28.38171;,
 -0.03984;20.97570;-31.61826;,
 -0.03984;-17.85141;-31.61826;,
 59.95983;20.97570;-31.61838;,
 59.95983;-17.85141;-31.61838;,
 59.95989;20.97570;5.04831;,
 59.96004;20.97570;-8.28510;,
 60.59703;-17.78214;-8.28489;,
 60.59706;-17.78214;5.04834;,
 140.59000;-8.51802;-24.94722;,
 140.59383;-8.46321;-32.41128;,
 59.95998;20.97570;-21.61833;,
 122.58621;-19.62432;-25.90884;,
 60.27846;-17.81679;-21.61833;,
 122.58631;-19.62432;-32.41140;,
 139.32609;-8.46321;-11.30139;,
 139.32630;-8.46321;-17.80377;,
 121.31847;-19.62432;-11.30145;,
 121.31845;-19.62432;-17.80380;,
 140.66998;-8.47869;1.29993;,
 140.67442;-8.46321;-4.86960;,
 122.66650;-19.62432;1.63278;,
 122.66664;-19.62432;-4.86948;,
 139.62564;-8.88639;14.72283;,
 140.67430;-8.46321;8.13546;,
 59.95995;20.97570;18.38178;,
 122.66667;-19.62432;14.63790;,
 59.95995;-17.85141;18.38178;,
 122.66638;-19.62432;8.13537;,
 140.67433;-8.46321;27.64290;,
 130.80315;-8.88003;20.86833;,
 122.66655;-19.62432;27.64281;,
 122.66655;-19.62432;21.14025;,
 144.68208;-31.21908;21.73833;,
 144.68191;-31.21908;26.57709;,
 152.58544;-27.54261;27.20646;,
 155.92182;-25.51959;27.01587;,
 155.07102;-26.38662;22.12143;,
 145.29481;-30.93396;8.87097;,
 145.83318;-30.68361;13.51611;,
 154.07308;-26.85069;13.28358;,
 154.53619;-26.63547;9.14157;,
 144.78892;-30.91593;-4.51845;,
 144.88351;-31.06536;-0.04002;,
 154.32043;-26.47119;-0.17268;,
 153.44449;-26.47212;-4.55829;,
 143.83932;-31.57371;-31.52061;,
 144.60177;-31.21908;-27.06489;,
 154.22844;-26.74119;-27.06498;,
 154.99080;-26.38662;-31.52070;,
 144.31603;-30.76218;-17.04534;,
 142.57183;-31.57371;-13.08330;,
 154.54426;-26.04510;-12.62826;,
 154.21266;-26.15892;-16.67304;,
 168.33240;-51.51498;-29.50743;,
 167.06454;-51.51498;-15.14253;,
 168.41256;-51.51498;-2.19516;,
 168.41284;-51.51498;10.95969;,
 168.41245;-51.51498;24.13482;;
 
 91;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;4,1,8,9;,
 4;10,11,2,5;,
 4;12,13,6,14;,
 4;15,12,14,16;,
 4;17,15,16,7;,
 4;13,17,7,6;,
 4;13,12,15,17;,
 4;18,19,14,9;,
 4;20,18,9,10;,
 4;21,20,10,16;,
 4;19,21,16,14;,
 4;19,18,20,21;,
 4;22,23,9,8;,
 4;24,22,8,11;,
 4;25,24,11,10;,
 4;23,25,10,9;,
 4;23,22,24,25;,
 4;26,27,8,28;,
 4;29,26,28,30;,
 4;31,29,30,11;,
 4;27,31,11,8;,
 4;27,26,29,31;,
 4;32,33,28,0;,
 4;34,32,0,3;,
 4;35,34,3,30;,
 4;33,35,30,28;,
 4;33,32,34,35;,
 4;35,36,37,34;,
 4;34,37,38,32;,
 4;32,39,40,33;,
 4;33,40,36,35;,
 3;33,35,34;,
 3;33,34,32;,
 4;31,41,42,29;,
 4;29,42,43,26;,
 4;26,43,44,27;,
 4;27,44,41,31;,
 3;27,31,29;,
 3;27,29,26;,
 4;25,45,46,24;,
 4;24,46,47,22;,
 4;22,47,48,23;,
 4;23,48,45,25;,
 3;23,25,24;,
 3;23,24,22;,
 4;17,49,50,15;,
 4;15,50,51,12;,
 4;12,51,52,13;,
 4;13,52,49,17;,
 3;13,17,15;,
 3;13,15,12;,
 4;21,53,54,20;,
 4;18,55,56,19;,
 4;19,56,53,21;,
 3;19,21,20;,
 3;19,20,18;,
 3;1,28,8;,
 3;1,0,28;,
 3;4,9,14;,
 3;4,14,6;,
 3;2,11,30;,
 3;2,30,3;,
 3;5,16,10;,
 3;5,7,16;,
 3;57,50,49;,
 3;57,51,50;,
 3;57,52,51;,
 3;57,49,52;,
 3;58,55,54;,
 3;58,56,55;,
 3;58,53,56;,
 3;58,54,53;,
 3;20,54,55;,
 3;55,18,20;,
 3;59,48,47;,
 3;59,45,48;,
 3;59,46,45;,
 3;59,47,46;,
 3;60,44,43;,
 3;60,41,44;,
 3;60,43,42;,
 3;60,42,41;,
 3;61,40,39;,
 3;61,39,38;,
 3;61,38,37;,
 3;40,61,36;,
 3;61,37,36;,
 3;32,38,39;;
 
 MeshMaterialList {
  4;
  91;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.228800;0.295200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.323200;0.323200;0.323200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.780800;0.800000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  112;
  -0.000000;0.000000;1.000000;,
  -1.000000;0.000000;-0.000007;,
  -0.004713;0.002498;-0.999986;,
  0.175484;0.984482;0.000899;,
  0.175358;0.984505;0.000332;,
  0.174519;0.984543;0.014785;,
  0.178659;0.982680;-0.049205;,
  0.037423;-0.047758;0.998158;,
  -0.014613;-0.999893;0.001063;,
  -0.014641;-0.999891;-0.002130;,
  0.043290;-0.025236;0.998744;,
  0.004386;-0.002326;0.999988;,
  0.061283;-0.990955;-0.119383;,
  -0.160893;0.236714;0.958165;,
  0.491039;0.786722;-0.374097;,
  -0.561459;-0.827505;-0.000016;,
  0.029646;-0.060392;0.997734;,
  0.752244;0.549938;-0.362901;,
  0.867231;0.442086;-0.229064;,
  0.023717;-0.999478;0.021946;,
  0.039894;-0.035058;0.998589;,
  0.585438;0.804149;0.102992;,
  -0.557241;-0.826111;0.083809;,
  0.046508;-0.052961;0.997513;,
  0.824127;0.550845;0.131855;,
  0.863003;0.490256;0.121965;,
  0.014910;-0.999881;-0.003992;,
  0.044928;-0.032335;0.998467;,
  0.597459;0.800917;-0.039685;,
  -0.560426;-0.828135;-0.010762;,
  0.043060;-0.053980;0.997613;,
  0.829080;0.545164;-0.124188;,
  0.852804;0.493636;-0.170438;,
  0.008695;-0.999602;0.026854;,
  0.029630;-0.068413;0.997217;,
  0.587278;0.807832;0.050117;,
  -0.555562;-0.822495;0.121874;,
  0.028978;-0.083350;0.996099;,
  0.826866;0.544828;0.139484;,
  -0.630649;-0.757619;0.168214;,
  0.016382;-0.997787;-0.064449;,
  0.027997;-0.062034;0.997681;,
  0.571550;0.820307;-0.020672;,
  -0.531882;-0.793721;-0.295143;,
  0.831063;0.552566;-0.063290;,
  0.006147;-0.095243;0.995435;,
  -0.000002;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000090;-0.999999;-0.001746;,
  0.000429;-0.999998;0.002019;,
  0.174303;0.984690;0.001795;,
  -0.014606;-0.999890;0.002475;,
  -0.014250;-0.999894;0.002825;,
  0.004982;-0.015400;-0.999869;,
  0.526035;-0.850458;-0.002986;,
  0.033552;-0.033901;0.998862;,
  0.036706;-0.018757;0.999150;,
  0.039823;-0.025237;-0.998888;,
  0.046223;-0.023971;-0.998644;,
  0.526814;-0.849981;0.000007;,
  0.045511;-0.013739;0.998869;,
  0.023361;-0.017792;-0.999569;,
  0.040800;-0.021025;-0.998946;,
  0.526594;-0.850116;-0.000871;,
  -0.014575;-0.999892;-0.002129;,
  0.033086;-0.022842;-0.999191;,
  0.036887;-0.018999;-0.999139;,
  0.530832;-0.847351;0.014613;,
  0.181293;0.975097;-0.127743;,
  -0.104421;0.176854;0.978682;,
  -0.014132;-0.999900;0.000000;,
  0.028746;-0.021131;-0.999363;,
  0.031235;-0.019654;-0.999319;,
  0.653485;-0.690463;-0.310192;,
  -0.014400;-0.093141;0.995549;,
  0.042782;-0.035518;-0.998453;,
  -0.653485;0.690463;0.310192;,
  -0.797200;0.603716;0.000000;,
  0.039708;-0.035823;-0.998569;,
  -0.530769;0.847376;-0.015414;,
  -0.526810;0.849983;0.000024;,
  -0.534589;0.844549;-0.030847;,
  0.019687;-0.044334;-0.998823;,
  -0.526583;0.850124;0.000871;,
  -0.526813;0.849981;-0.000012;,
  -0.526351;0.850265;0.001755;,
  0.024597;-0.049946;-0.998449;,
  -0.526035;0.850458;0.002986;,
  -0.526818;0.849978;-0.000007;,
  -0.525246;0.850929;0.005979;,
  0.043241;-0.029928;-0.998616;,
  -0.526814;0.849981;-0.000007;,
  -0.526811;0.849982;0.000002;,
  -0.526816;0.849979;-0.000017;,
  0.036132;-0.077658;0.996325;,
  0.861761;0.472366;0.185034;,
  0.029805;-0.064094;-0.997499;,
  0.017793;-0.087514;0.996004;,
  0.011484;-0.106699;0.994225;,
  0.890768;0.446326;-0.085588;,
  0.053057;-0.033350;-0.998034;,
  -0.597551;-0.692134;-0.404825;,
  0.033438;-0.074065;-0.996693;,
  -0.656536;-0.754210;-0.011298;,
  0.041791;-0.057040;0.997497;,
  0.050125;-0.044954;-0.997731;,
  0.056515;-0.061037;0.996534;,
  -0.666247;-0.736510;0.116913;,
  0.040318;-0.100757;0.994094;,
  0.073601;-0.027463;0.996910;,
  0.059287;-0.048412;-0.997066;,
  -0.649970;-0.759960;-0.000023;;
  91;
  4;11,0,0,11;,
  4;1,1,1,1;,
  4;46,2,2,46;,
  4;47,47,5,4;,
  4;8,9,48,49;,
  4;35,35,50,3;,
  4;34,34,7,7;,
  4;33,33,51,52;,
  4;53,53,2,2;,
  4;54,54,33,33;,
  4;42,42,3,4;,
  4;41,55,56,56;,
  4;40,40,8,51;,
  4;57,57,58,58;,
  4;59,59,40,40;,
  4;28,28,4,5;,
  4;27,27,60,60;,
  4;26,26,9,8;,
  4;61,61,62,62;,
  4;63,63,26,26;,
  4;21,21,5,6;,
  4;20,20,10,10;,
  4;19,19,64,9;,
  4;65,65,66,66;,
  4;67,67,19,19;,
  4;14,14,6,68;,
  4;13,69,11,11;,
  4;12,12,70,64;,
  4;71,71,72,72;,
  4;73,73,12,12;,
  4;12,15,15,12;,
  4;13,74,16,69;,
  4;14,17,17,14;,
  4;71,75,75,71;,
  3;76,77,77;,
  3;76,13,69;,
  4;19,22,22,19;,
  4;20,23,23,20;,
  4;21,24,24,21;,
  4;65,78,78,65;,
  3;79,80,79;,
  3;79,79,81;,
  4;26,29,29,26;,
  4;27,30,30,27;,
  4;28,31,31,28;,
  4;61,82,82,61;,
  3;83,84,83;,
  3;83,83,85;,
  4;33,36,36,33;,
  4;34,37,37,34;,
  4;35,38,38,35;,
  4;53,86,86,53;,
  3;87,88,87;,
  3;87,87,89;,
  4;40,43,43,40;,
  4;42,44,44,42;,
  4;57,90,90,57;,
  3;91,92,91;,
  3;91,91,93;,
  3;47,6,5;,
  3;47,68,6;,
  3;47,4,3;,
  3;47,3,50;,
  3;48,9,64;,
  3;48,64,70;,
  3;49,51,8;,
  3;49,52,51;,
  3;39,36,36;,
  3;94,37,37;,
  3;95,38,38;,
  3;96,86,86;,
  3;45,97,98;,
  3;99,44,44;,
  3;100,90,90;,
  3;101,43,43;,
  3;41,98,97;,
  3;97,55,41;,
  3;32,31,31;,
  3;102,82,82;,
  3;103,29,29;,
  3;104,30,30;,
  3;25,24,24;,
  3;105,78,78;,
  3;106,23,23;,
  3;107,22,22;,
  3;18,17,17;,
  3;108,109,16;,
  3;108,16,74;,
  3;75,110,75;,
  3;111,15,15;,
  3;69,16,109;;
 }
}