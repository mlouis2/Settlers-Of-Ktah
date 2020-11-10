//Maya ASCII 2020 scene
//Name: rock_v2.ma
//Last modified: Thu, Nov 05, 2020 05:06:09 PM
//Codeset: UTF-8
requires maya "2020";
requires "mtoa" "4.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Mac OS X 10.15.7";
fileInfo "UUID" "C168909D-214F-95F1-9429-DC9ED010BA5A";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5F0166C9-E646-5E84-5BE4-08B7E11FC39A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.700205290581993 9.2039790410283633 -6.2095992233900459 ;
	setAttr ".r" -type "double3" -26.738352731320319 1195.7999999997351 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "261D86CC-B543-FD85-63D4-899677E342C1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 13.784858679037326;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.4353048611428338 1.1876066461484367 -2.8831089055178865 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5980C4FA-F84A-371C-4C86-188F7732272A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E63F8EF1-9343-6DD3-9FA9-FEAAA21644DC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D5617445-0A4F-DAEF-2505-CB8C7E27E221";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29885508210496781 0.8965652463149052 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DD0241CB-A24F-6ACB-921D-AA95A9B62A64";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.4751934456076468;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0B476C48-9748-902B-5905-9EA11F03A577";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B2EFA158-4E4B-57A8-0544-06A567D4DA34";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.0196647889128387;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "rock1";
	rename -uid "353D9C52-DA4E-6973-0C7E-D08A1FBDC59B";
	setAttr ".t" -type "double3" 0 0.98787777830315893 -7.341236581443356 ;
	setAttr ".s" -type "double3" 2.0318789920560869 2.0318789920560869 2.7091719894081194 ;
createNode mesh -n "rockShape1" -p "rock1";
	rename -uid "03618C99-9C4D-F541-C022-2DA21B96DA8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rock2";
	rename -uid "342A527F-A046-94EC-880E-44AE9D51E078";
	setAttr ".t" -type "double3" 6.0803775244933442 1.051330323907016 -7.341236581443356 ;
	setAttr ".s" -type "double3" 2.1938043186322278 2.1938043186322278 2.9250724248429716 ;
createNode mesh -n "rockShape2" -p "rock2";
	rename -uid "F2563A45-0143-B91E-D7F6-E5A1C33C3D04";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "rock2";
	rename -uid "73EC642B-8F48-7CB3-F71A-A19BC241C787";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.375 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.3125 0.5625 0.3125 0.625 0.3125 0.375 0.4375 0.5625 0.4375 0.625 0.4375 0.375 0.5
		 0.5625 0.5 0.625 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75 0.5625 0.75
		 0.625 0.75 0.375 0.8125 0.5625 0.8125 0.625 0.8125 0.375 0.9375 0.5625 0.9375 0.625
		 0.9375 0.375 1 0.5625 1 0.625 1 0.875 0 0.8125 0 0.6875 0 0.875 0.125 0.8125 0.125
		 0.6875 0.125 0.875 0.25 0.8125 0.25 0.6875 0.25 0.125 0 0.1875 0 0.3125 0 0.125 0.125
		 0.1875 0.125 0.3125 0.125 0.125 0.25 0.1875 0.25 0.3125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  0.067334294 0.05625087 0.056971043 
		0 0 0 0 0 0 0.20495586 -0.14464039 -0.051066577 -0.059169412 0.036682382 0.058808088 
		0 0 0 0.26556644 -0.22420928 0.002721101 0 -0.15462525 0 0 -0.073811039 0 0.10168332 
		-0.21453519 0.016810775 0.013905833 -0.045252323 0.00088334084 0 0 0 0.055308968 
		-0.17620887 0.015229844 -0.15465535 -0.12486112 -0.07592082 0.0029119551 -0.32426313 
		-0.061193064 0 -0.36252615 -0.14745042 -0.11913595 -0.19581722 0 -0.11953071 -0.19581722 
		0.017213846 0.13036491 0 0.17166322 0 0 0 -0.051395308 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.070349306 -0.01055038 -0.076798692 0.10609001 0.31512928 
		-0.12883036 0.015853286 0.11506396 0.23276486 0.11252604 -0.077837139 0.13198483;
	setAttr -s 34 ".vt[0:33]"  -0.38377857 -0.5 0.41297498 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.5 -0.11095775 0.5 0.25 -0.23849395 0.5 0.45865545 -0.23849395 0.45133519
		 -0.35057247 0.25504947 0.44595581 0.092481047 0.25504944 0.44595581 0.35810667 0.15543115 0.44595581
		 -0.35057247 0.26826477 0.25 -0.014256924 0.37246379 0.25 0.35810667 0.27284542 0.25
		 -0.35057247 0.37300342 0.095825642 0.25 0.34193882 -0.10127664 0.35810667 0.24232045 -0.10127664
		 -0.23642914 0.4077611 -0.10974897 0.25 0.26689312 -0.35316604 0.35810667 0.16727483 -0.35316604
		 -0.39067638 -0.11095775 -0.5 0.033351019 -0.23849395 -0.57739282 0.5 -0.23849395 -0.5
		 -0.38377857 -0.5 -0.43383321 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 -0.16886061
		 0.25 -0.5 -0.15042311 0.41698471 -0.5 -0.15042311 -0.38377857 -0.5 0.25 0.25 -0.5 0.25
		 0.41698471 -0.5 0.25 0.5 -0.23849395 -0.15042311 0.5 -0.23849395 0.25 -0.5 -0.11095775 -0.15042311
		 -0.5 -0.11095775 0.25;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 1 13 14 1 15 16 0 16 17 0 18 19 1 19 20 1 21 22 0 22 23 0 24 25 1 25 26 1
		 27 28 1 28 29 1 2 5 0 0 3 0 1 4 1 5 8 0 3 6 0 4 7 1 6 9 0 7 10 1 8 11 0 11 14 0 9 12 0
		 10 13 1 12 15 0 13 16 1 14 17 0 17 20 0 15 18 0 16 19 1 20 23 0 18 21 0 19 22 1 21 24 0
		 22 25 1 23 26 0 26 29 0 24 27 0 25 28 1 27 0 0 28 1 1 29 2 0 20 30 1 30 31 1 31 5 1
		 26 30 1 29 31 1 30 14 1 31 11 1 18 32 1 32 33 1 33 3 1 24 32 1 27 33 1 32 12 1 33 9 1;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 -22 0 22 -3
		mu 0 4 3 0 1 4
		f 4 -4 -23 1 20
		mu 0 4 5 4 1 2
		f 4 25 -5 -25 2
		mu 0 4 4 7 6 3
		f 4 -6 -26 3 23
		mu 0 4 8 7 4 5
		f 4 -27 4 27 -7
		mu 0 4 9 6 7 10
		f 4 5 28 -8 -28
		mu 0 4 7 8 11 10
		f 4 31 -9 -31 6
		mu 0 4 10 13 12 9
		f 4 -10 -32 7 29
		mu 0 4 14 13 10 11
		f 4 -33 8 33 -11
		mu 0 4 15 12 13 16
		f 4 9 34 -12 -34
		mu 0 4 13 14 17 16
		f 4 37 -13 -37 10
		mu 0 4 16 19 18 15
		f 4 -14 -38 11 35
		mu 0 4 20 19 16 17
		f 4 -40 12 40 -15
		mu 0 4 21 18 19 22
		f 4 -16 -41 13 38
		mu 0 4 23 22 19 20
		f 4 -42 14 42 -17
		mu 0 4 24 21 22 25
		f 4 15 43 -18 -43
		mu 0 4 22 23 26 25
		f 4 46 -19 -46 16
		mu 0 4 25 28 27 24
		f 4 -20 -47 17 44
		mu 0 4 29 28 25 26
		f 4 -1 -48 18 48
		mu 0 4 31 30 27 28
		f 4 19 49 -2 -49
		mu 0 4 28 29 32 31
		f 4 -44 -39 50 -54
		mu 0 4 34 33 36 37
		f 4 -55 -45 53 51
		mu 0 4 38 35 34 37
		f 4 -21 -50 54 52
		mu 0 4 5 2 35 38
		f 4 -51 -36 -35 -56
		mu 0 4 37 36 39 40
		f 4 -52 55 -30 -57
		mu 0 4 38 37 40 41
		f 4 -24 -53 56 -29
		mu 0 4 8 5 38 41
		f 4 60 -58 39 41
		mu 0 4 43 46 45 42
		f 4 -61 45 61 -59
		mu 0 4 46 43 44 47
		f 4 21 -60 -62 47
		mu 0 4 0 3 47 44
		f 4 62 32 36 57
		mu 0 4 46 49 48 45
		f 4 63 30 -63 58
		mu 0 4 47 50 49 46
		f 4 24 26 -64 59
		mu 0 4 3 6 50 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rock3";
	rename -uid "5E0C075B-A64B-0AD4-876B-1F9645920B0B";
	setAttr ".t" -type "double3" 6.0803775244933442 1.1179871906857737 -1.9926719730342688 ;
	setAttr ".s" -type "double3" 2.267259406952475 2.267259406952475 3.0230125426033023 ;
