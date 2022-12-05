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
 -40.27340;14.42098;-19.51820;,
 -0.27332;14.42098;-19.51820;,
 -0.27332;-11.46378;-19.51820;,
 -40.27340;-11.46378;-19.51820;,
 -0.27346;14.42098;20.48182;,
 -0.27346;-11.46378;20.48182;,
 -40.27336;14.42098;20.48184;,
 -40.27336;-11.46378;20.48184;,
 -40.27338;14.42098;-3.96264;,
 -40.27340;14.42098;4.92630;,
 -40.69806;-11.41756;4.92624;,
 -40.69804;-11.41756;-3.96264;,
 -94.02666;-5.24150;16.03438;,
 -94.02934;-5.20496;21.01052;,
 -40.27334;14.42098;13.81516;,
 -82.02420;-12.64572;16.67548;,
 -40.48570;-11.44068;13.81516;,
 -82.02420;-12.64572;21.01046;,
 -93.18420;-5.20496;6.93728;,
 -93.18422;-5.20496;11.27210;,
 -81.17900;-12.64572;6.93722;,
 -81.17906;-12.64572;11.27218;,
 -94.08002;-5.21528;-1.46360;,
 -94.08298;-5.20496;2.64932;,
 -82.07774;-12.64572;-1.68566;,
 -82.07774;-12.64572;2.64928;,
 -93.38386;-5.48710;-10.41234;,
 -94.08298;-5.20496;-6.02064;,
 -40.27342;14.42098;-12.85156;,
 -82.07778;-12.64572;-10.35568;,
 -40.27342;-11.46378;-12.85156;,
 -82.07772;-12.64572;-6.02062;,
 -94.08302;-5.20496;-19.02562;,
 -87.50216;-5.48284;-14.50936;,
 -82.07770;-12.64572;-19.02560;,
 -82.07774;-12.64572;-14.69056;,
 -96.75474;-20.37552;-15.08924;,
 -96.75472;-20.37552;-18.31512;,
 -102.02390;-17.92456;-18.73470;,
 -104.24809;-16.57586;-18.60762;,
 -103.68078;-17.15390;-15.34470;,
 -97.16332;-20.18544;-6.51108;,
 -97.52224;-20.01854;-9.60780;,
 -103.01557;-17.46330;-9.45274;,
 -103.32416;-17.31978;-6.69144;,
 -96.82614;-20.17344;2.41520;,
 -96.88904;-20.27308;-0.57042;,
 -103.18032;-17.21026;-0.48198;,
 -102.59638;-17.21092;2.44182;,
 -96.19292;-20.61196;20.41668;,
 -96.70122;-20.37552;17.44622;,
 -103.11908;-17.39028;17.44624;,
 -103.62732;-17.15390;20.41674;,
 -96.51086;-20.07094;10.76654;,
 -95.34794;-20.61196;8.12516;,
 -103.32962;-16.92622;7.82176;,
 -103.10842;-17.00210;10.51824;,
 -112.52166;-33.90614;19.07448;,
 -111.67647;-33.90614;9.49794;,
 -112.57512;-33.90614;0.86640;,
 -112.57528;-33.90614;-7.90350;,
 -112.57518;-33.90614;-16.68700;;
 
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
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000003;,
  0.004713;0.002495;0.999986;,
  -0.175484;0.984482;-0.000899;,
  -0.175331;0.984509;-0.000331;,
  -0.174492;0.984547;-0.014785;,
  -0.178659;0.982680;0.049206;,
  -0.037422;-0.047758;-0.998158;,
  0.014613;-0.999893;-0.001063;,
  0.014641;-0.999891;0.002131;,
  -0.043289;-0.025237;-0.998744;,
  -0.004386;-0.002325;-0.999988;,
  -0.061283;-0.990955;0.119383;,
  0.160888;0.236713;-0.958166;,
  -0.491034;0.786719;0.374110;,
  0.561456;-0.827507;0.000005;,
  -0.029649;-0.060387;-0.997735;,
  -0.752234;0.549933;0.362929;,
  -0.867223;0.442085;0.229097;,
  -0.023718;-0.999478;-0.021945;,
  -0.039895;-0.035060;-0.998589;,
  -0.585439;0.804149;-0.102985;,
  0.557240;-0.826111;-0.083808;,
  -0.046511;-0.052961;-0.997513;,
  -0.824130;0.550845;-0.131829;,
  -0.863007;0.490257;-0.121928;,
  -0.014907;-0.999881;0.003998;,
  -0.044930;-0.032328;-0.998467;,
  -0.597415;0.800949;0.039687;,
  0.560424;-0.828135;0.010788;,
  -0.043062;-0.053977;-0.997613;,
  -0.829080;0.545165;0.124187;,
  -0.852803;0.493638;0.170435;,
  -0.008696;-0.999601;-0.026858;,
  -0.029628;-0.068416;-0.997217;,
  -0.587277;0.807833;-0.050126;,
  0.555561;-0.822495;-0.121880;,
  -0.028974;-0.083353;-0.996099;,
  -0.826865;0.544828;-0.139488;,
  0.630648;-0.757618;-0.168220;,
  -0.016383;-0.997786;0.064454;,
  -0.027997;-0.062033;-0.997681;,
  -0.571550;0.820306;0.020689;,
  0.531877;-0.793718;0.295159;,
  -0.831061;0.552565;0.063324;,
  -0.006143;-0.095245;-0.995435;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  -0.000090;-0.999999;0.001747;,
  -0.000429;-0.999998;-0.002021;,
  -0.174303;0.984690;-0.001798;,
  0.014606;-0.999890;-0.002477;,
  0.014250;-0.999894;-0.002827;,
  -0.004979;-0.015405;0.999869;,
  -0.526035;-0.850458;0.002983;,
  -0.033554;-0.033896;-0.998862;,
  -0.036708;-0.018756;-0.999150;,
  -0.039827;-0.025233;0.998888;,
  -0.046223;-0.023968;0.998644;,
  -0.526814;-0.849980;-0.000005;,
  -0.045514;-0.013734;-0.998869;,
  -0.023360;-0.017791;0.999569;,
  -0.040801;-0.021021;0.998946;,
  -0.526583;-0.850123;0.000877;,
  0.014575;-0.999892;0.002131;,
  -0.033084;-0.022846;0.999192;,
  -0.036885;-0.018999;0.999139;,
  -0.530832;-0.847351;-0.014621;,
  -0.181293;0.975097;0.127745;,
  0.104416;0.176855;-0.978683;,
  0.014132;-0.999900;0.000000;,
  -0.028749;-0.021125;0.999363;,
  -0.031238;-0.019651;0.999319;,
  -0.653483;-0.690463;0.310195;,
  0.014400;-0.093138;-0.995549;,
  -0.042787;-0.035512;0.998453;,
  0.653483;0.690463;-0.310195;,
  0.797200;0.603716;0.000008;,
  -0.039705;-0.035827;0.998569;,
  0.530768;0.847377;0.015420;,
  0.526812;0.849982;-0.000007;,
  0.534586;0.844551;0.030843;,
  -0.019682;-0.044337;0.998823;,
  0.526583;0.850123;-0.000877;,
  0.526812;0.849982;0.000000;,
  0.526354;0.850264;-0.001755;,
  -0.024596;-0.049950;0.998449;,
  0.526035;0.850458;-0.002983;,
  0.526816;0.849980;0.000000;,
  0.525249;0.850928;-0.005966;,
  -0.043251;-0.029920;0.998616;,
  0.526814;0.849980;0.000005;,
  0.526815;0.849980;0.000007;,
  0.526814;0.849981;0.000003;,
  -0.036125;-0.077658;-0.996325;,
  -0.861762;0.472365;-0.185033;,
  -0.029807;-0.064098;0.997498;,
  -0.017792;-0.087514;-0.996004;,
  -0.011481;-0.106704;-0.994225;,
  -0.890764;0.446327;0.085629;,
  -0.053069;-0.033341;0.998034;,
  0.597545;-0.692127;0.404846;,
  -0.033431;-0.074070;0.996693;,
  0.656536;-0.754210;0.011339;,
  -0.041793;-0.057042;-0.997497;,
  -0.050119;-0.044956;0.997731;,
  -0.056519;-0.061033;-0.996534;,
  0.666249;-0.736508;-0.116916;,
  -0.040321;-0.100751;-0.994094;,
  -0.073607;-0.027455;-0.996909;,
  -0.059294;-0.048410;0.997066;,
  0.649967;-0.759963;0.000005;;
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