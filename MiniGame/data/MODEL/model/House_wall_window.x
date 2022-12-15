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
 274.51009;187.77366;-13.13847;,
 266.85100;187.77366;-13.13820;,
 266.85100;187.77366;0.36234;,
 274.51063;187.77366;0.36234;,
 176.18067;133.96023;-13.13820;,
 176.18067;127.75617;-13.13820;,
 176.18067;127.75617;0.36234;,
 176.18067;133.96023;0.36234;,
 266.85100;73.94301;-13.13820;,
 274.51009;73.94301;-13.13847;,
 274.51063;73.94301;0.36234;,
 266.85100;73.94301;0.36234;,
 365.18094;127.75617;-13.13820;,
 365.18094;133.96023;-13.13820;,
 365.18094;133.96023;0.36234;,
 365.18094;127.75617;0.36234;,
 274.51009;73.94301;-13.13847;,
 266.85100;73.94301;-13.13820;,
 266.85100;127.34281;-13.13820;,
 274.51009;127.34281;-13.13847;,
 365.18094;127.75617;-13.13820;,
 274.51009;134.37361;-13.13847;,
 365.18094;133.96023;-13.13820;,
 266.85100;134.37361;-13.13820;,
 176.18067;127.75617;-13.13820;,
 176.18067;133.96023;-13.13820;,
 266.85100;187.77366;-13.13820;,
 274.51009;187.77366;-13.13847;,
 274.51063;127.34281;0.36234;,
 266.85100;127.34281;0.36234;,
 266.85100;73.94301;0.36234;,
 274.51063;73.94301;0.36234;,
 365.18094;133.96023;0.36234;,
 274.51063;134.37361;0.36234;,
 365.18094;127.75617;0.36234;,
 266.85100;134.37361;0.36234;,
 176.18067;133.96023;0.36234;,
 176.18067;127.75617;0.36234;,
 274.51063;187.77366;0.36234;,
 266.85100;187.77366;0.36234;,
 404.68278;193.43286;-8.97210;,
 134.68275;193.43286;-8.97183;,
 134.68248;193.43286;-6.27210;,
 404.68302;193.43286;-6.27183;,
 134.68275;193.43286;-8.97183;,
 134.68275;58.43286;-8.97183;,
 134.68248;58.43286;-6.27210;,
 134.68248;193.43286;-6.27210;,
 134.68275;58.43286;-8.97183;,
 404.68278;58.43286;-8.97210;,
 404.68302;58.43286;-6.27183;,
 134.68248;58.43286;-6.27210;,
 404.68278;58.43286;-8.97210;,
 404.68278;193.43286;-8.97210;,
 404.68302;193.43286;-6.27183;,
 404.68302;58.43286;-6.27183;,
 360.46026;175.29075;0.41553;,
 540.46036;175.29075;0.41580;,
 540.46036;265.29066;0.41580;,
 360.46026;265.29066;0.41553;,
 360.46055;265.29066;-13.08420;,
 540.46061;265.29066;-13.08393;,
 540.46061;175.29075;-13.08393;,
 360.46055;175.29075;-13.08420;,
 540.46036;175.29075;0.41580;,
 540.46061;175.29075;-13.08393;,
 360.46055;265.29066;-13.08420;,
 360.46026;265.29066;0.41553;,
 540.46036;85.29057;0.41580;,
 360.46026;85.29057;0.41553;,
 360.46055;85.29057;-13.08420;,
 540.46061;85.29057;-13.08393;,
 540.46036;85.29057;0.41580;,
 540.46061;85.29057;-13.08393;,
 540.46036;-4.70934;0.41580;,
 360.46026;-4.70934;0.41553;,
 360.46055;-4.70934;-13.08420;,
 540.46061;-4.70934;-13.08393;,
 360.46026;-4.70934;0.41553;,
 360.46055;-4.70934;-13.08420;,
 180.46017;175.29075;-13.08420;,
 180.46017;265.29066;-13.08420;,
 180.46017;265.29066;0.41553;,
 180.46017;175.29075;0.41553;,
 180.46017;265.29066;-13.08420;,
 180.46017;265.29066;0.41553;,
 0.46035;175.29075;-13.08420;,
 0.46035;265.29066;-13.08420;,
 0.46035;265.29066;0.41607;,
 0.46035;175.29075;0.41607;,
 0.46035;175.29075;0.41607;,
 0.46035;175.29075;-13.08420;,
 0.46035;85.29057;-13.08420;,
 180.46017;85.29057;-13.08420;,
 180.46017;85.29057;0.41553;,
 0.46035;85.29057;0.41607;,
 0.46035;85.29057;-13.08420;,
 0.46035;85.29057;0.41607;,
 180.46017;-4.70934;0.41553;,
 0.46035;-4.70934;0.41607;,
 0.46035;-4.70934;-13.08420;,
 180.46017;-4.70934;-13.08420;,
 180.46017;-4.70934;-13.08420;,
 180.46017;-4.70934;0.41553;,
 -265.48992;187.77366;-13.13820;,
 -273.14928;187.77366;-13.13793;,
 -273.14901;187.77366;0.36234;,
 -265.48992;187.77366;0.36234;,
 -363.81907;133.96023;-13.13820;,
 -363.81907;127.75617;-13.13820;,
 -363.81907;127.75617;0.36261;,
 -363.81907;133.96023;0.36261;,
 -273.14928;73.94301;-13.13793;,
 -265.48992;73.94301;-13.13820;,
 -265.48992;73.94301;0.36234;,
 -273.14901;73.94301;0.36234;,
 -174.81934;127.75617;-13.13820;,
 -174.81934;133.96023;-13.13820;,
 -174.81934;133.96023;0.36261;,
 -174.81934;127.75617;0.36261;,
 -265.48992;73.94301;-13.13820;,
 -273.14928;73.94301;-13.13793;,
 -273.14928;127.34281;-13.13793;,
 -265.48992;127.34281;-13.13820;,
 -174.81934;127.75617;-13.13820;,
 -265.48992;134.37361;-13.13820;,
 -174.81934;133.96023;-13.13820;,
 -273.14928;134.37361;-13.13793;,
 -363.81907;127.75617;-13.13820;,
 -363.81907;133.96023;-13.13820;,
 -273.14928;187.77366;-13.13793;,
 -265.48992;187.77366;-13.13820;,
 -265.48992;127.34281;0.36234;,
 -273.14901;127.34281;0.36234;,
 -273.14901;73.94301;0.36234;,
 -265.48992;73.94301;0.36234;,
 -174.81934;133.96023;0.36261;,
 -265.48992;134.37361;0.36234;,
 -174.81934;127.75617;0.36261;,
 -273.14901;134.37361;0.36234;,
 -363.81907;133.96023;0.36261;,
 -363.81907;127.75617;0.36261;,
 -265.48992;187.77366;0.36234;,
 -273.14901;187.77366;0.36234;,
 -135.31725;193.43286;-8.97183;,
 -405.31753;193.43286;-8.97183;,
 -405.31753;193.43286;-6.27183;,
 -135.31752;193.43286;-6.27183;,
 -405.31753;193.43286;-8.97183;,
 -405.31753;58.43286;-8.97183;,
 -405.31753;58.43286;-6.27183;,
 -405.31753;193.43286;-6.27183;,
 -405.31753;58.43286;-8.97183;,
 -135.31725;58.43286;-8.97183;,
 -135.31752;58.43286;-6.27183;,
 -405.31753;58.43286;-6.27183;,
 -135.31725;58.43286;-8.97183;,
 -135.31725;193.43286;-8.97183;,
 -135.31752;193.43286;-6.27183;,
 -135.31752;58.43286;-6.27183;,
 -179.54001;175.29075;0.41580;,
 0.46008;175.29075;0.41580;,
 0.46008;265.29066;0.41580;,
 -179.54001;265.29066;0.41580;,
 -179.54001;265.29066;-13.08420;,
 0.46008;265.29066;-13.08393;,
 0.46008;175.29075;-13.08393;,
 -179.54001;175.29075;-13.08420;,
 0.46008;175.29075;0.41580;,
 0.46008;175.29075;-13.08393;,
 -179.54001;265.29066;-13.08420;,
 -179.54001;265.29066;0.41580;,
 0.46008;85.29057;0.41580;,
 -179.54001;85.29057;0.41580;,
 -179.54001;85.29057;-13.08420;,
 0.46008;85.29057;-13.08393;,
 0.46008;85.29057;0.41580;,
 0.46008;85.29057;-13.08393;,
 0.46008;-4.70934;0.41580;,
 -179.54001;-4.70934;0.41580;,
 -179.54001;-4.70934;-13.08420;,
 0.46008;-4.70934;-13.08393;,
 -179.54001;-4.70934;0.41580;,
 -179.54001;-4.70934;-13.08420;,
 -359.53984;175.29075;-13.08393;,
 -359.53984;265.29066;-13.08393;,
 -359.53984;265.29066;0.41580;,
 -359.53984;175.29075;0.41580;,
 -359.53984;265.29066;-13.08393;,
 -359.53984;265.29066;0.41580;,
 -539.53994;175.29075;-13.08420;,
 -539.53994;265.29066;-13.08420;,
 -539.53994;265.29066;0.41607;,
 -539.53994;175.29075;0.41607;,
 -539.53994;175.29075;0.41607;,
 -539.53994;175.29075;-13.08420;,
 -539.53994;85.29057;-13.08420;,
 -359.53984;85.29057;-13.08393;,
 -359.53984;85.29057;0.41580;,
 -539.53994;85.29057;0.41607;,
 -539.53994;85.29057;-13.08420;,
 -539.53994;85.29057;0.41607;,
 -359.53984;-4.70934;0.41580;,
 -539.53994;-4.70934;0.41607;,
 -539.53994;-4.70934;-13.08420;,
 -359.53984;-4.70934;-13.08393;,
 -359.53984;-4.70934;-13.08393;,
 -359.53984;-4.70934;0.41580;;
 
 116;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,19,21,22;,
 4;19,18,23,21;,
 4;18,24,25,23;,
 4;21,23,26,27;,
 4;28,29,30,31;,
 4;32,33,28,34;,
 4;33,35,29,28;,
 4;35,36,37,29;,
 4;38,39,35,33;,
 4;9,19,28,10;,
 4;19,20,15,28;,
 4;11,29,18,8;,
 4;6,24,18,29;,
 4;13,21,33,32;,
 4;21,0,3,33;,
 4;36,35,23,4;,
 4;35,2,1,23;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;56,57,58,59;,
 4;60,61,62,63;,
 4;64,65,61,58;,
 4;58,61,66,67;,
 4;68,57,56,69;,
 4;70,63,62,71;,
 4;65,64,72,73;,
 4;56,63,70,69;,
 4;74,68,69,75;,
 4;76,70,71,77;,
 4;77,74,78,79;,
 4;73,72,74,77;,
 4;80,81,60,63;,
 4;56,59,82,83;,
 4;63,56,83,80;,
 4;67,66,84,85;,
 4;81,80,86,87;,
 4;82,88,89,83;,
 4;90,88,87,91;,
 4;85,84,87,88;,
 4;92,86,80,93;,
 4;94,83,89,95;,
 4;80,83,94,93;,
 4;90,91,96,97;,
 4;98,94,95,99;,
 4;99,97,96,100;,
 4;100,92,93,101;,
 4;99,100,102,103;,
 4;103,102,79,78;,
 4;101,93,70,76;,
 4;75,69,94,98;,
 4;69,70,93,94;,
 4;104,105,106,107;,
 4;108,109,110,111;,
 4;112,113,114,115;,
 4;116,117,118,119;,
 4;120,121,122,123;,
 4;124,123,125,126;,
 4;123,122,127,125;,
 4;122,128,129,127;,
 4;125,127,130,131;,
 4;132,133,134,135;,
 4;136,137,132,138;,
 4;137,139,133,132;,
 4;139,140,141,133;,
 4;142,143,139,137;,
 4;113,123,132,114;,
 4;123,124,119,132;,
 4;115,133,122,112;,
 4;110,128,122,133;,
 4;117,125,137,136;,
 4;125,104,107,137;,
 4;140,139,127,108;,
 4;139,106,105,127;,
 4;144,145,146,147;,
 4;148,149,150,151;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;168,169,165,162;,
 4;162,165,170,171;,
 4;172,161,160,173;,
 4;174,167,166,175;,
 4;169,168,176,177;,
 4;160,167,174,173;,
 4;178,172,173,179;,
 4;180,174,175,181;,
 4;181,178,182,183;,
 4;177,176,178,181;,
 4;184,185,164,167;,
 4;160,163,186,187;,
 4;167,160,187,184;,
 4;171,170,188,189;,
 4;185,184,190,191;,
 4;186,192,193,187;,
 4;194,192,191,195;,
 4;189,188,191,192;,
 4;196,190,184,197;,
 4;198,187,193,199;,
 4;184,187,198,197;,
 4;194,195,200,201;,
 4;202,198,199,203;,
 4;203,201,200,204;,
 4;204,196,197,205;,
 4;203,204,206,207;,
 4;207,206,183,182;,
 4;205,197,174,180;,
 4;179,173,198,202;,
 4;173,174,197,198;;
 
 MeshMaterialList {
  13;
  116;
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
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
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
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\MODEL\\model\\Tex\\Wood_Floor.jpg";
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
   0.279200;0.417600;0.558400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.181480;0.271440;0.362960;;
  }
  Material {
   0.213600;0.213600;0.213600;1.000000;;
   6.000000;
   0.380000;0.380000;0.380000;;
   0.048060;0.048060;0.048060;;
  }
  Material {
   0.571200;0.432800;0.210400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.392700;0.297550;0.144650;;
  }
  Material {
   0.524000;0.376800;0.153600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.353700;0.254340;0.103680;;
  }
  Material {
   0.404800;0.664800;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.111320;0.182820;0.220000;;
  }
  Material {
   0.000000;0.684000;0.800000;1.000000;;
   5.000000;
   0.460000;0.460000;0.460000;;
   0.000000;0.649800;0.760000;;
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
    "data\\MODEL\\model\\Tex\\Wood_Floor.jpg";
   }
  }
  Material {
   0.800000;0.574118;0.345098;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.550000;0.394706;0.237255;;
   TextureFilename {
    "data\\MODEL\\model\\Tex\\wood01.jpg";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  75;
  -0.000002;0.000000;1.000000;,
  -0.000002;0.000000;1.000000;,
  0.000002;0.000000;-1.000000;,
  0.000002;0.000000;-1.000000;,
  0.000002;0.000000;-1.000000;,
  -0.000002;0.000000;1.000000;,
  -0.000001;0.000000;1.000000;,
  0.000002;0.000000;1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000003;0.000000;1.000000;,
  0.000003;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000002;0.000000;1.000000;,
  -0.000001;0.000000;1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000002;0.000000;1.000000;,
  0.000002;0.000000;1.000000;,
  -0.000001;0.000000;1.000000;,
  -0.000001;0.000000;1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  1.000000;0.000000;0.000000;,
  -0.000022;0.000000;-1.000000;,
  -0.000023;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;-0.000099;,
  -0.000035;0.000000;-1.000000;,
  0.000003;0.000000;-1.000000;,
  1.000000;0.000000;-0.000040;,
  0.004559;-0.999990;-0.000000;,
  -0.004559;-0.999990;0.000000;,
  0.004559;0.999990;-0.000000;,
  1.000000;0.000000;-0.000040;,
  -0.004559;0.999990;0.000000;,
  1.000000;0.000000;-0.000092;,
  1.000000;0.000000;0.000018;,
  -1.000000;0.000000;-0.000021;,
  0.000000;0.000000;1.000000;,
  0.000002;0.000000;-1.000000;,
  0.000002;0.000000;-1.000000;,
  0.000001;0.000000;1.000000;,
  0.000002;0.000000;-1.000000;,
  -0.000000;0.000000;-1.000000;,
  0.000002;0.000000;1.000000;,
  0.000002;0.000000;1.000000;,
  0.000002;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000001;0.000000;1.000000;,
  -0.000000;0.000000;-1.000000;,
  0.000001;0.000000;1.000000;,
  0.000001;0.000000;1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000001;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  1.000000;0.000000;0.000000;,
  -0.000024;0.000000;-1.000000;,
  -0.000023;0.000000;-1.000000;,
  -0.000001;0.000000;1.000000;,
  0.000001;0.000000;1.000000;,
  -0.000035;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000003;0.000000;-1.000000;,
  -0.000003;0.000000;1.000000;,
  0.000003;0.000000;1.000000;,
  0.004559;-0.999990;-0.000000;,
  -1.000000;0.000000;0.000020;,
  -0.004559;-0.999990;0.000000;,
  0.004559;0.999990;0.000000;,
  -0.004559;0.999990;0.000000;,
  -1.000000;0.000000;0.000020;,
  1.000000;0.000000;0.000099;;
  116;
  4;22,22,22,22;,
  4;12,12,12,12;,
  4;23,23,23,23;,
  4;24,24,24,24;,
  4;29,29,26,25;,
  4;30,25,25,30;,
  4;25,26,26,25;,
  4;26,9,9,26;,
  4;25,26,29,29;,
  4;27,27,27,27;,
  4;27,27,27,27;,
  4;27,27,27,27;,
  4;27,27,27,27;,
  4;27,27,27,27;,
  4;31,31,31,31;,
  4;32,32,32,32;,
  4;12,12,12,12;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;36,36,36,36;,
  4;12,12,12,12;,
  4;22,22,22,22;,
  4;28,28,28,28;,
  4;23,23,23,23;,
  4;37,37,37,37;,
  4;18,1,0,14;,
  4;15,2,3,20;,
  4;38,38,38,38;,
  4;22,22,22,22;,
  4;0,1,18,19;,
  4;21,20,3,4;,
  4;38,38,38,38;,
  4;39,39,39,39;,
  4;5,0,19,6;,
  4;8,21,4,4;,
  4;23,23,23,23;,
  4;38,38,38,38;,
  4;9,9,15,20;,
  4;18,14,13,16;,
  4;23,23,23,23;,
  4;22,22,22,22;,
  4;9,9,9,9;,
  4;13,11,11,16;,
  4;12,12,12,12;,
  4;22,22,22,22;,
  4;9,9,9,9;,
  4;17,16,11,10;,
  4;24,24,24,24;,
  4;12,12,12,12;,
  4;7,17,10,10;,
  4;12,12,12,12;,
  4;9,9,9,9;,
  4;23,23,23,23;,
  4;23,23,23,23;,
  4;9,9,21,8;,
  4;6,19,17,7;,
  4;22,22,22,22;,
  4;56,56,56,56;,
  4;49,49,49,49;,
  4;57,57,57,57;,
  4;58,58,58,58;,
  4;63,63,60,59;,
  4;64,59,59,64;,
  4;59,60,60,59;,
  4;60,65,65,60;,
  4;59,60,63,63;,
  4;61,62,40,40;,
  4;66,61,61,66;,
  4;61,62,62,61;,
  4;62,67,67,62;,
  4;40,40,62,61;,
  4;58,58,58,58;,
  4;68,68,68,68;,
  4;69,69,69,69;,
  4;70,70,70,70;,
  4;71,71,71,71;,
  4;58,58,58,58;,
  4;72,72,72,72;,
  4;73,73,73,73;,
  4;56,56,56,56;,
  4;49,49,49,49;,
  4;57,57,57,57;,
  4;74,74,74,74;,
  4;40,40,40,40;,
  4;51,41,42,54;,
  4;58,58,58,58;,
  4;56,56,56,56;,
  4;40,40,40,40;,
  4;55,54,42,42;,
  4;58,58,58,58;,
  4;49,49,49,49;,
  4;40,40,40,40;,
  4;45,55,42,44;,
  4;57,57,57,57;,
  4;58,58,58,58;,
  4;54,51,51,54;,
  4;40,40,50,52;,
  4;57,57,57,57;,
  4;56,56,56,56;,
  4;51,54,42,41;,
  4;50,47,48,52;,
  4;49,49,49,49;,
  4;56,56,56,56;,
  4;42,42,54,55;,
  4;53,52,48,47;,
  4;58,58,58,58;,
  4;49,49,49,49;,
  4;43,53,47,46;,
  4;49,49,49,49;,
  4;44,42,55,45;,
  4;57,57,57,57;,
  4;57,57,57,57;,
  4;45,55,55,45;,
  4;40,40,53,43;,
  4;56,56,56,56;;
 }
 MeshTextureCoords {
  208;
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;0.333330;,
  0.333330;0.333330;,
  0.000000;0.333330;,
  0.333330;0.666670;,
  0.000000;0.666670;,
  0.666670;0.666670;,
  1.000000;0.333330;,
  1.000000;0.666670;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.666670;,
  0.666670;0.666670;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.000000;0.333330;,
  0.333330;0.333330;,
  0.000000;0.666670;,
  0.666670;0.333330;,
  1.000000;0.333330;,
  1.000000;0.666670;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.333330;0.666670;,
  0.333330;1.000000;,
  0.000000;0.000000;,
  0.000000;0.666670;,
  0.000000;0.333330;,
  0.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;0.333330;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.666670;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.666670;0.666670;,
  0.666670;0.333330;,
  0.666670;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  1.000000;0.000000;,
  1.000000;0.666670;,
  1.000000;0.333330;,
  1.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.333330;0.666670;,
  0.000000;0.666670;,
  0.000000;0.333330;,
  0.333330;0.333330;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.666670;1.000000;,
  0.666670;0.666670;,
  0.666670;0.333330;,
  0.666670;0.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  1.000000;0.333330;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.666670;,
  0.666670;1.000000;,
  0.666670;0.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;0.333330;,
  0.333330;0.333330;,
  0.000000;0.333330;,
  0.333330;0.666670;,
  0.000000;0.666670;,
  0.666670;0.666670;,
  1.000000;0.333330;,
  1.000000;0.666670;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.333330;0.666670;,
  0.666670;0.666670;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  0.000000;0.333330;,
  0.333330;0.333330;,
  0.000000;0.666670;,
  0.666670;0.333330;,
  1.000000;0.333330;,
  1.000000;0.666670;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.333330;0.666670;,
  0.333330;1.000000;,
  0.000000;0.000000;,
  0.000000;0.666670;,
  0.000000;0.333330;,
  0.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;0.333330;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.666670;1.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.666670;0.666670;,
  0.666670;0.333330;,
  0.666670;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  1.000000;0.000000;,
  1.000000;0.666670;,
  1.000000;0.333330;,
  1.000000;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.333330;0.666670;,
  0.000000;0.666670;,
  0.000000;0.333330;,
  0.333330;0.333330;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;1.000000;,
  0.666670;1.000000;,
  0.666670;0.666670;,
  0.666670;0.333330;,
  0.666670;0.000000;,
  0.333330;1.000000;,
  0.333330;0.000000;,
  1.000000;0.333330;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.666670;,
  0.666670;1.000000;,
  0.666670;0.000000;;
 }
}