createNode mesh -n "rockShape3" -p "rock3";
	rename -uid "5AB21ADB-674A-AD83-6685-BEA82DD96982";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "rock3";
	rename -uid "59FB67AA-8A46-947A-9021-249861908B2F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.375 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.3125 0.5625 0.3125 0.625 0.3125 0.375 0.4375 0.5625 0.4375 0.625 0.4375 0.375 0.5
		 0.5625 0.5 0.625 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75 0.5625 0.75
		 0.625 0.75 0.375 0.8125 0.5625 0.8125 0.625 0.8125 0.375 0.9375 0.5625 0.9375 0.625
		 0.9375 0.375 1 0.5625 1 0.625 1 0.875 0 0.8125 0 0.6875 0 0.875 0.125 0.8125 0.125
		 0.6875 0.125 0.875 0.25 0.8125 0.25 0.6875 0.25 0.125 0 0.1875 0 0.3125 0 0.125 0.125
		 0.1875 0.125 0.3125 0.125 0.125 0.25 0.1875 0.25 0.3125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  0.067334294 0.05625087 0.056971043 
		0 0 0 0 0 0 0.20495586 -0.14464039 -0.051066577 -0.059169412 0.036682382 0.058808088 
		0 0 0 0.26556644 -0.22420928 0.002721101 0 -0.15462525 0 0 -0.073811039 0 0.10168332 
		-0.21453519 0.016810775 0.013905833 -0.045252323 0.00088334084 0 0 0 0.055308968 
		-0.17620887 0.015229844 -0.15465535 -0.12486112 -0.07592082 0.0029119551 -0.32426313 
		-0.061193064 0 -0.36252615 -0.14745042 -0.11913595 -0.19581722 0 -0.11953071 -0.19581722 
		0.017213846 0.13036491 0 0.17166322 0 0 0 -0.051395308 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.070349306 -0.01055038 -0.076798692 0.10609001 0.31512928 
		-0.12883036 0.015853286 0.11506396 0.23276486 0.11252604 -0.077837139 0.13198483;
	setAttr -s 34 ".vt[0:33]"  -0.38377857 -0.5 0.41297498 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.5 -0.11095775 0.5 0.25 -0.23849395 0.5 0.45865545 -0.23849395 0.45133519
		 -0.35057247 0.25504947 0.44595581 0.092481047 0.25504944 0.44595581 0.35810667 0.15543115 0.44595581
		 -0.35057247 0.26826477 0.25 -0.014256924 0.37246379 0.25 0.35810667 0.27284542 0.25
		 -0.35057247 0.37300342 0.095825642 0.25 0.34193882 -0.10127664 0.35810667 0.24232045 -0.10127664
		 -0.23642914 0.4077611 -0.10974897 0.25 0.26689312 -0.35316604 0.35810667 0.16727483 -0.35316604
		 -0.39067638 -0.11095775 -0.5 0.033351019 -0.23849395 -0.57739282 0.5 -0.23849395 -0.5
		 -0.38377857 -0.5 -0.43383321 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 -0.16886061
		 0.25 -0.5 -0.15042311 0.41698471 -0.5 -0.15042311 -0.38377857 -0.5 0.25 0.25 -0.5 0.25
		 0.41698471 -0.5 0.25 0.5 -0.23849395 -0.15042311 0.5 -0.23849395 0.25 -0.5 -0.11095775 -0.15042311
		 -0.5 -0.11095775 0.25;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 1 13 14 1 15 16 0 16 17 0 18 19 1 19 20 1 21 22 0 22 23 0 24 25 1 25 26 1
		 27 28 1 28 29 1 2 5 0 0 3 0 1 4 1 5 8 0 3 6 0 4 7 1 6 9 0 7 10 1 8 11 0 11 14 0 9 12 0
		 10 13 1 12 15 0 13 16 1 14 17 0 17 20 0 15 18 0 16 19 1 20 23 0 18 21 0 19 22 1 21 24 0
		 22 25 1 23 26 0 26 29 0 24 27 0 25 28 1 27 0 0 28 1 1 29 2 0 20 30 1 30 31 1 31 5 1
		 26 30 1 29 31 1 30 14 1 31 11 1 18 32 1 32 33 1 33 3 1 24 32 1 27 33 1 32 12 1 33 9 1;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 -22 0 22 -3
		mu 0 4 3 0 1 4
		f 4 -4 -23 1 20
		mu 0 4 5 4 1 2
		f 4 25 -5 -25 2
		mu 0 4 4 7 6 3
		f 4 -6 -26 3 23
		mu 0 4 8 7 4 5
		f 4 -27 4 27 -7
		mu 0 4 9 6 7 10
		f 4 5 28 -8 -28
		mu 0 4 7 8 11 10
		f 4 31 -9 -31 6
		mu 0 4 10 13 12 9
		f 4 -10 -32 7 29
		mu 0 4 14 13 10 11
		f 4 -33 8 33 -11
		mu 0 4 15 12 13 16
		f 4 9 34 -12 -34
		mu 0 4 13 14 17 16
		f 4 37 -13 -37 10
		mu 0 4 16 19 18 15
		f 4 -14 -38 11 35
		mu 0 4 20 19 16 17
		f 4 -40 12 40 -15
		mu 0 4 21 18 19 22
		f 4 -16 -41 13 38
		mu 0 4 23 22 19 20
		f 4 -42 14 42 -17
		mu 0 4 24 21 22 25
		f 4 15 43 -18 -43
		mu 0 4 22 23 26 25
		f 4 46 -19 -46 16
		mu 0 4 25 28 27 24
		f 4 -20 -47 17 44
		mu 0 4 29 28 25 26
		f 4 -1 -48 18 48
		mu 0 4 31 30 27 28
		f 4 19 49 -2 -49
		mu 0 4 28 29 32 31
		f 4 -44 -39 50 -54
		mu 0 4 34 33 36 37
		f 4 -55 -45 53 51
		mu 0 4 38 35 34 37
		f 4 -21 -50 54 52
		mu 0 4 5 2 35 38
		f 4 -51 -36 -35 -56
		mu 0 4 37 36 39 40
		f 4 -52 55 -30 -57
		mu 0 4 38 37 40 41
		f 4 -24 -53 56 -29
		mu 0 4 8 5 38 41
		f 4 60 -58 39 41
		mu 0 4 43 46 45 42
		f 4 -61 45 61 -59
		mu 0 4 46 43 44 47
		f 4 21 -60 -62 47
		mu 0 4 0 3 47 44
		f 4 62 32 36 57
		mu 0 4 46 49 48 45
		f 4 63 30 -63 58
		mu 0 4 47 50 49 46
		f 4 24 26 -64 59
		mu 0 4 3 6 50 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape5" -p "rock3";
	rename -uid "10739E3D-A14B-7B91-06E1-339758AC070A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.5625 0.25 0.625 0.25 0.375 0.3125
		 0.5625 0.3125 0.625 0.3125 0.375 0.4375 0.5625 0.4375 0.625 0.4375 0.5625 0.5 0.625
		 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75 0.5625 0.75 0.625 0.75 0.375
		 0.8125 0.5625 0.8125 0.625 0.8125 0.375 0.9375 0.5625 0.9375 0.625 0.9375 0.375 1
		 0.5625 1 0.625 1 0.875 0 0.8125 0 0.6875 0 0.875 0.125 0.8125 0.125 0.6875 0.125
		 0.875 0.25 0.8125 0.25 0.6875 0.25 0.125 0 0.1875 0 0.3125 0 0.125 0.125 0.1875 0.125
		 0.3125 0.125 0.1875 0.25 0.3125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[2:31]" -type "float3"  0 0 -0.069660023 0.12098563 
		0.21568382 -0.095054984 -0.0075055957 -4.7981739e-06 -0.041002631 -0.010002226 0.048440605 
		-0.010928065 0 0 0 0.0069458783 -0.049503408 -0.081119359 0.063774556 0.0037145875 
		-0.050479904 0.0032397439 -0.078553051 -0.043658346 -0.075388432 -0.12349878 0.035525888 
		0 0 0 -0.023653932 0.042779773 -0.095715374 -0.03022927 0.23026431 -0.058148071 0 
		0 0 0 0 0 0 0 0 0.011923738 0.02335152 0.12774846 -0.028925806 0.032310605 0.23350197 
		0.059683532 0.0085184397 0.20008634 -0.031631663 -0.018772047 0.2382969 -0.0051051676 
		0.011598671 0.18638521 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.060441501 0 0.16091423 
		-0.0088393921 -0.16533518 -0.18503162 0.0072042942 -0.17476875 -0.10748348 0.069064111 
		0.22344716 -0.083448797;
	setAttr -s 32 ".vt[0:31]"  -0.31644428 -0.44374913 0.46994603 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.29504412 -0.25559813 0.44893342 0.19083059 -0.20181157 0.55880809
		 0.45865545 -0.23849395 0.45133519 0.092481047 0.10042419 0.44595581 0.35810667 0.081620112 0.44595581
		 -0.24888915 0.053729579 0.26681077 -0.00035109092 0.32721147 0.25088334 0.35810667 0.27284542 0.25
		 -0.2952635 0.19679455 0.11105549 0.095344648 0.2170777 -0.17719746 0.36101863 -0.081942677 -0.1624697
		 0.13086405 0.071075901 -0.35316604 0.23857597 -0.028542385 -0.33595219 -0.26031148 -0.11095775 -0.32833678
		 0.033351019 -0.23849395 -0.57739282 0.4486047 -0.23849395 -0.5 -0.38377857 -0.5 -0.43383321
		 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 -0.16886061 0.25 -0.5 -0.15042311
		 0.41698471 -0.5 -0.15042311 -0.38377857 -0.5 0.25 0.25 -0.5 0.25 0.41698471 -0.5 0.25
		 0.57034934 -0.24904433 -0.2272218 0.60609001 0.076635331 0.12116964 -0.48414671 0.0041062087 0.082341745
		 -0.38747394 -0.18879488 0.38198483;
	setAttr -s 59 ".ed[0:58]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 1 9 10 1
		 11 12 1 12 13 1 14 15 0 16 17 1 17 18 1 19 20 0 20 21 0 22 23 1 23 24 1 25 26 1 26 27 1
		 2 5 0 0 3 0 1 4 1 5 7 0 4 6 1 3 8 0 6 9 1 7 10 0 10 13 0 8 11 0 9 12 1 12 14 1 13 15 0
		 15 18 0 11 16 0 14 17 1 18 21 0 16 19 0 17 20 1 19 22 0 20 23 1 21 24 0 24 27 0 22 25 0
		 23 26 1 25 0 0 26 1 1 27 2 0 18 28 1 29 5 1 24 28 1 27 29 1 28 13 1 29 10 1 16 30 1
		 30 31 1 31 3 1 22 30 1 25 31 1 30 11 1 31 8 1;
	setAttr -s 29 -ch 118 ".fc[0:28]" -type "polyFaces" 
		f 4 -20 0 20 -3
		mu 0 4 3 0 1 4
		f 4 -4 -21 1 18
		mu 0 4 5 4 1 2
		f 4 -5 -23 3 21
		mu 0 4 7 6 4 5
		f 5 24 -6 -24 2 22
		mu 0 5 6 9 8 3 4
		f 4 4 25 -7 -25
		mu 0 4 6 7 10 9
		f 4 28 -8 -28 5
		mu 0 4 9 12 11 8
		f 4 -9 -29 6 26
		mu 0 4 13 12 9 10
		f 4 8 30 -10 -30
		mu 0 4 12 13 15 14
		f 5 33 -11 -33 7 29
		mu 0 5 14 17 16 11 12
		f 4 -12 -34 9 31
		mu 0 4 18 17 14 15
		f 4 -36 10 36 -13
		mu 0 4 19 16 17 20
		f 4 -14 -37 11 34
		mu 0 4 21 20 17 18
		f 4 -38 12 38 -15
		mu 0 4 22 19 20 23
		f 4 13 39 -16 -39
		mu 0 4 20 21 24 23
		f 4 42 -17 -42 14
		mu 0 4 23 26 25 22
		f 4 -18 -43 15 40
		mu 0 4 27 26 23 24
		f 4 -1 -44 16 44
		mu 0 4 29 28 25 26
		f 4 17 45 -2 -45
		mu 0 4 26 27 30 29
		f 4 -40 -35 46 -49
		mu 0 4 32 31 34 35
		f 6 -50 -41 48 50 -27 -52
		mu 0 6 36 33 32 35 38 39
		f 4 -19 -46 49 47
		mu 0 4 5 2 33 36
		f 4 -47 -32 -31 -51
		mu 0 4 35 34 37 38
		f 4 -22 -48 51 -26
		mu 0 4 7 5 36 39
		f 4 55 -53 35 37
		mu 0 4 41 44 43 40
		f 4 -56 41 56 -54
		mu 0 4 44 41 42 45
		f 4 19 -55 -57 43
		mu 0 4 0 3 45 42
		f 3 57 32 52
		mu 0 3 44 46 43
		f 4 58 27 -58 53
		mu 0 4 45 47 46 44
		f 3 23 -59 54
		mu 0 3 3 47 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rock4";
	rename -uid "44E7B6C1-7445-0D23-6C19-8CAE1D1F63BA";
	setAttr ".t" -type "double3" 0 0.98787777830315893 -2.7595677265991547 ;
	setAttr ".r" -type "double3" 0 -91.398620409871157 0 ;
	setAttr ".s" -type "double3" 2.0318789920560869 2.0318789920560869 2.7091719894081194 ;
