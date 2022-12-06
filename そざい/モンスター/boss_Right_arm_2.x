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
 28;
 0.28810;8.01086;-13.71796;,
 0.13645;16.34788;-9.00449;,
 25.09391;17.09975;-9.37319;,
 25.25501;8.24399;-14.37992;,
 0.00854;19.70376;-0.03594;,
 24.95801;20.66448;0.15342;,
 -0.03558;16.50832;8.99124;,
 24.91102;17.27021;9.74231;,
 0.02435;8.25685;13.85315;,
 24.97489;8.50513;14.90670;,
 0.16080;-1.18990;12.27480;,
 25.11968;-1.52934;13.23017;,
 0.30950;-7.41151;4.99477;,
 25.27771;-8.13816;5.49713;,
 0.40110;-7.49695;-4.58058;,
 25.37496;-8.22884;-4.67401;,
 0.39263;-1.40612;-11.97079;,
 25.36592;-1.75909;-12.52408;,
 50.05761;16.52669;-8.61019;,
 50.20929;8.18970;-13.32366;,
 49.92968;19.88262;0.35836;,
 49.88551;16.68724;9.38554;,
 49.94557;8.43565;14.24743;,
 50.08194;-1.01112;12.66908;,
 50.23068;-7.23278;5.38904;,
 50.32214;-7.31810;-4.18628;,
 50.31373;-1.22731;-11.57650;,
 51.66162;5.88702;0.49591;;
 
 34;
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
 3;4,1,0;,
 3;4,8,6;,
 3;4,10,8;,
 3;4,12,10;,
 3;4,14,12;,
 3;4,16,14;,
 3;4,0,16;,
 3;27,19,18;,
 3;27,18,20;,
 3;27,20,21;,
 3;27,21,22;,
 3;27,22,23;,
 3;27,23,24;,
 3;27,24,25;,
 3;27,25,26;,
 3;27,26,19;;
 
 MeshMaterialList {
  4;
  34;
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
  46;
  -0.038406;0.999219;-0.009261;,
  -0.027678;0.164379;-0.986009;,
  -0.032479;0.759511;-0.649683;,
  -0.042676;0.770986;0.635421;,
  -0.043292;0.181833;0.982376;,
  -0.039978;-0.492297;0.869509;,
  -0.034283;-0.936190;0.349818;,
  -0.028863;-0.942247;-0.333672;,
  -0.026253;-0.507607;-0.861189;,
  0.007199;0.164889;-0.986286;,
  0.002401;0.760243;-0.649635;,
  -0.003522;0.999954;-0.008942;,
  -0.007797;0.771673;0.635972;,
  -0.008422;0.182336;0.983200;,
  -0.005109;-0.492234;0.870448;,
  0.000595;-0.936585;0.350441;,
  0.006022;-0.942679;-0.333648;,
  0.008630;-0.507600;-0.861549;,
  0.042069;0.165200;-0.985363;,
  0.037277;0.760049;-0.648796;,
  0.031364;0.999471;-0.008612;,
  0.027089;0.771420;0.635749;,
  0.026457;0.182616;0.982828;,
  0.029768;-0.491572;0.870328;,
  0.035475;-0.935839;0.350637;,
  0.040902;-0.941962;-0.333218;,
  0.043503;-0.506976;-0.860862;,
  0.999874;0.012785;0.009436;,
  -0.999873;-0.012846;-0.009446;,
  -0.999873;-0.012841;-0.009455;,
  -0.999873;-0.012846;-0.009451;,
  -0.999873;-0.012838;-0.009443;,
  -0.999873;-0.012814;-0.009423;,
  -0.999873;-0.012856;-0.009452;,
  -0.999873;-0.012850;-0.009446;,
  -0.999873;-0.012851;-0.009448;,
  -0.999873;-0.012852;-0.009446;,
  0.994570;0.030934;-0.099367;,
  0.993385;0.096522;-0.062203;,
  0.992385;0.122889;0.008392;,
  0.992035;0.097754;0.079441;,
  0.992498;0.032850;0.117765;,
  0.993562;-0.041527;0.105400;,
  0.994730;-0.090569;0.048057;,
  0.995450;-0.091250;-0.027425;,
  0.995386;-0.043239;-0.085654;;
  34;
  4;1,2,10,9;,
  4;2,0,11,10;,
  4;0,3,12,11;,
  4;3,4,13,12;,
  4;4,5,14,13;,
  4;5,6,15,14;,
  4;6,7,16,15;,
  4;7,8,17,16;,
  4;8,1,9,17;,
  4;9,10,19,18;,
  4;10,11,20,19;,
  4;11,12,21,20;,
  4;12,13,22,21;,
  4;13,14,23,22;,
  4;14,15,24,23;,
  4;15,16,25,24;,
  4;16,17,26,25;,
  4;17,9,18,26;,
  3;28,29,30;,
  3;28,31,32;,
  3;28,33,31;,
  3;28,34,33;,
  3;28,35,34;,
  3;28,36,35;,
  3;28,30,36;,
  3;27,37,38;,
  3;27,38,39;,
  3;27,39,40;,
  3;27,40,41;,
  3;27,41,42;,
  3;27,42,43;,
  3;27,43,44;,
  3;27,44,45;,
  3;27,45,37;;
 }
}
