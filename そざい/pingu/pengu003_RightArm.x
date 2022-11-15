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
 282;
 31.00222;-0.01562;-0.55633;,
 30.62966;0.06455;0.55828;,
 30.62943;-0.01132;0.61579;,
 30.62972;0.13274;0.39171;,
 30.62959;0.18653;0.13239;,
 30.62930;0.22069;-0.19429;,
 30.62882;0.23195;-0.55636;,
 30.62828;0.21905;-0.91838;,
 30.62766;0.18342;-1.24491;,
 30.62704;0.12846;-1.50398;,
 30.62653;0.05952;-1.67024;,
 30.62613;-0.01660;-1.72741;,
 30.62584;-0.09247;-1.66990;,
 30.62576;-0.16065;-1.50332;,
 30.62591;-0.21449;-1.24401;,
 30.62622;-0.24865;-0.91732;,
 30.62666;-0.25993;-0.55525;,
 30.62723;-0.24702;-0.19323;,
 30.62785;-0.21138;0.13330;,
 30.62843;-0.15637;0.39236;,
 30.62897;-0.08744;0.55863;,
 30.22577;0.14139;1.62425;,
 30.22527;-0.00701;1.73676;,
 30.22590;0.27476;1.29839;,
 30.22565;0.38006;0.79108;,
 30.22508;0.44698;0.15199;,
 30.22417;0.46889;-0.55633;,
 30.22308;0.44378;-1.26455;,
 30.22186;0.37398;-1.90332;,
 30.22068;0.26638;-2.41015;,
 30.21964;0.13155;-2.73540;,
 30.21882;-0.01736;-2.84724;,
 30.21833;-0.16582;-2.73473;,
 30.21823;-0.29918;-2.40887;,
 30.21845;-0.40445;-1.90156;,
 30.21906;-0.47136;-1.26247;,
 30.21996;-0.49330;-0.55415;,
 30.22106;-0.46816;0.15406;,
 30.22224;-0.39836;0.79284;,
 30.22345;-0.29080;1.29967;,
 30.22447;-0.15596;1.62492;,
 29.55265;0.21269;2.59533;,
 29.55193;-0.00179;2.75794;,
 29.55286;0.40545;2.12443;,
 29.55246;0.55760;1.39131;,
 29.55161;0.65429;0.46774;,
 29.55029;0.68596;-0.55587;,
 29.54874;0.64967;-1.57933;,
 29.54699;0.54881;-2.50245;,
 29.54531;0.39335;-3.23487;,
 29.54379;0.19847;-3.70490;,
 29.54260;-0.01674;-3.86652;,
 29.54189;-0.23119;-3.70393;,
 29.54173;-0.42396;-3.23302;,
 29.54210;-0.57609;-2.49990;,
 29.54296;-0.67279;-1.57633;,
 29.54423;-0.70448;-0.55271;,
 29.54583;-0.66817;0.47074;,
 29.54757;-0.56730;1.39385;,
 29.54926;-0.41186;2.12628;,
 29.55075;-0.21697;2.59631;,
 27.15688;0.28190;3.43117;,
 27.15596;0.01069;3.63675;,
 27.15709;0.52553;2.83580;,
 27.15665;0.71790;1.90891;,
 27.15555;0.84012;0.74123;,
 27.15390;0.88021;-0.55294;,
 27.15191;0.83428;-1.84691;,
 27.14973;0.70679;-3.01402;,
 27.14756;0.51023;-3.94003;,
 27.14568;0.26391;-4.53430;,
 27.14419;-0.00823;-4.73864;,
 27.14328;-0.27938;-4.53307;,
 27.14303;-0.52308;-3.93769;,
 27.14348;-0.71543;-3.01080;,
 27.14461;-0.83767;-1.84312;,
 27.14621;-0.87774;-0.54895;,
 27.14825;-0.83182;0.74502;,
 27.15041;-0.70432;1.91213;,
 27.15257;-0.50779;2.83813;,
 27.15450;-0.26140;3.43240;,
 24.25960;0.34093;4.09367;,
 24.25860;0.02496;4.33323;,
 24.25988;0.62493;3.39985;,
 24.25937;0.84913;2.31970;,
 24.25809;0.99156;0.95894;,
 24.25618;1.03827;-0.54922;,
 24.25385;0.98475;-2.05715;,
 24.25129;0.83618;-3.41725;,
 24.24877;0.60711;-4.49637;,
 24.24654;0.31998;-5.18890;,
 24.24486;0.00288;-5.42704;,
 24.24378;-0.31312;-5.18747;,
 24.24351;-0.59710;-4.49364;,
 24.24405;-0.82130;-3.41349;,
 24.24532;-0.96370;-2.05274;,
 24.24721;-1.01041;-0.54457;,
 24.24955;-0.95689;0.96336;,
 24.25212;-0.80835;2.32345;,
 24.25462;-0.57927;3.40258;,
 24.25685;-0.29215;4.09510;,
 20.98755;0.38738;4.55387;,
 20.98640;0.04033;4.81697;,
 20.98786;0.69926;3.79194;,
 20.98729;0.94541;2.60573;,
 20.98585;1.10187;1.11137;,
 20.98379;1.15318;-0.54488;,
 20.98120;1.09439;-2.20087;,
 20.97842;0.93119;-3.69450;,
 20.97566;0.67969;-4.87959;,
 20.97321;0.36436;-5.64011;,
 20.97131;0.01614;-5.90162;,
 20.97017;-0.33092;-5.63853;,
 20.96986;-0.64278;-4.87659;,
 20.97048;-0.88894;-3.69038;,
 20.97185;-1.04536;-2.19602;,
 20.97393;-1.09675;-0.53977;,
 20.97652;-1.03789;1.11622;,
 20.97935;-0.87471;2.60986;,
 20.98207;-0.62321;3.79493;,
 20.98454;-0.30791;4.55545;,
 17.48368;0.41911;4.79169;,
 17.48248;0.05620;5.06679;,
 17.48399;0.74523;3.99492;,
 17.48341;1.00269;2.75449;,
 17.48190;1.16625;1.19184;,
 17.47974;1.21990;-0.54009;,
 17.47704;1.15843;-2.27177;,
 17.47413;0.98782;-3.83367;,
 17.47123;0.72476;-5.07291;,
 17.46869;0.39504;-5.86819;,
 17.46672;0.03089;-6.14165;,
 17.46546;-0.33198;-5.86654;,
 17.46519;-0.65811;-5.06978;,
 17.46580;-0.91558;-3.82935;,
 17.46726;-1.07910;-2.26670;,
 17.46945;-1.13279;-0.53476;,
 17.47213;-1.07128;1.19691;,
 17.47507;-0.90071;2.75881;,
 17.47796;-0.63764;3.99805;,
 17.48046;-0.30791;4.79333;,
 13.90114;0.43477;4.79669;,
 13.89992;0.07189;5.07179;,
 13.90142;0.76093;3.99993;,
 13.90081;1.01837;2.75950;,
 13.89933;1.18191;1.19684;,
 13.89717;1.23555;-0.53509;,
 13.89445;1.17409;-2.26676;,
 13.89156;1.00349;-3.82866;,
 13.88866;0.74046;-5.06791;,
 13.88615;0.41071;-5.86318;,
 13.88415;0.04659;-6.13665;,
 13.88293;-0.31631;-5.86154;,
 13.88262;-0.64243;-5.06478;,
 13.88324;-0.89988;-3.82435;,
 13.88472;-1.06345;-2.26169;,
 13.88692;-1.11713;-0.52975;,
 13.88961;-1.05563;1.20191;,
 13.89251;-0.88501;2.76381;,
 13.89538;-0.62196;4.00306;,
 13.89792;-0.29225;4.79833;,
 10.39643;0.43371;4.56867;,
 10.39530;0.08665;4.83177;,
 10.39673;0.74554;3.80674;,
 10.39618;0.99174;2.62053;,
 10.39475;1.14817;1.12617;,
 10.39265;1.19950;-0.53008;,
 10.39009;1.14069;-2.18607;,
 10.38731;0.97751;-3.67971;,
 10.38453;0.72596;-4.86479;,
 10.38209;0.41070;-5.62531;,
 10.38023;0.06246;-5.88683;,
 10.37906;-0.28460;-5.62373;,
 10.37877;-0.59648;-4.86180;,
 10.37934;-0.84266;-3.67558;,
 10.38075;-0.99908;-2.18122;,
 10.38286;-1.05040;-0.52497;,
 10.38540;-0.99161;1.13101;,
 10.38819;-0.82843;2.62465;,
 10.39096;-0.57691;3.80972;,
 10.39341;-0.26157;4.57025;,
 7.12284;0.41587;4.11761;,
 7.12180;0.09991;4.35717;,
 7.12312;0.69984;3.42379;,
 7.12257;0.92407;2.34364;,
 7.12124;1.06652;0.98289;,
 7.11939;1.11321;-0.52528;,
 7.11702;1.05971;-2.03321;,
 7.11448;0.91112;-3.39330;,
 7.11200;0.68201;-4.47243;,
 7.10977;0.39492;-5.16496;,
 7.10808;0.07787;-5.40310;,
 7.10698;-0.23816;-5.16353;,
 7.10673;-0.52217;-4.46970;,
 7.10725;-0.74634;-3.38955;,
 7.10852;-0.88875;-2.02879;,
 7.11043;-0.93550;-0.52063;,
 7.11279;-0.88194;0.98730;,
 7.11533;-0.73339;2.34739;,
 7.11784;-0.50434;3.42653;,
 7.12006;-0.21721;4.11904;,
 4.22335;0.38216;3.46320;,
 4.22246;0.11099;3.66879;,
 4.22357;0.62586;2.86784;,
 4.22311;0.81822;1.94095;,
 4.22202;0.94046;0.77327;,
 4.22040;0.98054;-0.52090;,
 4.21837;0.93461;-1.81487;,
 4.21619;0.80711;-2.98198;,
 4.21405;0.61056;-3.90799;,
 4.21213;0.36417;-4.50226;,
 4.21069;0.09209;-4.70660;,
 4.20982;-0.17910;-4.50103;,
 4.20950;-0.42278;-3.90565;,
 4.21002;-0.61515;-2.97876;,
 4.21107;-0.73735;-1.81108;,
 4.21274;-0.77745;-0.51691;,
 4.21470;-0.73151;0.77705;,
 4.21695;-0.60403;1.94417;,
 4.21905;-0.40748;2.87018;,
 4.22102;-0.16112;3.46444;,
 1.82479;0.33399;2.63407;,
 1.82402;0.11949;2.79667;,
 1.82492;0.52672;2.16317;,
 1.82456;0.67889;1.43005;,
 1.82366;0.77553;0.50648;,
 1.82239;0.80726;-0.51714;,
 1.82083;0.77091;-1.54059;,
 1.81908;0.67010;-2.46371;,
 1.81736;0.51462;-3.19613;,
 1.81589;0.31977;-3.66616;,
 1.81469;0.10453;-3.82779;,
 1.81398;-0.10995;-3.66519;,
 1.81376;-0.30267;-3.19428;,
 1.81415;-0.45482;-2.46116;,
 1.81502;-0.55152;-1.53760;,
 1.81634;-0.58321;-0.51398;,
 1.81791;-0.54690;0.50947;,
 1.81965;-0.44603;1.43259;,
 1.82132;-0.29055;2.16502;,
 1.82284;-0.09573;2.63504;,
 -0.22707;0.27460;1.66679;,
 -0.22754;0.12617;1.77931;,
 -0.22693;0.40794;1.34094;,
 -0.22719;0.51323;0.83363;,
 -0.22781;0.58015;0.19454;,
 -0.22869;0.60208;-0.51378;,
 -0.22979;0.57695;-1.22200;,
 -0.23100;0.50715;-1.86078;,
 -0.23215;0.39957;-2.36760;,
 -0.23320;0.26476;-2.69286;,
 -0.23400;0.11582;-2.80470;,
 -0.23454;-0.03261;-2.69218;,
 -0.23464;-0.16595;-2.36632;,
 -0.23439;-0.27126;-1.85902;,
 -0.23376;-0.33815;-1.21993;,
 -0.23289;-0.36013;-0.51160;,
 -0.23177;-0.33495;0.19661;,
 -0.23061;-0.26518;0.83539;,
 -0.22942;-0.15758;1.34222;,
 -0.22841;-0.02277;1.66746;,
 -1.07710;0.20321;0.60258;,
 -1.07740;0.12736;0.66009;,
 -1.07706;0.27142;0.43601;,
 -1.07718;0.32521;0.17669;,
 -1.07746;0.35939;-0.14999;,
 -1.07795;0.37065;-0.51207;,
 -1.07850;0.35775;-0.87409;,
 -1.07911;0.32211;-1.20061;,
 -1.07973;0.26714;-1.45968;,
 -1.08025;0.19818;-1.62594;,
 -1.08070;0.12207;-1.68311;,
 -1.08089;0.04619;-1.62560;,
 -1.08097;-0.02200;-1.45903;,
 -1.08083;-0.07580;-1.19971;,
 -1.08051;-0.11000;-0.87302;,
 -1.08007;-0.12123;-0.51095;,
 -1.07949;-0.10836;-0.14893;,
 -1.07892;-0.07269;0.17759;,
 -1.07829;-0.01772;0.43666;,
 -1.07776;0.05122;0.60292;,
 -1.45347;0.12638;-0.51099;;
 
 300;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,9,8;,
 3;0,10,9;,
 3;0,11,10;,
 3;0,12,11;,
 3;0,13,12;,
 3;0,14,13;,
 3;0,15,14;,
 3;0,16,15;,
 3;0,17,16;,
 3;0,18,17;,
 3;0,19,18;,
 3;0,20,19;,
 3;0,2,20;,
 4;2,1,21,22;,
 4;1,3,23,21;,
 4;3,4,24,23;,
 4;4,5,25,24;,
 4;5,6,26,25;,
 4;6,7,27,26;,
 4;7,8,28,27;,
 4;8,9,29,28;,
 4;9,10,30,29;,
 4;10,11,31,30;,
 4;11,12,32,31;,
 4;12,13,33,32;,
 4;13,14,34,33;,
 4;14,15,35,34;,
 4;15,16,36,35;,
 4;16,17,37,36;,
 4;17,18,38,37;,
 4;18,19,39,38;,
 4;19,20,40,39;,
 4;20,2,22,40;,
 4;22,21,41,42;,
 4;21,23,43,41;,
 4;23,24,44,43;,
 4;24,25,45,44;,
 4;25,26,46,45;,
 4;26,27,47,46;,
 4;27,28,48,47;,
 4;28,29,49,48;,
 4;29,30,50,49;,
 4;30,31,51,50;,
 4;31,32,52,51;,
 4;32,33,53,52;,
 4;33,34,54,53;,
 4;34,35,55,54;,
 4;35,36,56,55;,
 4;36,37,57,56;,
 4;37,38,58,57;,
 4;38,39,59,58;,
 4;39,40,60,59;,
 4;40,22,42,60;,
 4;42,41,61,62;,
 4;41,43,63,61;,
 4;43,44,64,63;,
 4;44,45,65,64;,
 4;45,46,66,65;,
 4;46,47,67,66;,
 4;47,48,68,67;,
 4;48,49,69,68;,
 4;49,50,70,69;,
 4;50,51,71,70;,
 4;51,52,72,71;,
 4;52,53,73,72;,
 4;53,54,74,73;,
 4;54,55,75,74;,
 4;55,56,76,75;,
 4;56,57,77,76;,
 4;57,58,78,77;,
 4;58,59,79,78;,
 4;59,60,80,79;,
 4;60,42,62,80;,
 4;62,61,81,82;,
 4;61,63,83,81;,
 4;63,64,84,83;,
 4;64,65,85,84;,
 4;65,66,86,85;,
 4;66,67,87,86;,
 4;67,68,88,87;,
 4;68,69,89,88;,
 4;69,70,90,89;,
 4;70,71,91,90;,
 4;71,72,92,91;,
 4;72,73,93,92;,
 4;73,74,94,93;,
 4;74,75,95,94;,
 4;75,76,96,95;,
 4;76,77,97,96;,
 4;77,78,98,97;,
 4;78,79,99,98;,
 4;79,80,100,99;,
 4;80,62,82,100;,
 4;82,81,101,102;,
 4;81,83,103,101;,
 4;83,84,104,103;,
 4;84,85,105,104;,
 4;85,86,106,105;,
 4;86,87,107,106;,
 4;87,88,108,107;,
 4;88,89,109,108;,
 4;89,90,110,109;,
 4;90,91,111,110;,
 4;91,92,112,111;,
 4;92,93,113,112;,
 4;93,94,114,113;,
 4;94,95,115,114;,
 4;95,96,116,115;,
 4;96,97,117,116;,
 4;97,98,118,117;,
 4;98,99,119,118;,
 4;99,100,120,119;,
 4;100,82,102,120;,
 4;102,101,121,122;,
 4;101,103,123,121;,
 4;103,104,124,123;,
 4;104,105,125,124;,
 4;105,106,126,125;,
 4;106,107,127,126;,
 4;107,108,128,127;,
 4;108,109,129,128;,
 4;109,110,130,129;,
 4;110,111,131,130;,
 4;111,112,132,131;,
 4;112,113,133,132;,
 4;113,114,134,133;,
 4;114,115,135,134;,
 4;115,116,136,135;,
 4;116,117,137,136;,
 4;117,118,138,137;,
 4;118,119,139,138;,
 4;119,120,140,139;,
 4;120,102,122,140;,
 4;122,121,141,142;,
 4;121,123,143,141;,
 4;123,124,144,143;,
 4;124,125,145,144;,
 4;125,126,146,145;,
 4;126,127,147,146;,
 4;127,128,148,147;,
 4;128,129,149,148;,
 4;129,130,150,149;,
 4;130,131,151,150;,
 4;131,132,152,151;,
 4;132,133,153,152;,
 4;133,134,154,153;,
 4;134,135,155,154;,
 4;135,136,156,155;,
 4;136,137,157,156;,
 4;137,138,158,157;,
 4;138,139,159,158;,
 4;139,140,160,159;,
 4;140,122,142,160;,
 4;142,141,161,162;,
 4;141,143,163,161;,
 4;143,144,164,163;,
 4;144,145,165,164;,
 4;145,146,166,165;,
 4;146,147,167,166;,
 4;147,148,168,167;,
 4;148,149,169,168;,
 4;149,150,170,169;,
 4;150,151,171,170;,
 4;151,152,172,171;,
 4;152,153,173,172;,
 4;153,154,174,173;,
 4;154,155,175,174;,
 4;155,156,176,175;,
 4;156,157,177,176;,
 4;157,158,178,177;,
 4;158,159,179,178;,
 4;159,160,180,179;,
 4;160,142,162,180;,
 4;162,161,181,182;,
 4;161,163,183,181;,
 4;163,164,184,183;,
 4;164,165,185,184;,
 4;165,166,186,185;,
 4;166,167,187,186;,
 4;167,168,188,187;,
 4;168,169,189,188;,
 4;169,170,190,189;,
 4;170,171,191,190;,
 4;171,172,192,191;,
 4;172,173,193,192;,
 4;173,174,194,193;,
 4;174,175,195,194;,
 4;175,176,196,195;,
 4;176,177,197,196;,
 4;177,178,198,197;,
 4;178,179,199,198;,
 4;179,180,200,199;,
 4;180,162,182,200;,
 4;182,181,201,202;,
 4;181,183,203,201;,
 4;183,184,204,203;,
 4;184,185,205,204;,
 4;185,186,206,205;,
 4;186,187,207,206;,
 4;187,188,208,207;,
 4;188,189,209,208;,
 4;189,190,210,209;,
 4;190,191,211,210;,
 4;191,192,212,211;,
 4;192,193,213,212;,
 4;193,194,214,213;,
 4;194,195,215,214;,
 4;195,196,216,215;,
 4;196,197,217,216;,
 4;197,198,218,217;,
 4;198,199,219,218;,
 4;199,200,220,219;,
 4;200,182,202,220;,
 4;202,201,221,222;,
 4;201,203,223,221;,
 4;203,204,224,223;,
 4;204,205,225,224;,
 4;205,206,226,225;,
 4;206,207,227,226;,
 4;207,208,228,227;,
 4;208,209,229,228;,
 4;209,210,230,229;,
 4;210,211,231,230;,
 4;211,212,232,231;,
 4;212,213,233,232;,
 4;213,214,234,233;,
 4;214,215,235,234;,
 4;215,216,236,235;,
 4;216,217,237,236;,
 4;217,218,238,237;,
 4;218,219,239,238;,
 4;219,220,240,239;,
 4;220,202,222,240;,
 4;222,221,241,242;,
 4;221,223,243,241;,
 4;223,224,244,243;,
 4;224,225,245,244;,
 4;225,226,246,245;,
 4;226,227,247,246;,
 4;227,228,248,247;,
 4;228,229,249,248;,
 4;229,230,250,249;,
 4;230,231,251,250;,
 4;231,232,252,251;,
 4;232,233,253,252;,
 4;233,234,254,253;,
 4;234,235,255,254;,
 4;235,236,256,255;,
 4;236,237,257,256;,
 4;237,238,258,257;,
 4;238,239,259,258;,
 4;239,240,260,259;,
 4;240,222,242,260;,
 4;242,241,261,262;,
 4;241,243,263,261;,
 4;243,244,264,263;,
 4;244,245,265,264;,
 4;245,246,266,265;,
 4;246,247,267,266;,
 4;247,248,268,267;,
 4;248,249,269,268;,
 4;249,250,270,269;,
 4;250,251,271,270;,
 4;251,252,272,271;,
 4;252,253,273,272;,
 4;253,254,274,273;,
 4;254,255,275,274;,
 4;255,256,276,275;,
 4;256,257,277,276;,
 4;257,258,278,277;,
 4;258,259,279,278;,
 4;259,260,280,279;,
 4;260,242,262,280;,
 3;262,261,281;,
 3;261,263,281;,
 3;263,264,281;,
 3;264,265,281;,
 3;265,266,281;,
 3;266,267,281;,
 3;267,268,281;,
 3;268,269,281;,
 3;269,270,281;,
 3;270,271,281;,
 3;271,272,281;,
 3;272,273,281;,
 3;273,274,281;,
 3;274,275,281;,
 3;275,276,281;,
 3;276,277,281;,
 3;277,278,281;,
 3;278,279,281;,
 3;279,280,281;,
 3;280,262,281;;
 
 MeshMaterialList {
  4;
  300;
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
  0;;
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.480000;0.480000;0.480000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.034400;1.000000;;
   5.000000;
   0.630000;0.630000;0.630000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.320000;0.000000;1.000000;;
   5.000000;
   0.480000;0.480000;0.480000;;
   0.340000;0.136000;0.000000;;
  }
 }
 MeshNormals {
  304;
  0.838238;0.545299;-0.002411;,
  0.947028;-0.003514;0.321131;,
  0.867014;0.412769;0.279120;,
  0.719622;0.665892;0.196803;,
  0.608603;0.784340;0.120056;,
  0.548076;0.834586;0.055486;,
  0.529178;0.848507;-0.002666;,
  0.547883;0.834344;-0.060790;,
  0.608264;0.783779;-0.125318;,
  0.719041;0.665015;-0.201831;,
  0.866211;0.411532;-0.283407;,
  0.946121;-0.004960;-0.323775;,
  0.862550;-0.420427;-0.281512;,
  0.713256;-0.672107;-0.198842;,
  0.601432;-0.789586;-0.121793;,
  0.540566;-0.839367;-0.057023;,
  0.521744;-0.853101;0.001192;,
  0.540729;-0.839105;0.059290;,
  0.601774;-0.789034;0.123663;,
  0.713823;-0.671198;0.199875;,
  0.863330;-0.419181;0.280978;,
  0.895318;-0.002931;0.445418;,
  0.774020;0.519171;0.362429;,
  0.592255;0.771985;0.230809;,
  0.480437;0.866805;0.133527;,
  0.425096;0.903130;0.060409;,
  0.408409;0.912795;-0.002638;,
  0.424896;0.902856;-0.065680;,
  0.480051;0.866191;-0.138798;,
  0.591586;0.770942;-0.235954;,
  0.772991;0.517533;-0.366939;,
  0.894060;-0.004949;-0.447919;,
  0.768444;-0.525910;-0.364572;,
  0.584860;-0.777113;-0.232454;,
  0.472467;-0.870970;-0.134855;,
  0.416998;-0.906817;-0.061599;,
  0.400430;-0.916326;0.001505;,
  0.417179;-0.906531;0.064522;,
  0.472848;-0.870356;0.137459;,
  0.585516;-0.776058;0.234318;,
  0.769461;-0.524279;0.364776;,
  0.636557;-0.001057;0.771229;,
  0.469404;0.709538;0.525562;,
  0.309135;0.910059;0.276096;,
  0.236152;0.960226;0.148988;,
  0.204219;0.976709;0.065834;,
  0.194991;0.980802;-0.002488;,
  0.204028;0.976400;-0.070816;,
  0.235731;0.959540;-0.153991;,
  0.308348;0.908803;-0.281068;,
  0.467922;0.707148;-0.530086;,
  0.634383;-0.004551;-0.773005;,
  0.461704;-0.713607;-0.526872;,
  0.300379;-0.912727;-0.276951;,
  0.227325;-0.962256;-0.149623;,
  0.195500;-0.978453;-0.066402;,
  0.186430;-0.982466;0.001957;,
  0.195695;-0.978144;0.070270;,
  0.227753;-0.961571;0.153327;,
  0.301166;-0.911468;0.280223;,
  0.463184;-0.711233;0.528780;,
  0.237522;0.586326;0.774471;,
  0.191030;0.779782;0.596194;,
  0.111400;0.950458;0.290207;,
  0.082635;0.984728;0.153237;,
  0.070961;0.995205;0.067318;,
  0.067629;0.997708;-0.002347;,
  0.070764;0.994890;-0.072009;,
  0.082198;0.984025;-0.157916;,
  0.110577;0.949137;-0.294808;,
  0.189350;0.777070;-0.600258;,
  0.235344;0.582788;-0.777799;,
  0.182534;-0.781417;-0.596715;,
  0.102273;-0.951388;-0.290519;,
  0.073586;-0.985413;-0.153451;,
  0.062059;-0.995787;-0.067505;,
  0.058897;-0.998262;0.002172;,
  0.062255;-0.995472;0.071825;,
  0.074025;-0.984710;0.157689;,
  0.103097;-0.950066;0.294525;,
  0.184215;-0.778711;0.599729;,
  0.155511;0.596459;0.787435;,
  0.124988;0.787255;0.603827;,
  0.072991;0.953820;0.291374;,
  0.054455;0.986635;0.153575;,
  0.046942;0.996618;0.067450;,
  0.044778;0.998994;-0.002318;,
  0.046745;0.996303;-0.072080;,
  0.054016;0.985932;-0.158180;,
  0.072165;0.952494;-0.295883;,
  0.123288;0.784508;-0.607740;,
  0.153296;0.592866;-0.790576;,
  0.116411;-0.788310;-0.604165;,
  0.063828;-0.954419;-0.291565;,
  0.045386;-0.987074;-0.153707;,
  0.038027;-0.996990;-0.067566;,
  0.036040;-0.999348;0.002206;,
  0.038224;-0.996675;0.071960;,
  0.045824;-0.986370;0.158033;,
  0.064655;-0.953092;0.295696;,
  0.118119;-0.785561;0.607406;,
  0.089671;0.601506;0.793820;,
  0.072490;0.790947;0.607576;,
  0.043060;0.955465;0.291944;,
  0.032582;0.987573;0.153745;,
  0.028319;0.997316;0.067525;,
  0.027062;0.999631;-0.002295;,
  0.028122;0.997000;-0.072106;,
  0.032143;0.986869;-0.158291;,
  0.042232;0.954137;-0.296377;,
  0.070775;0.788188;-0.611352;,
  0.087435;0.597901;-0.796787;,
  0.063867;-0.791547;-0.607762;,
  0.033882;-0.955804;-0.292046;,
  0.023512;-0.987820;-0.153814;,
  0.019406;-0.997524;-0.067594;,
  0.018326;-0.999830;0.002230;,
  0.019602;-0.997209;0.072043;,
  0.023951;-0.987116;0.158206;,
  0.034711;-0.954475;0.296265;,
  0.065586;-0.788789;0.611156;,
  0.031618;0.603740;0.796554;,
  0.026406;0.792590;0.609183;,
  0.017033;0.956206;0.292200;,
  0.013606;0.988004;0.153826;,
  0.012170;0.997641;0.067560;,
  0.011701;0.999929;-0.002274;,
  0.011973;0.997326;-0.072097;,
  0.013166;0.987300;-0.158323;,
  0.016204;0.954876;-0.296563;,
  0.024687;0.789832;-0.612827;,
  0.029373;0.600143;-0.799353;,
  0.017768;-0.792794;-0.609231;,
  0.007849;-0.956315;-0.292234;,
  0.004532;-0.988084;-0.153849;,
  0.003256;-0.997708;-0.067588;,
  0.002963;-0.999993;0.002253;,
  0.003452;-0.997393;0.072083;,
  0.004971;-0.987379;0.158295;,
  0.008677;-0.954985;0.296526;,
  0.019486;-0.790033;0.612754;,
  -0.024109;0.603989;0.796628;,
  -0.017770;0.792786;0.609241;,
  -0.007852;0.956314;0.292236;,
  -0.004533;0.988084;0.153851;,
  -0.003256;0.997709;0.067578;,
  -0.002964;0.999993;-0.002254;,
  -0.003453;0.997393;-0.072074;,
  -0.004974;0.987379;-0.158297;,
  -0.008681;0.954985;-0.296526;,
  -0.019488;0.790032;-0.612756;,
  -0.026353;0.600397;-0.799268;,
  -0.026404;-0.792597;-0.609173;,
  -0.017029;-0.956205;-0.292200;,
  -0.013601;-0.988004;-0.153827;,
  -0.012167;-0.997641;-0.067565;,
  -0.011701;-0.999929;0.002274;,
  -0.011971;-0.997325;0.072102;,
  -0.013162;-0.987300;0.158324;,
  -0.016201;-0.954876;0.296564;,
  -0.024685;-0.789837;0.612820;,
  -0.082189;0.602259;0.794059;,
  -0.063873;0.791551;0.607756;,
  -0.033890;0.955802;0.292050;,
  -0.023517;0.987817;0.153830;,
  -0.019404;0.997525;0.067588;,
  -0.018322;0.999830;-0.002232;,
  -0.019600;0.997209;-0.072038;,
  -0.023956;0.987113;-0.158222;,
  -0.034718;0.954476;-0.296261;,
  -0.065587;0.788804;-0.611136;,
  -0.084427;0.598671;-0.796534;,
  -0.072488;-0.790938;-0.607587;,
  -0.043056;-0.955465;-0.291946;,
  -0.032579;-0.987574;-0.153739;,
  -0.028319;-0.997316;-0.067524;,
  -0.027063;-0.999631;0.002294;,
  -0.028122;-0.997000;0.072107;,
  -0.032141;-0.986870;0.158288;,
  -0.042229;-0.954136;0.296380;,
  -0.070774;-0.788185;0.611355;,
  -0.148089;0.597800;0.787848;,
  -0.116411;0.788318;0.604156;,
  -0.063828;0.954417;0.291573;,
  -0.045388;0.987070;0.153729;,
  -0.038028;0.996990;0.067570;,
  -0.036037;0.999348;-0.002207;,
  -0.038224;0.996675;-0.071963;,
  -0.045827;0.986366;-0.158056;,
  -0.064654;0.953092;-0.295694;,
  -0.118116;0.785583;-0.607378;,
  -0.150311;0.594229;-0.790126;,
  -0.124995;-0.787232;-0.603856;,
  -0.072991;-0.953818;-0.291380;,
  -0.054451;-0.986638;-0.153562;,
  -0.046939;-0.996618;-0.067450;,
  -0.044775;-0.998994;0.002318;,
  -0.046743;-0.996303;0.072082;,
  -0.054013;-0.985934;0.158169;,
  -0.072165;-0.952492;0.295890;,
  -0.123289;-0.784498;0.607752;,
  -0.230210;0.588410;0.775098;,
  -0.182530;0.781420;0.596712;,
  -0.102271;0.951386;0.290527;,
  -0.073589;0.985411;0.153460;,
  -0.062066;0.995786;0.067507;,
  -0.058907;0.998261;-0.002173;,
  -0.062262;0.995472;-0.071826;,
  -0.074027;0.984709;-0.157699;,
  -0.103093;0.950066;-0.294527;,
  -0.184215;0.778714;-0.599724;,
  -0.232399;0.584882;-0.777112;,
  -0.191029;-0.779771;-0.596209;,
  -0.111402;-0.950455;-0.290215;,
  -0.082632;-0.984730;-0.153228;,
  -0.070956;-0.995205;-0.067321;,
  -0.067624;-0.997708;0.002347;,
  -0.070760;-0.994890;0.072015;,
  -0.082197;-0.984027;0.157909;,
  -0.110580;-0.949135;0.294812;,
  -0.189345;-0.777077;0.600250;,
  -0.321329;0.572769;0.754111;,
  -0.257131;0.769669;0.584374;,
  -0.147088;0.946060;0.288681;,
  -0.106693;0.982452;0.152985;,
  -0.090333;0.993629;0.067385;,
  -0.085816;0.996309;-0.002131;,
  -0.090529;0.993316;-0.071615;,
  -0.107128;0.981752;-0.157117;,
  -0.147903;0.944750;-0.292529;,
  -0.258782;0.767019;-0.587124;,
  -0.323461;0.569332;-0.755800;,
  -0.265488;-0.767379;-0.583648;,
  -0.156160;-0.944738;-0.288242;,
  -0.115710;-0.981479;-0.152676;,
  -0.099207;-0.992800;-0.067126;,
  -0.094517;-0.995520;0.002381;,
  -0.099013;-0.992486;0.071888;,
  -0.115274;-0.980778;0.157438;,
  -0.155339;-0.943428;0.292939;,
  -0.263840;-0.764738;0.587847;,
  -0.685396;0.215978;0.695403;,
  -0.467190;0.711267;0.525197;,
  -0.296918;0.913708;0.277446;,
  -0.222652;0.963316;0.149827;,
  -0.190871;0.979361;0.066481;,
  -0.181882;0.983318;-0.001966;,
  -0.191072;0.979051;-0.070360;,
  -0.223080;0.962631;-0.153546;,
  -0.297697;0.912452;-0.280729;,
  -0.468670;0.708892;-0.527087;,
  -0.687355;0.212807;-0.694447;,
  -0.474869;-0.707145;-0.523876;,
  -0.305671;-0.911079;-0.276588;,
  -0.231504;-0.961325;-0.149200;,
  -0.199627;-0.977651;-0.065939;,
  -0.190481;-0.981688;0.002487;,
  -0.199433;-0.977342;0.070910;,
  -0.231075;-0.960640;0.154194;,
  -0.304877;-0.909821;0.281560;,
  -0.473388;-0.704766;0.528402;,
  -0.889639;0.004963;0.456637;,
  -0.765255;0.528105;0.368090;,
  -0.588030;0.774892;0.231870;,
  -0.479486;0.867230;0.134188;,
  -0.425321;0.902961;0.061350;,
  -0.409055;0.912509;-0.001480;,
  -0.425512;0.902671;-0.064223;,
  -0.479875;0.866613;-0.136756;,
  -0.588665;0.773858;-0.233703;,
  -0.766294;0.526439;-0.368314;,
  -0.890922;0.002833;-0.454148;,
  -0.770853;-0.521433;-0.365913;,
  -0.595423;-0.769731;-0.230187;,
  -0.487501;-0.862955;-0.132859;,
  -0.433445;-0.899171;-0.060140;,
  -0.417060;-0.908875;0.002644;,
  -0.433254;-0.898896;0.065404;,
  -0.487146;-0.862327;0.138134;,
  -0.594770;-0.768675;0.235345;,
  -0.769811;-0.519783;0.370428;,
  -0.833433;0.552621;-0.000072;,
  0.660845;-0.750522;0.000766;,
  0.230211;-0.588410;-0.775098;,
  0.232390;-0.584895;0.777105;,
  0.148087;-0.597787;-0.787858;,
  0.150312;-0.594197;0.790150;,
  0.082187;-0.602253;-0.794063;,
  0.084430;-0.598651;0.796548;,
  0.024109;-0.604005;-0.796616;,
  0.026353;-0.600398;0.799267;,
  -0.031618;-0.603755;-0.796543;,
  -0.029372;-0.600151;0.799348;,
  -0.089673;-0.601484;-0.793836;,
  -0.087436;-0.597897;0.796790;,
  -0.155519;-0.596418;-0.787464;,
  -0.153297;-0.592861;0.790579;,
  -0.237516;-0.586318;-0.774479;,
  -0.235331;-0.582820;0.777779;,
  -0.328440;-0.569895;-0.753224;,
  -0.326321;-0.566476;0.756716;,
  -0.372678;-0.559776;-0.740110;,
  -0.370596;-0.556402;0.743690;,
  -0.667433;-0.744665;0.002620;;
  300;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,9,8;,
  3;0,10,9;,
  3;0,11,10;,
  3;0,12,11;,
  3;282,13,12;,
  3;282,14,13;,
  3;282,15,14;,
  3;282,16,15;,
  3;282,17,16;,
  3;282,18,17;,
  3;282,19,18;,
  3;282,20,19;,
  3;0,1,20;,
  4;1,2,22,21;,
  4;2,3,23,22;,
  4;3,4,24,23;,
  4;4,5,25,24;,
  4;5,6,26,25;,
  4;6,7,27,26;,
  4;7,8,28,27;,
  4;8,9,29,28;,
  4;9,10,30,29;,
  4;10,11,31,30;,
  4;11,12,32,31;,
  4;12,13,33,32;,
  4;13,14,34,33;,
  4;14,15,35,34;,
  4;15,16,36,35;,
  4;16,17,37,36;,
  4;17,18,38,37;,
  4;18,19,39,38;,
  4;19,20,40,39;,
  4;20,1,21,40;,
  4;21,22,42,41;,
  4;22,23,43,42;,
  4;23,24,44,43;,
  4;24,25,45,44;,
  4;25,26,46,45;,
  4;26,27,47,46;,
  4;27,28,48,47;,
  4;28,29,49,48;,
  4;29,30,50,49;,
  4;30,31,51,50;,
  4;31,32,52,51;,
  4;32,33,53,52;,
  4;33,34,54,53;,
  4;34,35,55,54;,
  4;35,36,56,55;,
  4;36,37,57,56;,
  4;37,38,58,57;,
  4;38,39,59,58;,
  4;39,40,60,59;,
  4;40,21,41,60;,
  4;41,42,62,61;,
  4;42,43,63,62;,
  4;43,44,64,63;,
  4;44,45,65,64;,
  4;45,46,66,65;,
  4;46,47,67,66;,
  4;47,48,68,67;,
  4;48,49,69,68;,
  4;49,50,70,69;,
  4;50,51,71,70;,
  4;51,52,72,283;,
  4;52,53,73,72;,
  4;53,54,74,73;,
  4;54,55,75,74;,
  4;55,56,76,75;,
  4;56,57,77,76;,
  4;57,58,78,77;,
  4;58,59,79,78;,
  4;59,60,80,79;,
  4;60,41,284,80;,
  4;61,62,82,81;,
  4;62,63,83,82;,
  4;63,64,84,83;,
  4;64,65,85,84;,
  4;65,66,86,85;,
  4;66,67,87,86;,
  4;67,68,88,87;,
  4;68,69,89,88;,
  4;69,70,90,89;,
  4;70,71,91,90;,
  4;283,72,92,285;,
  4;72,73,93,92;,
  4;73,74,94,93;,
  4;74,75,95,94;,
  4;75,76,96,95;,
  4;76,77,97,96;,
  4;77,78,98,97;,
  4;78,79,99,98;,
  4;79,80,100,99;,
  4;80,284,286,100;,
  4;81,82,102,101;,
  4;82,83,103,102;,
  4;83,84,104,103;,
  4;84,85,105,104;,
  4;85,86,106,105;,
  4;86,87,107,106;,
  4;87,88,108,107;,
  4;88,89,109,108;,
  4;89,90,110,109;,
  4;90,91,111,110;,
  4;285,92,112,287;,
  4;92,93,113,112;,
  4;93,94,114,113;,
  4;94,95,115,114;,
  4;95,96,116,115;,
  4;96,97,117,116;,
  4;97,98,118,117;,
  4;98,99,119,118;,
  4;99,100,120,119;,
  4;100,286,288,120;,
  4;101,102,122,121;,
  4;102,103,123,122;,
  4;103,104,124,123;,
  4;104,105,125,124;,
  4;105,106,126,125;,
  4;106,107,127,126;,
  4;107,108,128,127;,
  4;108,109,129,128;,
  4;109,110,130,129;,
  4;110,111,131,130;,
  4;287,112,132,289;,
  4;112,113,133,132;,
  4;113,114,134,133;,
  4;114,115,135,134;,
  4;115,116,136,135;,
  4;116,117,137,136;,
  4;117,118,138,137;,
  4;118,119,139,138;,
  4;119,120,140,139;,
  4;120,288,290,140;,
  4;121,122,142,141;,
  4;122,123,143,142;,
  4;123,124,144,143;,
  4;124,125,145,144;,
  4;125,126,146,145;,
  4;126,127,147,146;,
  4;127,128,148,147;,
  4;128,129,149,148;,
  4;129,130,150,149;,
  4;130,131,151,150;,
  4;289,132,152,291;,
  4;132,133,153,152;,
  4;133,134,154,153;,
  4;134,135,155,154;,
  4;135,136,156,155;,
  4;136,137,157,156;,
  4;137,138,158,157;,
  4;138,139,159,158;,
  4;139,140,160,159;,
  4;140,290,292,160;,
  4;141,142,162,161;,
  4;142,143,163,162;,
  4;143,144,164,163;,
  4;144,145,165,164;,
  4;145,146,166,165;,
  4;146,147,167,166;,
  4;147,148,168,167;,
  4;148,149,169,168;,
  4;149,150,170,169;,
  4;150,151,171,170;,
  4;291,152,172,293;,
  4;152,153,173,172;,
  4;153,154,174,173;,
  4;154,155,175,174;,
  4;155,156,176,175;,
  4;156,157,177,176;,
  4;157,158,178,177;,
  4;158,159,179,178;,
  4;159,160,180,179;,
  4;160,292,294,180;,
  4;161,162,182,181;,
  4;162,163,183,182;,
  4;163,164,184,183;,
  4;164,165,185,184;,
  4;165,166,186,185;,
  4;166,167,187,186;,
  4;167,168,188,187;,
  4;168,169,189,188;,
  4;169,170,190,189;,
  4;170,171,191,190;,
  4;293,172,192,295;,
  4;172,173,193,192;,
  4;173,174,194,193;,
  4;174,175,195,194;,
  4;175,176,196,195;,
  4;176,177,197,196;,
  4;177,178,198,197;,
  4;178,179,199,198;,
  4;179,180,200,199;,
  4;180,294,296,200;,
  4;181,182,202,201;,
  4;182,183,203,202;,
  4;183,184,204,203;,
  4;184,185,205,204;,
  4;185,186,206,205;,
  4;186,187,207,206;,
  4;187,188,208,207;,
  4;188,189,209,208;,
  4;189,190,210,209;,
  4;190,191,211,210;,
  4;295,192,212,297;,
  4;192,193,213,212;,
  4;193,194,214,213;,
  4;194,195,215,214;,
  4;195,196,216,215;,
  4;196,197,217,216;,
  4;197,198,218,217;,
  4;198,199,219,218;,
  4;199,200,220,219;,
  4;200,296,298,220;,
  4;201,202,222,221;,
  4;202,203,223,222;,
  4;203,204,224,223;,
  4;204,205,225,224;,
  4;205,206,226,225;,
  4;206,207,227,226;,
  4;207,208,228,227;,
  4;208,209,229,228;,
  4;209,210,230,229;,
  4;210,211,231,230;,
  4;297,212,232,299;,
  4;212,213,233,232;,
  4;213,214,234,233;,
  4;214,215,235,234;,
  4;215,216,236,235;,
  4;216,217,237,236;,
  4;217,218,238,237;,
  4;218,219,239,238;,
  4;219,220,240,239;,
  4;220,298,300,240;,
  4;221,222,242,241;,
  4;222,223,243,242;,
  4;223,224,244,243;,
  4;224,225,245,244;,
  4;225,226,246,245;,
  4;226,227,247,246;,
  4;227,228,248,247;,
  4;228,229,249,248;,
  4;229,230,250,249;,
  4;230,231,251,250;,
  4;299,232,252,301;,
  4;232,233,253,252;,
  4;233,234,254,253;,
  4;234,235,255,254;,
  4;235,236,256,255;,
  4;236,237,257,256;,
  4;237,238,258,257;,
  4;238,239,259,258;,
  4;239,240,260,259;,
  4;240,300,302,260;,
  4;241,242,262,261;,
  4;242,243,263,262;,
  4;243,244,264,263;,
  4;244,245,265,264;,
  4;245,246,266,265;,
  4;246,247,267,266;,
  4;247,248,268,267;,
  4;248,249,269,268;,
  4;249,250,270,269;,
  4;250,251,271,270;,
  4;251,252,272,271;,
  4;252,253,273,272;,
  4;253,254,274,273;,
  4;254,255,275,274;,
  4;255,256,276,275;,
  4;256,257,277,276;,
  4;257,258,278,277;,
  4;258,259,279,278;,
  4;259,260,280,279;,
  4;260,241,261,280;,
  3;261,262,281;,
  3;262,263,281;,
  3;263,264,281;,
  3;264,265,281;,
  3;265,266,281;,
  3;266,267,281;,
  3;267,268,281;,
  3;268,269,281;,
  3;269,270,281;,
  3;270,271,281;,
  3;271,272,281;,
  3;272,273,303;,
  3;273,274,303;,
  3;274,275,303;,
  3;275,276,303;,
  3;276,277,303;,
  3;277,278,303;,
  3;278,279,303;,
  3;279,280,303;,
  3;280,261,281;;
 }
}