createNode mesh -n "rockShape4" -p "rock4";
	rename -uid "172DFB5C-0840-EF3C-8629-03BB6B633E23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape3" -p "rock4";
	rename -uid "515FDD16-6542-4E21-4FA4-4AA14DE07E5B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.5625 0.25 0.625 0.25 0.5625 0.3125
		 0.625 0.3125 0.5625 0.5 0.625 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75
		 0.5625 0.75 0.625 0.75 0.375 0.9375 0.5625 0.9375 0.625 0.9375 0.375 1 0.5625 1 0.625
		 1 0.875 0 0.6875 0 0.875 0.125 0.6875 0.125 0.875 0.25 0.6875 0.25 0.125 0 0.3125
		 0 0.125 0.125 0.3125 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[5:22]" -type "float3"  -0.019821107 -0.023359656 
		-0.013236105 0 0 0 0.2254335 0.0020235926 -0.12082556 -0.069951177 -0.27641457 -0.43367761 
		0.094043225 0.13226607 -0.2691142 -0.042470962 0.27368093 -0.019337356 -0.070806205 
		0.45627195 -0.032238632 -0.04919669 0.19414765 0.081615746 0 0 0 -0.042010456 0.26792088 
		-0.046488822 0 0 0.4497095 0 0 0 0.25676981 0 0 0.078699321 -0.013650239 0.028144678 
		0 0 0 0.36231238 0 -0.37485269 0.34739977 -0.26268205 -0.57832575 0.079005063 -0.14248775 
		-0.47589958;
	setAttr -s 23 ".vt[0:22]"  -0.38377857 -0.5 0.41297498 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.24072534 -0.11095775 0.5 0.25 -0.23849395 0.5 0.45865545 -0.23849395 0.45133519
		 0.092481047 0.10042419 0.44595581 0.35810667 0.081620112 0.44595581 -0.014256924 0.37246379 0.25
		 0.35810667 0.27284542 0.25 0.13086405 0.071075901 -0.35316604 0.23857597 -0.028542385 -0.33595219
		 -0.26031148 -0.11095775 -0.32833678 0.033351019 -0.23849395 -0.57739282 0.4486047 -0.23849395 -0.5
		 -0.38377857 -0.5 -0.43383321 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 0.25
		 0.25 -0.5 0.25 0.41698471 -0.5 0.25 0.5 0.0080216378 0.25 -0.4557884 0.14373785 0.32727945;
	setAttr -s 43 ".ed[0:42]"  0 1 0 1 2 0 3 4 1 4 5 1 3 6 0 6 7 0 8 9 1
		 10 11 0 12 13 1 13 14 1 15 16 0 16 17 0 18 19 1 19 20 1 2 5 0 0 3 0 1 4 1 5 7 0 4 6 1
		 6 8 1 7 9 0 9 11 0 8 10 1 11 14 0 10 12 0 10 13 1 14 17 0 12 15 0 13 16 1 17 20 0
		 15 18 0 16 19 1 18 0 0 19 1 1 20 2 0 14 21 1 21 5 1 20 21 1 21 9 1 12 22 1 22 3 1
		 18 22 1 22 8 1;
	setAttr -s 22 -ch 86 ".fc[0:21]" -type "polyFaces" 
		f 4 -16 0 16 -3
		mu 0 4 3 0 1 4
		f 4 -4 -17 1 14
		mu 0 4 5 4 1 2
		f 3 18 -5 2
		mu 0 3 4 6 3
		f 4 -6 -19 3 17
		mu 0 4 7 6 4 5
		f 4 5 20 -7 -20
		mu 0 4 6 7 9 8
		f 4 -8 -23 6 21
		mu 0 4 11 10 8 9
		f 3 25 -9 -25
		mu 0 3 10 13 12
		f 4 -10 -26 7 23
		mu 0 4 14 13 10 11
		f 4 -28 8 28 -11
		mu 0 4 15 12 13 16
		f 4 -12 -29 9 26
		mu 0 4 17 16 13 14
		f 4 31 -13 -31 10
		mu 0 4 16 19 18 15
		f 4 -14 -32 11 29
		mu 0 4 20 19 16 17
		f 4 -1 -33 12 33
		mu 0 4 22 21 18 19
		f 4 13 34 -2 -34
		mu 0 4 19 20 23 22
		f 4 -38 -30 -27 35
		mu 0 4 27 25 24 26
		f 4 -15 -35 37 36
		mu 0 4 5 2 25 27
		f 4 -22 -39 -36 -24
		mu 0 4 28 29 27 26
		f 4 -18 -37 38 -21
		mu 0 4 7 5 27 29
		f 4 27 30 41 -40
		mu 0 4 32 30 31 33
		f 4 15 -41 -42 32
		mu 0 4 0 3 33 31
		f 4 24 39 42 22
		mu 0 4 10 32 33 8
		f 4 -43 40 4 19
		mu 0 4 8 33 3 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rock5";
	rename -uid "3E67E771-E042-764F-BB35-B2B3298B4F89";
	setAttr ".t" -type "double3" 0 0.79052776113654399 2.3263500012296365 ;
	setAttr ".r" -type "double3" 0 162.87443390238133 0 ;
	setAttr ".s" -type "double3" 1.6625974302389095 1.6625974302389095 2.2167965736518811 ;
