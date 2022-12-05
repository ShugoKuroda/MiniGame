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
 30;
 -0.41828;2.23564;-1.09814;,
 17.81082;-1.39034;-1.09814;,
 6.02666;-1.39034;-16.65760;,
 12.47160;-1.39034;11.79174;,
 -6.86316;-1.39034;14.46132;,
 -18.64732;-1.39034;-1.09814;,
 -13.30804;-1.39034;-13.98802;,
 42.82208;-32.42126;-1.09814;,
 30.15726;-32.42126;-31.67370;,
 30.15726;-32.42126;29.47732;,
 -0.41828;-32.42126;42.14210;,
 -43.65850;-32.42126;-1.09814;,
 -30.99372;-32.42126;29.47732;,
 -30.99372;-32.42126;-31.67368;,
 -0.41828;-32.42126;-44.33850;,
 27.04994;-74.29458;-28.56634;,
 -0.41828;-74.29458;-39.94404;,
 38.42756;-74.29458;-1.09814;,
 27.04994;-74.29458;26.36998;,
 -0.41828;-74.29458;37.74764;,
 -27.88636;-74.29458;26.36998;,
 -39.26402;-74.29458;-1.09814;,
 -27.88636;-74.29458;-28.56634;,
 17.81082;-95.28676;-1.09814;,
 6.02666;-95.28676;-16.65760;,
 12.47160;-95.28676;11.79174;,
 -6.86316;-95.28676;14.46132;,
 -18.64732;-95.28676;-1.09814;,
 -13.30804;-95.28676;-13.98802;,
 -0.41828;-98.91274;-1.09814;;
 
 36;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,2,6;,
 4;2,1,7,8;,
 4;1,3,9,7;,
 4;3,4,10,9;,
 4;4,5,11,12;,
 4;5,6,13,11;,
 4;6,2,14,13;,
 4;14,8,15,16;,
 4;8,7,17,15;,
 4;7,9,18,17;,
 4;9,10,19,18;,
 4;10,12,20,19;,
 4;12,11,21,20;,
 4;11,13,22,21;,
 4;13,14,16,22;,
 4;15,17,23,24;,
 4;17,18,25,23;,
 4;18,19,26,25;,
 4;20,21,27,26;,
 4;21,22,28,27;,
 4;22,16,24,28;,
 3;24,23,29;,
 3;23,25,29;,
 3;25,26,29;,
 3;26,27,29;,
 3;27,28,29;,
 3;28,24,29;,
 3;2,8,14;,
 3;4,12,10;,
 3;24,16,15;,
 3;26,19,20;;
 
 MeshMaterialList {
  4;
  36;
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
  30;
  -0.000000;1.000000;-0.000000;,
  0.205638;0.843354;-0.496455;,
  0.491200;0.870236;-0.037571;,
  0.320764;0.870236;0.373899;,
  -0.205639;0.843353;0.496456;,
  -0.491201;0.870236;0.037570;,
  -0.320764;0.870236;-0.373899;,
  0.029199;0.299678;-0.953594;,
  0.653645;0.299677;-0.694940;,
  0.951877;0.305756;-0.021054;,
  0.658190;0.305756;0.687967;,
  -0.029201;0.299676;0.953594;,
  -0.653645;0.299676;0.694940;,
  -0.951877;0.305756;0.021054;,
  -0.658191;0.305756;-0.687966;,
  0.026795;-0.443267;-0.895989;,
  0.614613;-0.443267;-0.652507;,
  0.892561;-0.450610;-0.016873;,
  0.619205;-0.450610;0.643068;,
  -0.026797;-0.443266;0.895990;,
  -0.614613;-0.443266;0.652508;,
  -0.892562;-0.450610;0.016873;,
  -0.619205;-0.450610;-0.643067;,
  0.186480;-0.873237;-0.450202;,
  0.449529;-0.892641;-0.033401;,
  0.294247;-0.892641;0.341484;,
  -0.186480;-0.873236;0.450204;,
  -0.449529;-0.892641;0.033400;,
  -0.294247;-0.892641;-0.341484;,
  -0.000000;-1.000000;-0.000000;;
  36;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,1,6;,
  4;1,2,9,8;,
  4;2,3,10,9;,
  4;3,4,11,10;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,1,7,14;,
  4;7,8,16,15;,
  4;8,9,17,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,7,15,22;,
  4;16,17,24,23;,
  4;17,18,25,24;,
  4;18,19,26,25;,
  4;20,21,27,26;,
  4;21,22,28,27;,
  4;22,15,23,28;,
  3;23,24,29;,
  3;24,25,29;,
  3;25,26,29;,
  3;26,27,29;,
  3;27,28,29;,
  3;28,23,29;,
  3;1,8,7;,
  3;4,12,11;,
  3;23,15,16;,
  3;26,19,20;;
 }
}