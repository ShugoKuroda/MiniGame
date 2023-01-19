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
 119;
 0.00000;0.00000;0.00000;,
 10.23939;0.00000;-10.07304;,
 11.12640;0.00000;0.00000;,
 -10.19676;0.00000;-10.15356;,
 0.00000;0.00000;-11.65575;,
 0.00000;26.64453;-1.08356;,
 0.00000;26.91975;0.00000;,
 0.72876;26.62803;-0.76985;,
 1.58174;25.53042;-1.67094;,
 0.00000;25.51658;-2.36741;,
 0.72876;26.62803;-0.76985;,
 0.00000;26.91975;0.00000;,
 1.04259;26.58768;0.00000;,
 2.24387;25.50702;0.00000;,
 1.58174;25.53042;-1.67094;,
 1.04259;26.58768;0.00000;,
 0.00000;26.91975;0.00000;,
 0.74588;26.54646;0.78794;,
 1.59660;25.45962;1.68665;,
 2.24387;25.50702;0.00000;,
 0.74588;26.54646;0.78794;,
 0.00000;26.91975;0.00000;,
 0.00000;26.52917;1.11975;,
 0.00000;25.41566;2.39907;,
 1.59660;25.45962;1.68665;,
 0.00000;26.52917;1.11975;,
 0.00000;26.91975;0.00000;,
 -0.74585;26.54664;0.78791;,
 -1.60884;25.40136;1.69956;,
 0.00000;25.41566;2.39907;,
 -0.74585;26.54664;0.78791;,
 0.00000;26.91975;0.00000;,
 -1.04252;26.58794;0.00000;,
 -2.26809;25.42541;0.00000;,
 -1.60884;25.40136;1.69956;,
 -1.04252;26.58794;0.00000;,
 0.00000;26.91975;0.00000;,
 -0.72872;26.62821;-0.76982;,
 -1.59374;25.47329;-1.68362;,
 -2.26809;25.42541;0.00000;,
 -0.72872;26.62821;-0.76982;,
 0.00000;26.91975;0.00000;,
 0.00000;26.64453;-1.08356;,
 0.00000;25.51658;-2.36741;,
 -1.59374;25.47329;-1.68362;,
 6.28029;3.15008;-6.63447;,
 0.00000;3.07145;-9.40724;,
 8.85752;3.23144;0.00000;,
 6.28029;3.15008;-6.63447;,
 6.25551;3.26808;6.60830;,
 8.85752;3.23144;0.00000;,
 0.00000;3.23890;9.35471;,
 6.25551;3.26808;6.60830;,
 -6.27807;3.16068;6.63212;,
 0.00000;3.23890;9.35471;,
 -8.90279;3.07898;0.00000;,
 -6.27807;3.16068;6.63212;,
 -6.30302;3.04185;-6.65847;,
 -8.90279;3.07898;0.00000;,
 0.00000;3.07145;-9.40724;,
 -6.30302;3.04185;-6.65847;,
 -2.99199;0.00000;0.00000;,
 -2.42057;0.00000;2.55707;,
 -10.20308;0.00000;10.79570;,
 -11.12765;0.00000;0.00000;,
 11.15357;1.60059;0.00000;,
 11.12640;0.00000;0.00000;,
 10.23939;0.00000;-10.07304;,
 10.16408;1.66314;-10.16484;,
 6.16941;0.00000;6.51735;,
 7.58439;0.00000;0.00000;,
 10.00355;0.00000;10.58594;,
 10.12811;1.73876;10.51542;,
 10.00355;0.00000;10.58594;,
 11.15357;1.60059;0.00000;,
 0.00000;1.45739;11.80136;,
 0.00000;0.00000;11.85492;,
 10.12811;1.73876;10.51542;,
 6.68358;0.00000;4.14914;,
 4.51524;0.00000;4.76988;,
 -10.11825;1.52744;10.88558;,
 -10.20308;0.00000;10.79570;,
 0.00000;1.45739;11.80136;,
 -2.16584;0.00000;-2.28798;,
 -1.96193;0.00000;0.00000;,
 -11.11476;1.41075;0.00000;,
 -11.12765;0.00000;0.00000;,
 -10.11825;1.52744;10.88558;,
 -1.96199;0.00000;0.00000;,
 -1.79304;0.00000;1.89416;,
 -10.22891;1.39449;-10.13814;,
 -10.19676;0.00000;-10.15356;,
 -11.11476;1.41075;0.00000;,
 0.00000;1.43252;-11.69433;,
 0.00000;0.00000;-11.65575;,
 -10.22891;1.39449;-10.13814;,
 0.00000;0.00000;0.98738;,
 0.60164;0.00000;0.63557;,
 0.60164;0.00000;0.63557;,
 1.68866;0.00000;0.00000;,
 -2.09319;0.00000;2.21124;,
 -2.45108;0.00000;2.42052;,
 -2.09319;0.00000;2.21124;,
 -1.79304;0.00000;1.89416;,
 -1.78106;0.00000;2.02874;,
 0.00000;0.00000;0.98738;,
 10.16408;1.66314;-10.16484;,
 0.00000;0.00000;-11.65575;,
 0.00000;1.43252;-11.69433;,
 3.13281;0.00000;-5.35994;,
 4.82889;0.00000;-5.10121;,
 4.68399;0.00000;-4.94816;,
 4.51748;0.00000;-4.77225;,
 2.35749;0.00000;-5.47820;,
 0.00000;0.00000;-6.19157;,
 0.00000;0.00000;-6.24870;,
 0.93099;0.00000;-5.94443;,
 2.44725;0.00000;-5.54193;,
 0.00000;0.00000;11.85492;;
 
 68;
 3;0,1,2;,
 3;0,3,4;,
 3;5,6,7;,
 4;5,7,8,9;,
 3;10,11,12;,
 4;10,12,13,14;,
 3;15,16,17;,
 4;15,17,18,19;,
 3;20,21,22;,
 4;20,22,23,24;,
 3;25,26,27;,
 4;25,27,28,29;,
 3;30,31,32;,
 4;30,32,33,34;,
 3;35,36,37;,
 4;35,37,38,39;,
 3;40,41,42;,
 4;40,42,43,44;,
 4;45,46,9,8;,
 4;47,48,14,13;,
 4;49,50,19,18;,
 4;51,52,24,23;,
 4;53,54,29,28;,
 4;55,56,34,33;,
 4;57,58,39,38;,
 4;59,60,44,43;,
 4;61,62,63,64;,
 4;65,66,67,68;,
 4;65,68,48,47;,
 4;69,70,2,71;,
 4;72,73,66,74;,
 4;72,74,50,49;,
 4;75,76,73,77;,
 4;75,77,52,51;,
 3;78,69,79;,
 4;80,81,76,82;,
 4;80,82,54,53;,
 3;83,0,84;,
 4;85,86,81,87;,
 4;85,87,56,55;,
 3;88,0,89;,
 4;90,91,86,92;,
 4;90,92,58,57;,
 4;93,94,91,95;,
 4;93,95,60,59;,
 3;96,0,97;,
 3;98,0,99;,
 4;98,99,70,78;,
 3;98,78,79;,
 3;100,62,101;,
 4;100,101,61,88;,
 3;100,88,89;,
 3;102,103,104;,
 4;104,103,0,105;,
 4;106,67,107,108;,
 4;106,108,46,45;,
 3;109,110,111;,
 4;109,111,112,113;,
 3;114,115,116;,
 3;117,113,116;,
 4;117,116,115,4;,
 3;117,4,1;,
 3;109,113,117;,
 4;109,117,1,110;,
 4;64,3,83,84;,
 4;112,0,114,116;,
 4;118,63,102,105;,
 4;71,118,96,97;;
 
 MeshMaterialList {
  1;
  68;
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
  0;;
  Material {
   0.772000;0.800000;0.787200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\red.jpg";
   }
  }
 }
 MeshNormals {
  46;
  0.000000;-1.000000;-0.000000;,
  0.014508;0.012968;0.999811;,
  0.000105;0.998983;0.045093;,
  -0.003065;0.551407;-0.834231;,
  0.608879;0.544667;-0.576719;,
  0.843992;0.536285;0.008775;,
  0.599590;0.545102;0.585966;,
  -0.003238;0.550931;0.834545;,
  -0.606216;0.537056;0.586577;,
  -0.850383;0.526094;0.008595;,
  -0.614784;0.537094;-0.577556;,
  -0.002870;0.887450;-0.460894;,
  0.358263;0.880169;-0.311368;,
  0.496148;0.867667;0.031478;,
  0.345714;0.865299;0.362959;,
  -0.003010;0.865438;0.501007;,
  -0.353994;0.860819;0.365621;,
  -0.506000;0.861961;0.031425;,
  -0.365885;0.876069;-0.314057;,
  -0.005240;0.646957;-0.762509;,
  0.538684;0.658864;-0.525089;,
  0.764113;0.645078;-0.002306;,
  0.540149;0.659246;0.523100;,
  -0.002280;0.650187;0.759770;,
  -0.547431;0.654574;0.521395;,
  -0.772979;0.634426;-0.002794;,
  -0.548428;0.650232;-0.525762;,
  0.999872;-0.015306;0.004579;,
  0.993976;-0.041863;0.101287;,
  0.006081;0.520052;0.854113;,
  -0.096570;-0.008079;0.995293;,
  -0.859880;0.510486;-0.003260;,
  -0.995995;-0.006422;-0.089178;,
  0.995677;0.011407;-0.092175;,
  0.001460;-0.023611;-0.999720;,
  0.463311;0.886186;-0.004128;,
  0.305593;0.901284;-0.307083;,
  0.307598;0.902008;0.302929;,
  0.125401;0.033849;0.991529;,
  -0.323109;0.896807;0.302221;,
  -0.999933;0.011592;-0.000621;,
  -0.995688;0.029512;0.087941;,
  -0.327669;0.891538;-0.312719;,
  -0.148084;-0.009587;-0.988928;,
  -0.009387;0.879619;-0.475586;,
  0.150972;-0.037100;-0.987842;;
  68;
  3;0,0,0;,
  3;0,0,0;,
  3;11,2,12;,
  4;11,12,4,3;,
  3;12,2,13;,
  4;12,13,5,4;,
  3;13,2,14;,
  4;13,14,6,5;,
  3;14,2,15;,
  4;14,15,7,6;,
  3;15,2,16;,
  4;15,16,8,7;,
  3;16,2,17;,
  4;16,17,9,8;,
  3;17,2,18;,
  4;17,18,10,9;,
  3;18,2,11;,
  4;18,11,3,10;,
  4;20,19,3,4;,
  4;21,20,4,5;,
  4;22,21,5,6;,
  4;23,22,6,7;,
  4;24,23,7,8;,
  4;25,24,8,9;,
  4;26,25,9,10;,
  4;19,26,10,3;,
  4;0,0,0,0;,
  4;27,27,33,33;,
  4;35,36,20,21;,
  4;0,0,0,0;,
  4;28,28,27,27;,
  4;37,35,21,22;,
  4;29,1,38,38;,
  4;29,37,22,23;,
  3;0,0,0;,
  4;30,30,1,29;,
  4;39,29,23,24;,
  3;0,0,0;,
  4;31,40,41,41;,
  4;31,39,24,25;,
  3;0,0,0;,
  4;32,32,40,31;,
  4;42,31,25,26;,
  4;34,34,43,43;,
  4;44,42,26,19;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;45,45,34,34;,
  4;36,44,19,20;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;;
 }
 MeshTextureCoords {
  119;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.055970;0.104480;,
  0.062500;0.000000;,
  0.069060;0.104980;,
  0.076740;0.227860;,
  0.048230;0.228280;,
  0.125000;0.104980;,
  0.125000;0.000000;,
  0.138280;0.106200;,
  0.153570;0.228570;,
  0.125000;0.227860;,
  0.194140;0.106200;,
  0.187500;0.000000;,
  0.207650;0.107450;,
  0.230630;0.230000;,
  0.201790;0.228570;,
  0.263430;0.107450;,
  0.250000;0.000000;,
  0.276990;0.107970;,
  0.307830;0.231330;,
  0.278750;0.230000;,
  0.332740;0.107970;,
  0.312500;0.000000;,
  0.346080;0.107440;,
  0.384930;0.231770;,
  0.355880;0.231330;,
  0.401860;0.107440;,
  0.375000;0.000000;,
  0.414820;0.106200;,
  0.461640;0.231040;,
  0.432940;0.231770;,
  0.470690;0.106200;,
  0.437500;0.000000;,
  0.483430;0.104980;,
  0.537950;0.229590;,
  0.509700;0.231040;,
  0.539370;0.104980;,
  0.500000;0.000000;,
  0.552240;0.104480;,
  0.614140;0.228280;,
  0.586100;0.229590;,
  0.119050;0.904730;,
  0.005810;0.907110;,
  0.237780;0.902270;,
  0.125000;0.904730;,
  0.356470;0.901160;,
  0.243890;0.902270;,
  0.475510;0.902040;,
  0.362650;0.901160;,
  0.595130;0.904410;,
  0.481630;0.902040;,
  0.715080;0.906880;,
  0.601100;0.904410;,
  0.834750;0.908000;,
  0.720900;0.906880;,
  0.953550;0.907110;,
  0.840500;0.908000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.243950;0.951590;,
  0.250000;1.000000;,
  0.125000;1.000000;,
  0.125000;0.949700;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.365140;0.947410;,
  0.375000;1.000000;,
  0.247130;0.954010;,
  0.488980;0.955920;,
  0.500000;1.000000;,
  0.368620;0.948950;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.610560;0.953800;,
  0.625000;1.000000;,
  0.491820;0.956380;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.732000;0.952010;,
  0.750000;1.000000;,
  0.613620;0.954490;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.856550;0.957830;,
  0.875000;1.000000;,
  0.736670;0.957330;,
  0.978340;0.956680;,
  1.000000;1.000000;,
  0.854690;0.945850;,
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
  0.122120;0.953900;,
  0.000000;1.000000;,
  0.002450;0.960850;,
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