createNode mesh -n "rockShape5" -p "rock5";
	rename -uid "17BFA1BD-4E48-8C5D-DB6B-3094173E23EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "rock5";
	rename -uid "602760CD-724F-1EA1-00E3-998B52A72A7A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.5625 0.25 0.625 0.25 0.5625 0.3125
		 0.625 0.3125 0.5625 0.5 0.625 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75
		 0.5625 0.75 0.625 0.75 0.375 0.9375 0.5625 0.9375 0.625 0.9375 0.375 1 0.5625 1 0.625
		 1 0.875 0 0.6875 0 0.875 0.125 0.6875 0.125 0.875 0.25 0.6875 0.25 0.125 0 0.3125
		 0 0.125 0.125 0.3125 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[5:22]" -type "float3"  -0.019821107 -0.023359656 
		-0.013236105 0 0 0 0.15663835 0.12668753 -0.18772596 -0.14975232 0.32137436 -0.16639715 
		-0.14161918 0.50990081 -0.24026811 0.036538392 0.015657909 0.019155324 0.27233282 
		0.11670341 0.14277107 0 0 0 0 0 0 0.0034717619 0.002785176 0.003841877 0 0 0.4497095 
		0 0 0 0.25676981 0 0 0.078699321 -0.013650239 0.028144678 0 0 0 0.36231238 0 -0.37485269 
		0.25601113 -0.036536753 -0.2467981 0.078959823 -0.14214887 -0.47574806;
	setAttr -s 23 ".vt[0:22]"  -0.38377857 -0.5 0.41297498 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.24072534 -0.11095775 0.5 0.25 -0.23849395 0.5 0.45865545 -0.23849395 0.45133519
		 0.092481047 0.10042419 0.44595581 0.35810667 0.081620112 0.44595581 -0.014256924 0.37246379 0.25
		 0.35810667 0.27284542 0.25 0.13086405 0.071075901 -0.35316604 0.23857597 -0.028542385 -0.33595219
		 -0.26031148 -0.11095775 -0.32833678 0.033351019 -0.23849395 -0.57739282 0.4486047 -0.23849395 -0.5
		 -0.38377857 -0.5 -0.43383321 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 0.25
		 0.25 -0.5 0.25 0.41698471 -0.5 0.25 0.5 0.0080216378 0.25 -0.4557884 0.14373785 0.32727945;
	setAttr -s 43 ".ed[0:42]"  0 1 0 1 2 0 3 4 1 4 5 1 3 6 0 6 7 0 8 9 1
		 10 11 0 12 13 1 13 14 1 15 16 0 16 17 0 18 19 1 19 20 1 2 5 0 0 3 0 1 4 1 5 7 0 4 6 1
		 6 8 1 7 9 0 9 11 0 8 10 1 11 14 0 10 12 0 10 13 1 14 17 0 12 15 0 13 16 1 17 20 0
		 15 18 0 16 19 1 18 0 0 19 1 1 20 2 0 14 21 1 21 5 1 20 21 1 21 9 1 12 22 1 22 3 1
		 18 22 1 22 8 1;
	setAttr -s 22 -ch 86 ".fc[0:21]" -type "polyFaces" 
		f 4 -16 0 16 -3
		mu 0 4 3 0 1 4
		f 4 -4 -17 1 14
		mu 0 4 5 4 1 2
		f 3 18 -5 2
		mu 0 3 4 6 3
		f 4 -6 -19 3 17
		mu 0 4 7 6 4 5
		f 4 5 20 -7 -20
		mu 0 4 6 7 9 8
		f 4 -8 -23 6 21
		mu 0 4 11 10 8 9
		f 3 25 -9 -25
		mu 0 3 10 13 12
		f 4 -10 -26 7 23
		mu 0 4 14 13 10 11
		f 4 -28 8 28 -11
		mu 0 4 15 12 13 16
		f 4 -12 -29 9 26
		mu 0 4 17 16 13 14
		f 4 31 -13 -31 10
		mu 0 4 16 19 18 15
		f 4 -14 -32 11 29
		mu 0 4 20 19 16 17
		f 4 -1 -33 12 33
		mu 0 4 22 21 18 19
		f 4 13 34 -2 -34
		mu 0 4 19 20 23 22
		f 4 -38 -30 -27 35
		mu 0 4 27 25 24 26
		f 4 -15 -35 37 36
		mu 0 4 5 2 25 27
		f 4 -22 -39 -36 -24
		mu 0 4 28 29 27 26
		f 4 -18 -37 38 -21
		mu 0 4 7 5 27 29
		f 4 27 30 41 -40
		mu 0 4 32 30 31 33
		f 4 15 -41 -42 32
		mu 0 4 0 3 33 31
		f 4 24 39 42 22
		mu 0 4 10 32 33 8
		f 4 -43 40 4 19
		mu 0 4 8 33 3 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rock6";
	rename -uid "BDD66D82-E144-CCFD-CDBC-D4BFA506CA93";
	setAttr ".t" -type "double3" 5.2997773505336072 0.70469127818821553 2.1325766564519473 ;
	setAttr ".r" -type "double3" 0 -91.398620409871157 0 ;
	setAttr ".s" -type "double3" 1.5202977778099664 1.5202977778099664 2.0270637037466259 ;
