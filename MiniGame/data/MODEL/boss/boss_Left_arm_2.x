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
 27;
 -1.34900;26.31132;-15.12000;,
 -0.75204;12.56456;-23.21440;,
 -42.29818;12.02452;-25.61798;,
 -42.93244;26.62658;-17.02000;,
 -0.43416;-3.17406;-20.57702;,
 -41.96054;-4.69342;-22.81652;,
 -0.54474;-13.54022;-8.44188;,
 -42.07774;-15.70452;-9.92614;,
 -1.03118;-13.68366;7.51250;,
 -42.59472;-15.85676;7.02110;,
 -1.66692;-3.53704;19.82128;,
 -43.26986;-5.07890;20.09560;,
 -2.15364;12.15170;22.72482;,
 -43.78692;11.58608;23.17986;,
 -2.26396;26.04176;14.86462;,
 -43.90414;26.34040;14.83060;,
 -1.94630;31.63370;-0.08158;,
 -43.56654;32.28040;-1.04548;,
 -83.91860;10.95486;-25.16712;,
 -84.51574;24.70166;-17.07270;,
 -83.60082;-4.78368;-22.52966;,
 -83.71122;-15.14986;-10.39454;,
 -84.19788;-15.29324;5.55992;,
 -84.83358;-5.14660;17.86874;,
 -85.32018;10.54216;20.77230;,
 -85.43026;24.43212;12.91196;,
 -85.11276;30.02424;-2.03404;;
 
 32;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,0,3,17;,
 4;3,2,18,19;,
 4;2,5,20,18;,
 4;5,7,21,20;,
 4;7,9,22,21;,
 4;9,11,23,22;,
 4;11,13,24,23;,
 4;13,15,25,24;,
 4;15,17,26,25;,
 4;17,3,19,26;,
 3;16,1,0;,
 3;16,4,1;,
 3;16,6,4;,
 3;16,8,6;,
 3;16,10,8;,
 3;16,12,10;,
 3;16,14,12;,
 3;26,19,18;,
 3;26,18,20;,
 3;26,20,21;,
 3;26,21,22;,
 3;26,22,23;,
 3;26,23,24;,
 3;26,24,25;;
 
 MeshMaterialList {
  4;
  32;
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
  45;
  0.015315;0.999838;0.009450;,
  0.034851;0.772016;-0.634647;,
  0.054404;0.183292;-0.981552;,
  0.064815;-0.491092;-0.868693;,
  0.061196;-0.935250;-0.348657;,
  0.045251;-0.941183;0.334853;,
  0.024454;-0.506468;0.861912;,
  0.008531;0.165434;0.986184;,
  0.004923;0.760314;0.649537;,
  0.000000;0.771626;-0.636076;,
  0.019554;0.182510;-0.983010;,
  0.029962;-0.492111;-0.870017;,
  0.026346;-0.936445;-0.349824;,
  0.010404;-0.942522;0.333982;,
  -0.010403;-0.507686;0.861479;,
  -0.026345;0.164718;0.985989;,
  -0.029960;0.760134;0.649076;,
  -0.019553;0.999773;0.008416;,
  -0.034851;0.770298;-0.636731;,
  -0.015317;0.181505;-0.983271;,
  -0.004926;-0.492531;-0.870281;,
  -0.008533;-0.936499;-0.350565;,
  -0.024455;-0.942714;0.332704;,
  -0.045249;-0.508286;0.859999;,
  -0.061192;0.163802;0.984594;,
  -0.064810;0.759028;0.647824;,
  -0.054399;0.998492;0.007372;,
  0.999208;0.025316;0.030716;,
  0.999207;0.025310;0.030721;,
  0.999208;0.025294;0.030735;,
  0.999207;0.025321;0.030718;,
  0.999208;0.025318;0.030711;,
  0.999207;0.025324;0.030712;,
  0.999207;0.025321;0.030720;,
  0.999208;0.025314;0.030708;,
  0.999208;0.025313;0.030707;,
  -0.999208;-0.025314;-0.030708;,
  -0.999208;-0.025325;-0.030705;,
  -0.999208;-0.025323;-0.030706;,
  -0.999208;-0.025319;-0.030712;,
  -0.999208;-0.025317;-0.030711;,
  -0.999207;-0.025320;-0.030719;,
  -0.999207;-0.025315;-0.030719;,
  -0.999209;-0.025296;-0.030697;,
  -0.999209;-0.025285;-0.030687;;
  32;
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,0,17,16;,
  4;0,1,9,17;,
  4;9,10,19,18;,
  4;10,11,20,19;,
  4;11,12,21,20;,
  4;12,13,22,21;,
  4;13,14,23,22;,
  4;14,15,24,23;,
  4;15,16,25,24;,
  4;16,17,26,25;,
  4;17,9,18,26;,
  3;27,28,29;,
  3;27,30,28;,
  3;27,31,30;,
  3;27,32,31;,
  3;27,33,32;,
  3;27,34,33;,
  3;27,35,34;,
  3;36,37,38;,
  3;36,38,39;,
  3;36,39,40;,
  3;36,40,41;,
  3;36,41,42;,
  3;36,42,43;,
  3;36,43,44;;
 }
}
