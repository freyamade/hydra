# File containing constants for colours that are going to get very unwieldy

module Hydra
  class Color
    # Mapping of Colour Names to Terminal Codes
    COLORS = {
      "black"             => 0,
      "maroon"            => 1,
      "green"             => 2,
      "olive"             => 3,
      "navy"              => 4,
      "purple"            => 5,
      "teal"              => 6,
      "silver"            => 7,
      "grey"              => 8,
      "red"               => 9,
      "lime"              => 10,
      "yellow"            => 11,
      "blue"              => 12,
      "fuchsia"           => 13,
      "aqua"              => 14,
      "white"             => 15,
      "grey1"             => 16,
      "navyblue"          => 17,
      "darkblue"          => 18,
      "blue1"             => 19,
      "blue2"             => 20,
      "blue3"             => 21,
      "darkgreen"         => 22,
      "deepskyblue1"      => 23,
      "deepskyblue2"      => 24,
      "deepskyblue3"      => 25,
      "dodgerblue1"       => 26,
      "dodgerblue2"       => 27,
      "green1"            => 28,
      "springgreen1"      => 29,
      "turquoise1"        => 30,
      "deepskyblue4"      => 31,
      "deepskyblue5"      => 32,
      "dodgerblue3"       => 33,
      "green2"            => 34,
      "springgreen2"      => 35,
      "darkcyan"          => 36,
      "lightseagreen"     => 37,
      "deepskyblue6"      => 38,
      "deepskyblue7"      => 39,
      "green3"            => 40,
      "springgreen3"      => 41,
      "springgreen4"      => 42,
      "cyan1"             => 43,
      "darkturquoise"     => 44,
      "turquoise2"        => 45,
      "green4"            => 46,
      "springgreen5"      => 47,
      "springgreen6"      => 48,
      "mediumspringgreen" => 49,
      "cyan2"             => 50,
      "cyan3"             => 51,
      "darkred1"          => 52,
      "deeppink1"         => 53,
      "purple1"           => 54,
      "purple2"           => 55,
      "purple3"           => 56,
      "blueviolet"        => 57,
      "orange1"           => 58,
      "grey2"             => 59,
      "mediumpurple1"     => 60,
      "slateblue1"        => 61,
      "slateblue2"        => 62,
      "royalblue"         => 63,
      "chartreuse1"       => 64,
      "darkseagreen1"     => 65,
      "paleturquoise1"    => 66,
      "steelblue1"        => 67,
      "steelblue2"        => 68,
      "cornflowerblue"    => 69,
      "chartreuse2"       => 70,
      "darkseagreen2"     => 71,
      "cadetblue1"        => 72,
      "cadetblue2"        => 73,
      "skyblue1"          => 74,
      "steelblue3"        => 75,
      "chartreuse3"       => 76,
      "palegreen1"        => 77,
      "seagreen1"         => 78,
      "aquamarine1"       => 79,
      "mediumturquoise"   => 80,
      "steelblue4"        => 81,
      "chartreuse4"       => 82,
      "seagreen2"         => 83,
      "seagreen3"         => 84,
      "seagreen4"         => 85,
      "aquamarine2"       => 86,
      "darkslategray1"    => 87,
      "darkred2"          => 88,
      "deeppink2"         => 89,
      "darkmagenta1"      => 90,
      "darkmagenta2"      => 91,
      "darkviolet1"       => 92,
      "purple4"           => 93,
      "orange2"           => 94,
      "lightpink1"        => 95,
      "plum1"             => 96,
      "mediumpurple2"     => 97,
      "mediumpurple3"     => 98,
      "slateblue3"        => 99,
      "yellow1"           => 100,
      "wheat1"            => 101,
      "grey3"             => 102,
      "lightslategrey"    => 103,
      "mediumpurple4"     => 104,
      "lightslateblue"    => 105,
      "yellow2"           => 106,
      "darkolivegreen1"   => 107,
      "darkseagreen3"     => 108,
      "lightskyblue1"     => 109,
      "lightskyblue2"     => 110,
      "skyblue2"          => 111,
      "chartreuse5"       => 112,
      "darkolivegreen2"   => 113,
      "palegreen2"        => 114,
      "darkseagreen4"     => 115,
      "darkslategray2"    => 116,
      "skyblue3"          => 117,
      "chartreuse6"       => 118,
      "lightgreen1"       => 119,
      "lightgreen2"       => 120,
      "palegreen3"        => 121,
      "aquamarine3"       => 122,
      "darkslategray3"    => 123,
      "red1"              => 124,
      "deeppink3"         => 125,
      "mediumvioletred"   => 126,
      "magenta1"          => 127,
      "darkviolet2"       => 128,
      "purple5"           => 129,
      "darkorange1"       => 130,
      "indianred1"        => 131,
      "hotpink1"          => 132,
      "mediumorchid1"     => 133,
      "mediumorchid2"     => 134,
      "mediumpurple5"     => 135,
      "darkgoldenrod"     => 136,
      "lightsalmon1"      => 137,
      "rosybrown"         => 138,
      "grey4"             => 139,
      "mediumpurple6"     => 140,
      "mediumpurple7"     => 141,
      "gold1"             => 142,
      "darkkhaki"         => 143,
      "navajowhite1"      => 144,
      "grey5"             => 145,
      "lightsteelblue1"   => 146,
      "lightsteelblue2"   => 147,
      "yellow3"           => 148,
      "darkolivegreen3"   => 149,
      "darkseagreen5"     => 150,
      "darkseagreen6"     => 151,
      "lightcyan1"        => 152,
      "lightskyblue3"     => 153,
      "greenyellow"       => 154,
      "darkolivegreen4"   => 155,
      "palegreen4"        => 156,
      "darkseagreen7"     => 157,
      "darkseagreen8"     => 158,
      "paleturquoise2"    => 159,
      "red2"              => 160,
      "deeppink4"         => 161,
      "deeppink5"         => 162,
      "magenta2"          => 163,
      "magenta3"          => 164,
      "magenta4"          => 165,
      "darkorange2"       => 166,
      "indianred2"        => 167,
      "hotpink2"          => 168,
      "hotpink3"          => 169,
      "orchid1"           => 170,
      "mediumorchid3"     => 171,
      "orange3"           => 172,
      "lightsalmon2"      => 173,
      "lightpink2"        => 174,
      "pink1"             => 175,
      "plum2"             => 176,
      "violet"            => 177,
      "gold2"             => 178,
      "lightgoldenrod1"   => 179,
      "tan"               => 180,
      "mistyrose1"        => 181,
      "thistle1"          => 182,
      "plum3"             => 183,
      "yellow4"           => 184,
      "khaki1"            => 185,
      "lightgoldenrod2"   => 186,
      "lightyellow"       => 187,
      "grey6"             => 188,
      "lightsteelblue3"   => 189,
      "yellow5"           => 190,
      "darkolivegreen5"   => 191,
      "darkolivegreen6"   => 192,
      "darkseagreen9"     => 193,
      "honeydew"          => 194,
      "lightcyan2"        => 195,
      "red3"              => 196,
      "deeppink6"         => 197,
      "deeppink7"         => 198,
      "deeppink8"         => 199,
      "magenta5"          => 200,
      "magenta6"          => 201,
      "orangered"         => 202,
      "indianred3"        => 203,
      "indianred4"        => 204,
      "hotpink4"          => 205,
      "hotpink5"          => 206,
      "mediumorchid4"     => 207,
      "darkorange3"       => 208,
      "salmon"            => 209,
      "lightcoral"        => 210,
      "palevioletred"     => 211,
      "orchid2"           => 212,
      "orchid3"           => 213,
      "orange4"           => 214,
      "sandybrown"        => 215,
      "lightsalmon3"      => 216,
      "lightpink3"        => 217,
      "pink2"             => 218,
      "plum4"             => 219,
      "gold3"             => 220,
      "lightgoldenrod3"   => 221,
      "lightgoldenrod4"   => 222,
      "navajowhite2"      => 223,
      "mistyrose2"        => 224,
      "thistle2"          => 225,
      "yellow6"           => 226,
      "lightgoldenrod5"   => 227,
      "khaki2"            => 228,
      "wheat2"            => 229,
      "cornsilk"          => 230,
      "grey7"             => 231,
      "grey8"             => 232,
      "grey9"             => 233,
      "grey10"            => 234,
      "grey11"            => 235,
      "grey12"            => 236,
      "grey13"            => 237,
      "grey14"            => 238,
      "grey15"            => 239,
      "grey16"            => 240,
      "grey17"            => 241,
      "grey18"            => 242,
      "grey19"            => 243,
      "grey20"            => 244,
      "grey21"            => 245,
      "grey22"            => 246,
      "grey23"            => 247,
      "grey24"            => 248,
      "grey25"            => 249,
      "grey26"            => 250,
      "grey27"            => 251,
      "grey28"            => 252,
      "grey29"            => 253,
      "grey30"            => 254,
      "grey31"            => 255,
    }

    # Mapping of default hex codes to colour names (minus duplicate hexes)
    HEXES = {
      0x000000 => "black",
      0x800000 => "maroon",
      0x008000 => "green",
      0x808000 => "olive",
      0x000080 => "navy",
      0x800080 => "purple",
      0x008080 => "teal",
      0xc0c0c0 => "silver",
      0x808080 => "grey",
      0xff0000 => "red",
      0x00ff00 => "lime",
      0xffff00 => "yellow",
      0x0000ff => "blue",
      0xff00ff => "fuchsia",
      0x00ffff => "aqua",
      0xffffff => "white",
      0x000000 => "grey1",
      0x00005f => "navyblue",
      0x000087 => "darkblue",
      0x0000af => "blue1",
      0x0000d7 => "blue2",
      0x0000ff => "blue3",
      0x005f00 => "darkgreen",
      0x005f5f => "deepskyblue1",
      0x005f87 => "deepskyblue2",
      0x005faf => "deepskyblue3",
      0x005fd7 => "dodgerblue1",
      0x005fff => "dodgerblue2",
      0x008700 => "green1",
      0x00875f => "springgreen1",
      0x008787 => "turquoise1",
      0x0087af => "deepskyblue4",
      0x0087d7 => "deepskyblue5",
      0x0087ff => "dodgerblue3",
      0x00af00 => "green2",
      0x00af5f => "springgreen2",
      0x00af87 => "darkcyan",
      0x00afaf => "lightseagreen",
      0x00afd7 => "deepskyblue6",
      0x00afff => "deepskyblue7",
      0x00d700 => "green3",
      0x00d75f => "springgreen3",
      0x00d787 => "springgreen4",
      0x00d7af => "cyan1",
      0x00d7d7 => "darkturquoise",
      0x00d7ff => "turquoise2",
      0x00ff00 => "green4",
      0x00ff5f => "springgreen5",
      0x00ff87 => "springgreen6",
      0x00ffaf => "mediumspringgreen",
      0x00ffd7 => "cyan2",
      0x00ffff => "cyan3",
      0x5f0000 => "darkred1",
      0x5f005f => "deeppink1",
      0x5f0087 => "purple1",
      0x5f00af => "purple2",
      0x5f00d7 => "purple3",
      0x5f00ff => "blueviolet",
      0x5f5f00 => "orange1",
      0x5f5f5f => "grey2",
      0x5f5f87 => "mediumpurple1",
      0x5f5faf => "slateblue1",
      0x5f5fd7 => "slateblue2",
      0x5f5fff => "royalblue",
      0x5f8700 => "chartreuse1",
      0x5f875f => "darkseagreen1",
      0x5f8787 => "paleturquoise1",
      0x5f87af => "steelblue1",
      0x5f87d7 => "steelblue2",
      0x5f87ff => "cornflowerblue",
      0x5faf00 => "chartreuse2",
      0x5faf5f => "darkseagreen2",
      0x5faf87 => "cadetblue1",
      0x5fafaf => "cadetblue2",
      0x5fafd7 => "skyblue1",
      0x5fafff => "steelblue3",
      0x5fd700 => "chartreuse3",
      0x5fd75f => "palegreen1",
      0x5fd787 => "seagreen1",
      0x5fd7af => "aquamarine1",
      0x5fd7d7 => "mediumturquoise",
      0x5fd7ff => "steelblue4",
      0x5fff00 => "chartreuse4",
      0x5fff5f => "seagreen2",
      0x5fff87 => "seagreen3",
      0x5fffaf => "seagreen4",
      0x5fffd7 => "aquamarine2",
      0x5fffff => "darkslategray1",
      0x870000 => "darkred2",
      0x87005f => "deeppink2",
      0x870087 => "darkmagenta1",
      0x8700af => "darkmagenta2",
      0x8700d7 => "darkviolet1",
      0x8700ff => "purple4",
      0x875f00 => "orange2",
      0x875f5f => "lightpink1",
      0x875f87 => "plum1",
      0x875faf => "mediumpurple2",
      0x875fd7 => "mediumpurple3",
      0x875fff => "slateblue3",
      0x878700 => "yellow1",
      0x87875f => "wheat1",
      0x878787 => "grey3",
      0x8787af => "lightslategrey",
      0x8787d7 => "mediumpurple4",
      0x8787ff => "lightslateblue",
      0x87af00 => "yellow2",
      0x87af5f => "darkolivegreen1",
      0x87af87 => "darkseagreen3",
      0x87afaf => "lightskyblue1",
      0x87afd7 => "lightskyblue2",
      0x87afff => "skyblue2",
      0x87d700 => "chartreuse5",
      0x87d75f => "darkolivegreen2",
      0x87d787 => "palegreen2",
      0x87d7af => "darkseagreen4",
      0x87d7d7 => "darkslategray2",
      0x87d7ff => "skyblue3",
      0x87ff00 => "chartreuse6",
      0x87ff5f => "lightgreen1",
      0x87ff87 => "lightgreen2",
      0x87ffaf => "palegreen3",
      0x87ffd7 => "aquamarine3",
      0x87ffff => "darkslategray3",
      0xaf0000 => "red1",
      0xaf005f => "deeppink3",
      0xaf0087 => "mediumvioletred",
      0xaf00af => "magenta1",
      0xaf00d7 => "darkviolet2",
      0xaf00ff => "purple5",
      0xaf5f00 => "darkorange1",
      0xaf5f5f => "indianred1",
      0xaf5f87 => "hotpink1",
      0xaf5faf => "mediumorchid1",
      0xaf5fd7 => "mediumorchid2",
      0xaf5fff => "mediumpurple5",
      0xaf8700 => "darkgoldenrod",
      0xaf875f => "lightsalmon1",
      0xaf8787 => "rosybrown",
      0xaf87af => "grey4",
      0xaf87d7 => "mediumpurple6",
      0xaf87ff => "mediumpurple7",
      0xafaf00 => "gold1",
      0xafaf5f => "darkkhaki",
      0xafaf87 => "navajowhite1",
      0xafafaf => "grey5",
      0xafafd7 => "lightsteelblue1",
      0xafafff => "lightsteelblue2",
      0xafd700 => "yellow3",
      0xafd75f => "darkolivegreen3",
      0xafd787 => "darkseagreen5",
      0xafd7af => "darkseagreen6",
      0xafd7d7 => "lightcyan1",
      0xafd7ff => "lightskyblue3",
      0xafff00 => "greenyellow",
      0xafff5f => "darkolivegreen4",
      0xafff87 => "palegreen4",
      0xafffaf => "darkseagreen7",
      0xafffd7 => "darkseagreen8",
      0xafffff => "paleturquoise2",
      0xd70000 => "red2",
      0xd7005f => "deeppink4",
      0xd70087 => "deeppink5",
      0xd700af => "magenta2",
      0xd700d7 => "magenta3",
      0xd700ff => "magenta4",
      0xd75f00 => "darkorange2",
      0xd75f5f => "indianred2",
      0xd75f87 => "hotpink2",
      0xd75faf => "hotpink3",
      0xd75fd7 => "orchid1",
      0xd75fff => "mediumorchid3",
      0xd78700 => "orange3",
      0xd7875f => "lightsalmon2",
      0xd78787 => "lightpink2",
      0xd787af => "pink1",
      0xd787d7 => "plum2",
      0xd787ff => "violet",
      0xd7af00 => "gold2",
      0xd7af5f => "lightgoldenrod1",
      0xd7af87 => "tan",
      0xd7afaf => "mistyrose1",
      0xd7afd7 => "thistle1",
      0xd7afff => "plum3",
      0xd7d700 => "yellow4",
      0xd7d75f => "khaki1",
      0xd7d787 => "lightgoldenrod2",
      0xd7d7af => "lightyellow",
      0xd7d7d7 => "grey6",
      0xd7d7ff => "lightsteelblue3",
      0xd7ff00 => "yellow5",
      0xd7ff5f => "darkolivegreen5",
      0xd7ff87 => "darkolivegreen6",
      0xd7ffaf => "darkseagreen9",
      0xd7ffd7 => "honeydew",
      0xd7ffff => "lightcyan2",
      0xff0000 => "red3",
      0xff005f => "deeppink6",
      0xff0087 => "deeppink7",
      0xff00af => "deeppink8",
      0xff00d7 => "magenta5",
      0xff00ff => "magenta6",
      0xff5f00 => "orangered",
      0xff5f5f => "indianred3",
      0xff5f87 => "indianred4",
      0xff5faf => "hotpink4",
      0xff5fd7 => "hotpink5",
      0xff5fff => "mediumorchid4",
      0xff8700 => "darkorange3",
      0xff875f => "salmon",
      0xff8787 => "lightcoral",
      0xff87af => "palevioletred",
      0xff87d7 => "orchid2",
      0xff87ff => "orchid3",
      0xffaf00 => "orange4",
      0xffaf5f => "sandybrown",
      0xffaf87 => "lightsalmon3",
      0xffafaf => "lightpink3",
      0xffafd7 => "pink2",
      0xffafff => "plum4",
      0xffd700 => "gold3",
      0xffd75f => "lightgoldenrod3",
      0xffd787 => "lightgoldenrod4",
      0xffd7af => "navajowhite2",
      0xffd7d7 => "mistyrose2",
      0xffd7ff => "thistle2",
      0xffff00 => "yellow6",
      0xffff5f => "lightgoldenrod5",
      0xffff87 => "khaki2",
      0xffffaf => "wheat2",
      0xffffd7 => "cornsilk",
      0xffffff => "grey7",
      0x080808 => "grey8",
      0x121212 => "grey9",
      0x1c1c1c => "grey10",
      0x262626 => "grey11",
      0x303030 => "grey12",
      0x3a3a3a => "grey13",
      0x444444 => "grey14",
      0x4e4e4e => "grey15",
      0x585858 => "grey16",
      0x626262 => "grey17",
      0x6c6c6c => "grey18",
      0x767676 => "grey19",
      0x808080 => "grey20",
      0x8a8a8a => "grey21",
      0x949494 => "grey22",
      0x9e9e9e => "grey23",
      0xa8a8a8 => "grey24",
      0xb2b2b2 => "grey25",
      0xbcbcbc => "grey26",
      0xc6c6c6 => "grey27",
      0xd0d0d0 => "grey28",
      0xdadada => "grey29",
      0xe4e4e4 => "grey30",
      0xeeeeee => "grey31",
    }
  end
end