createNode mesh -n "rockShape6" -p "rock6";
	rename -uid "0A65BDD8-474F-2B75-1FAE-879B2E602D19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4" -p "rock6";
	rename -uid "90296284-F64B-4488-75E6-65B1529B4777";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.5625 0
		 0.625 0 0.375 0.125 0.5625 0.125 0.625 0.125 0.5625 0.25 0.625 0.25 0.5625 0.3125
		 0.625 0.3125 0.5625 0.5 0.625 0.5 0.375 0.625 0.5625 0.625 0.625 0.625 0.375 0.75
		 0.5625 0.75 0.625 0.75 0.375 0.9375 0.5625 0.9375 0.625 0.9375 0.375 1 0.5625 1 0.625
		 1 0.875 0 0.6875 0 0.875 0.125 0.6875 0.125 0.875 0.25 0.6875 0.25 0.125 0 0.3125
		 0 0.125 0.125 0.3125 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[1:22]" -type "float3"  0.011455412 -0.013945248 
		0.53290421 0.35344335 -0.053609192 0.17754827 -0.077101655 -0.00043557584 0.0019818787 
		-0.08960662 0.12292333 0.1502478 0.32145083 0.015896276 0.018303907 0 0 0 0.2254335 
		0.0020235926 -0.12082556 -0.006915316 -0.18672289 -0.37575287 0.094043225 0.13226607 
		-0.2691142 -0.042470962 0.065304101 -0.019337356 0.38106012 0.25206083 -0.3262437 
		-0.18463026 -0.22227257 -0.0063560284 -0.0090125119 0 -0.27684939 -0.11506903 0.2372513 
		-0.38949585 0 0 0.4497095 0 0 0 0.25676981 0 0 0.078699321 -0.013650239 0.028144678 
		-0.034243733 0.051003516 0.08029145 0.36231238 0 -0.37485269 0.34739977 -0.26268205 
		-0.57832575 0.16200985 -0.18849675 -0.11992072;
	setAttr -s 23 ".vt[0:22]"  -0.38377857 -0.5 0.41297498 0.25 -0.5 0.41297498
		 0.41698471 -0.5 0.41297498 -0.24072534 -0.11095775 0.5 0.25 -0.23849395 0.5 0.45865545 -0.23849395 0.45133519
		 0.092481047 0.10042419 0.44595581 0.35810667 0.081620112 0.44595581 -0.014256924 0.37246379 0.25
		 0.35810667 0.27284542 0.25 0.13086405 0.071075901 -0.35316604 0.23857597 -0.028542385 -0.33595219
		 -0.26031148 -0.11095775 -0.32833678 0.033351019 -0.23849395 -0.57739282 0.4486047 -0.23849395 -0.5
		 -0.38377857 -0.5 -0.43383321 0.25 -0.5 -0.61594617 0.41698471 -0.5 -0.51033854 -0.38377857 -0.5 0.25
		 0.25 -0.5 0.25 0.41698471 -0.5 0.25 0.5 0.0080216378 0.25 -0.4557884 0.14373785 0.32727945;
	setAttr -s 43 ".ed[0:42]"  0 1 0 1 2 0 3 4 1 4 5 1 3 6 0 6 7 0 8 9 1
		 10 11 0 12 13 1 13 14 1 15 16 0 16 17 0 18 19 1 19 20 1 2 5 0 0 3 0 1 4 1 5 7 0 4 6 1
		 6 8 1 7 9 0 9 11 0 8 10 1 11 14 0 10 12 0 10 13 1 14 17 0 12 15 0 13 16 1 17 20 0
		 15 18 0 16 19 1 18 0 0 19 1 1 20 2 0 14 21 1 21 5 1 20 21 1 21 9 1 12 22 1 22 3 1
		 18 22 1 22 8 1;
	setAttr -s 22 -ch 86 ".fc[0:21]" -type "polyFaces" 
		f 4 -16 0 16 -3
		mu 0 4 3 0 1 4
		f 4 -4 -17 1 14
		mu 0 4 5 4 1 2
		f 3 18 -5 2
		mu 0 3 4 6 3
		f 4 -6 -19 3 17
		mu 0 4 7 6 4 5
		f 4 5 20 -7 -20
		mu 0 4 6 7 9 8
		f 4 -8 -23 6 21
		mu 0 4 11 10 8 9
		f 3 25 -9 -25
		mu 0 3 10 13 12
		f 4 -10 -26 7 23
		mu 0 4 14 13 10 11
		f 4 -28 8 28 -11
		mu 0 4 15 12 13 16
		f 4 -12 -29 9 26
		mu 0 4 17 16 13 14
		f 4 31 -13 -31 10
		mu 0 4 16 19 18 15
		f 4 -14 -32 11 29
		mu 0 4 20 19 16 17
		f 4 -1 -33 12 33
		mu 0 4 22 21 18 19
		f 4 13 34 -2 -34
		mu 0 4 19 20 23 22
		f 4 -38 -30 -27 35
		mu 0 4 27 25 24 26
		f 4 -15 -35 37 36
		mu 0 4 5 2 25 27
		f 4 -22 -39 -36 -24
		mu 0 4 28 29 27 26
		f 4 -18 -37 38 -21
		mu 0 4 7 5 27 29
		f 4 27 30 41 -40
		mu 0 4 32 30 31 33
		f 4 15 -41 -42 32
		mu 0 4 0 3 33 31
		f 4 24 39 42 22
		mu 0 4 10 32 33 8
		f 4 -43 40 4 19
		mu 0 4 8 33 3 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F1A0BEFA-394F-C7E1-D53A-0AB970AE742B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C52C4BA1-B848-58B9-331F-C69CA2CA8EE3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9459294A-584F-9516-673F-8B96D5D7E588";
createNode displayLayerManager -n "layerManager";
	rename -uid "48709F54-CF41-CF50-7573-7791AED5DF2A";
createNode displayLayer -n "defaultLayer";
	rename -uid "C8A23912-AF42-8236-362E-9392043427CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "94D3F795-8843-7154-177A-A889A0F6793C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7094566E-D348-085C-369E-868A155DBA69";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "333043FA-444D-4995-0A52-3D8A0F8F4E0F";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "B0FBD397-4345-FD06-CD4B-8CB176A8B83C";
	setAttr ".ics" -type "componentList" 4 "e[4:7]" "e[44:47]" "e[144:147]" "e[168:171]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "A74556D2-8849-E03B-12DB-FA9CCE46297D";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk";
	setAttr ".tk[0]" -type "float3" 0.11622142 0 -0.087025009 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.087025009 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.087025009 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.087025009 ;
	setAttr ".tk[4]" -type "float3" -0.0830153 0 -0.087025009 ;
	setAttr ".tk[17]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[18]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[19]" -type "float3" -0.092084147 -0.099618353 0 ;
	setAttr ".tk[20]" -type "float3" 0.14942753 -0.11741433 -0.05404418 ;
	setAttr ".tk[21]" -type "float3" 0 -0.11741433 -0.05404418 ;
	setAttr ".tk[22]" -type "float3" 0 -0.11741433 -0.05404418 ;
	setAttr ".tk[23]" -type "float3" 0 -0.11741434 -0.05404418 ;
	setAttr ".tk[24]" -type "float3" -0.14189333 -0.21703264 -0.05404418 ;
	setAttr ".tk[25]" -type "float3" 0.14942753 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.14189333 -0.09961836 0 ;
	setAttr ".tk[30]" -type "float3" 0.14942753 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.14189333 -0.09961836 0 ;
	setAttr ".tk[35]" -type "float3" 0.14942753 -0.03052498 0.049146481 ;
	setAttr ".tk[36]" -type "float3" 0 -0.03052498 0.049146481 ;
	setAttr ".tk[37]" -type "float3" 0 -0.03052498 0.049146481 ;
	setAttr ".tk[38]" -type "float3" 0 -0.03052498 0.049146481 ;
	setAttr ".tk[39]" -type "float3" -0.14189333 -0.13014334 0.049146481 ;
	setAttr ".tk[40]" -type "float3" 0.14942753 -0.10557064 0.14683397 ;
	setAttr ".tk[41]" -type "float3" 0 -0.10557064 0.14683397 ;
	setAttr ".tk[42]" -type "float3" 0 -0.10557064 0.14683397 ;
	setAttr ".tk[43]" -type "float3" 0 -0.10557066 0.14683397 ;
	setAttr ".tk[44]" -type "float3" -0.14189333 -0.20518896 0.14683397 ;
	setAttr ".tk[45]" -type "float3" 0 -0.03052498 0.049146496 ;
	setAttr ".tk[46]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[47]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[48]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[49]" -type "float3" -0.092084147 -0.09961836 0 ;
	setAttr ".tk[50]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[51]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[55]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[60]" -type "float3" 0.11622142 0 0.069996096 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.069996096 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.069996096 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.069996096 ;
	setAttr ".tk[64]" -type "float3" -0.0830153 0 0.069996096 ;
	setAttr ".tk[65]" -type "float3" 0.11622142 0 0 ;
	setAttr ".tk[69]" -type "float3" -0.0830153 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.11622142 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.0830153 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.11622142 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.0830153 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.092084147 -0.09961836 0 ;
	setAttr ".tk[87]" -type "float3" -0.092084147 -0.09961836 0 ;
	setAttr ".tk[88]" -type "float3" -0.092084147 -0.09961836 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.03052498 0.049146481 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "8AFFF29F-014E-0243-573A-C2B7EDBF452F";
	setAttr ".ics" -type "componentList" 14 "e[58]" "e[62]" "e[67]" "e[72]" "e[77]" "e[82]" "e[87]" "e[92]" "e[97]" "e[103]" "e[107]" "e[112]" "e[117]" "e[122]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "3F93A92C-2641-28D2-102E-FB802375B0E0";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[5]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.11095775 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.11095775 0 ;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "9B975685-9A48-F970-B38C-C8BFB657D23B";
	setAttr ".ics" -type "componentList" 14 "e[44]" "e[47]" "e[51]" "e[55]" "e[59]" "e[63]" "e[67]" "e[71]" "e[75]" "e[80]" "e[83]" "e[87]" "e[91]" "e[95]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "6C5ED282-7640-BE1B-2EFD-CEB6854B4A32";
	setAttr ".ics" -type "componentList" 8 "e[10:11]" "e[24:25]" "e[79]" "e[82]" "e[85]" "e[96]" "e[99]" "e[102]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "018BACC9-1443-1A06-6032-9193CD483E1B";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[5]" -type "float3" -0.041344561 -0.12753621 -0.072015159 ;
	setAttr ".tk[6]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[7]" -type "float3" -0.20084316 -0.12753621 0.065473996 ;
	setAttr ".tk[8]" -type "float3" 0.030166049 -0.12753621 0.00069299969 ;
	setAttr ".tk[9]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[10]" -type "float3" -0.15751895 -0.12753621 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[13]" -type "float3" -0.26425692 -0.12753621 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.12753621 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.12753621 0 ;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "8E6C8E23-9040-05DF-73BC-63825DF32B80";
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[14:15]" "e[63:65]" "e[75:77]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "FF933C66-9343-CAF7-F32B-48B26503F2E0";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 0.023350343 ;
	setAttr ".tk[12]" -type "float3" 0 -0.10419904 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.031064607 0.29667917 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[18]" -type "float3" 0.11414333 0.14086793 0.24341707 ;
	setAttr ".tk[21]" -type "float3" 0.11716642 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.20278595 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.10932362 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.21664898 0 -0.077392839 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.0038293018 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.18594226 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.080334611 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.081139378 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[38]" -type "float3" 0.24090855 0 0.09957689 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.09957689 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.09957689 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4F55CD77-114C-A48F-E26B-AEB433854CA4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 315\n            -height 567\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 315\\n    -height 567\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 315\\n    -height 567\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "05A5CE8C-0647-0054-A5B5-F1B21B0EFD65";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "6CB212F6-2B43-90B6-3040-398923500FA6";
	setAttr ".ics" -type "componentList" 1 "e[51]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "EEF10085-C34E-BB80-0B8B-FBA5215FF1CE";
	setAttr ".ics" -type "componentList" 1 "e[10]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "0DD898EB-1847-65F6-CFD0-F688FCF089F3";
	setAttr ".ics" -type "componentList" 1 "e[4]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge17";
	rename -uid "E69274CB-0B4F-4EC3-F339-18BC789994D8";
	setAttr ".ics" -type "componentList" 6 "e[8:9]" "e[16:17]" "e[53]" "e[55]" "e[60]" "e[62]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "5EFB0DC9-5147-A153-72AF-FE98E8815825";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[3]" -type "float3" 0.25927466 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.19224496 -0.14246005 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.15462525 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.073811039 0 ;
	setAttr ".tk[9]" -type "float3" 0.15347455 0 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.046084799 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.36252615 -0.14745042 ;
	setAttr ".tk[16]" -type "float3" -0.11913595 -0.19581722 0 ;
	setAttr ".tk[17]" -type "float3" -0.11953071 -0.19581722 0.017213846 ;
	setAttr ".tk[18]" -type "float3" 0.13036491 0 0.17166322 ;
	setAttr ".tk[20]" -type "float3" -0.051395308 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.085221797 0 -0.17478144 ;
	setAttr ".tk[31]" -type "float3" 0 0.24651559 0 ;
	setAttr ".tk[32]" -type "float3" 0.0070967665 0.18676771 0.17891891 ;
	setAttr ".tk[33]" -type "float3" 0.044211585 0.25469559 0.077279449 ;
createNode polyDelEdge -n "polyDelEdge18";
	rename -uid "4079A255-3842-AB10-A986-98B25BA19A83";
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[26]";
	setAttr ".cv" yes;
createNode createColorSet -n "createColorSet1";
	rename -uid "8D540766-4B4F-DF6B-779B-2598BC9D348B";
	setAttr ".colos" -type "string" "SculptFreezeColorTemp";
	setAttr ".clam" no;
createNode createColorSet -n "createColorSet2";
	rename -uid "8C957800-0946-BB7B-1AAC-66986B11BBB3";
	setAttr ".colos" -type "string" "SculptMaskColorTemp";
	setAttr ".clam" no;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "4CB6944E-5741-16EE-6D9C-AFB3818EA5C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" -1.5888807118002959 0 -0.48957971639561459 0 0 1.6625974302389095 0 0
		 0.65277295519415335 0 -2.1185076157337295 0 0 0.79052776113654399 2.3263500012296365 1;
	setAttr ".s" -type "double3" 2.3885318336475985 2.3885318336475985 2.3885318336475985 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "A849796B-AB4B-4C2C-E5D3-A7B6495968F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" -0.04959431973362876 0 2.0312736501537696 0 0 2.0318789920560869 0 0
		 -2.7083648668716966 0 -0.066125759644838425 0 0 0.98787777830315893 -2.7595677265991547 1;
	setAttr ".s" -type "double3" 3.0223894100820621 3.0223894100820621 3.0223894100820621 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "80FC904F-4D42-0BA8-C10B-25B0E9836D26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 2.0318789920560869 0 0 0 0 2.0318789920560869 0 0 0 0 2.7091719894081194 0
		 0 0.98787777830315893 -7.341236581443356 1;
	setAttr ".s" -type "double3" 3.0232901153882636 3.0232901153882636 3.0232901153882636 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "C6056187-A847-74CB-7432-63AFE21CC169";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[5:22]" -type "float3"  -0.019821107 -0.023359656
		 -0.013236105 0 0 0 0.15663835 0.12668753 -0.18772596 -0.069951177 -0.27641457 -0.43367761
		 -0.082292706 -0.038418323 -0.26344943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4497095
		 0 0 0 0.25676981 0 0 0.078699321 -0.013650239 0.028144678 0 0 0 0.36231238 0 -0.37485269
		 -0.025900841 -0.26269764 -0.55876505 0.079005063 -0.14248775 -0.47589958;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "297380C7-9A46-5DB7-62F5-54BD43A1A860";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" -0.037107590746206953 0 1.5198448473192698 0 0 1.5202977778099664 0 0
		 -2.026459796425697 0 -0.049476787661609373 0 5.2997773505336072 0.70469127818821553 2.1325766564519473 1;
	setAttr ".s" -type "double3" 3.716639067289031 3.716639067289031 3.716639067289031 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "5CF5271F-9D47-183B-EBD5-AEB44A57DA45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:28]";
	setAttr ".ix" -type "matrix" 2.267259406952475 0 0 0 0 2.267259406952475 0 0 0 0 3.0230125426033023 0
		 6.0803775244933442 1.1179871906857737 -1.9926719730342688 1;
	setAttr ".s" -type "double3" 2.9246129223066761 2.9246129223066761 2.9246129223066761 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "4BD5CB52-B044-71AF-1CEC-20AAAF75A986";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:28]";
	setAttr ".ix" -type "matrix" 2.1938043186322278 0 0 0 0 2.1938043186322278 0 0 0 0 2.9250724248429716 0
		 6.0803775244933442 1.051330323907016 -7.341236581443356 1;
	setAttr ".s" -type "double3" 3.4362412976567249 3.4362412976567249 3.4362412976567249 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "8AC03BFF-EA4F-0678-5D8E-26824A8351A2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 -0.069660023 ;
	setAttr ".tk[28]" -type "float3" -0.11620688 0 0.097673349 ;
	setAttr ".tk[29]" -type "float3" -0.013753437 -0.13475657 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyAutoProj3.out" "rockShape1.i";
connectAttr "polyAutoProj6.out" "rockShape2.i";
connectAttr "polyAutoProj5.out" "rockShape3.i";
connectAttr "polyAutoProj2.out" "rockShape4.i";
connectAttr "polyAutoProj1.out" "rockShape5.i";
connectAttr "polyAutoProj4.out" "rockShape6.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyDelEdge1.ip";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge1.out" "polyTweak2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyTweak3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge4.out" "polyTweak4.ip";
connectAttr "|rock2|polySurfaceShape1.o" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polyDelEdge8.ip";
connectAttr "polyTweak5.out" "polyDelEdge17.ip";
connectAttr "polyDelEdge5.out" "polyTweak5.ip";
connectAttr "polyDelEdge17.out" "polyDelEdge18.ip";
connectAttr "polyDelEdge18.out" "createColorSet1.ig";
connectAttr "createColorSet1.og" "createColorSet2.ig";
connectAttr "polySurfaceShape2.o" "polyAutoProj1.ip";
connectAttr "rockShape5.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape3.o" "polyAutoProj2.ip";
connectAttr "rockShape4.wm" "polyAutoProj2.mp";
connectAttr "polyTweak6.out" "polyAutoProj3.ip";
connectAttr "rockShape1.wm" "polyAutoProj3.mp";
connectAttr "createColorSet2.og" "polyTweak6.ip";
connectAttr "polySurfaceShape4.o" "polyAutoProj4.ip";
connectAttr "rockShape6.wm" "polyAutoProj4.mp";
connectAttr "polySurfaceShape5.o" "polyAutoProj5.ip";
connectAttr "rockShape3.wm" "polyAutoProj5.mp";
connectAttr "polyTweak7.out" "polyAutoProj6.ip";
connectAttr "rockShape2.wm" "polyAutoProj6.mp";
connectAttr "polyDelEdge8.out" "polyTweak7.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rockShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rockShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rockShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rockShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rockShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rockShape6.iog" ":initialShadingGroup.dsm" -na;
// End of rock_v2.ma
