//
//  Word_Length_3.swift
//  test game
//
//  Created by Reddy Kitaan on 21/5/22.
//

import SwiftUI

struct W3{
    static let Words3 = ["ace",
                                "act",
                                "add",
                                "age",
                                "ago",
                                "aid",
                                "aim",
                                "air",
                                "all",
                                "alt",
                                "and",
                                "ant",
                                "any",
                                "ape",
                                "app",
                                "arc",
                                "are",
                                "arm",
                                "art",
                                "ash",
                                "ask",
                                "ass",
                                "ate",
                                "awe",
                                "axe",
                                "bad",
                                "bag",
                                "ban",
                                "bar",
                                "bat",
                                "bay",
                                "bed",
                                "bee",
                                "beg",
                                "ben",
                                "bet",
                                "bid",
                                "big",
                                "bin",
                                "bio",
                                "bit",
                                "bob",
                                "boo",
                                "bow",
                                "box",
                                "boy",
                                "bra",
                                "bud",
                                "bug",
                                "bum",
                                "bun",
                                "bus",
                                "but",
                                "buy",
                                "bye",
                                "cab",
                                "can",
                                "cap",
                                "car",
                                "cat",
                                "cob",
                                "cod",
                                "con",
                                "cop",
                                "cow",
                                "cry",
                                "cub",
                                "cue",
                                "cup",
                                "cut",
                                "dab",
                                "dad",
                                "dam",
                                "day",
                                "den",
                                "did",
                                "die",
                                "dig",
                                "dim",
                                "dip",
                                "dog",
                                "dot",
                                "dry",
                                "due",
                                "dug",
                                "duo",
                                "dye",
                                "ear",
                                "eat",
                                "egg",
                                "ego",
                                "elf",
                                "emu",
                                "end",
                                "era",
                                "eye",
                                "fan",
                                "far",
                                "fat",
                                "fax",
                                "fed",
                                "fee",
                                "few",
                                "fig",
                                "fin",
                                "fit",
                                "fix",
                                "flu",
                                "fly",
                                "foe",
                                "fog",
                                "fox",
                                "fry",
                                "fun",
                                "fur",
                                "gap",
                                "gas",
                                "gay",
                                "gel",
                                "gem",
                                "get",
                                "gig",
                                "god",
                                "got",
                                "gum",
                                "gun",
                                "gut",
                                "guy",
                                "gym",
                                "had",
                                "ham",
                                "has",
                                "hat",
                                "hay",
                                "hem",
                                "hen",
                                "her",
                                "hey",
                                "hid",
                                "him",
                                "hip",
                                "his",
                                "hit",
                                "hop",
                                "hot",
                                "how",
                                "hub",
                                "hue",
                                "hug",
                                "hum",
                                "hut",
                                "ice",
                                "icy",
                                "ill",
                                "ink",
                                "jam",
                                "jar",
                                "jaw",
                                "jet",
                                "job",
                                "jog",
                                "joy",
                                "jug",
                                "ken",
                                "key",
                                "kid",
                                "kit",
                                "lab",
                                "lad",
                                "lag",
                                "lap",
                                "law",
                                "lay",
                                "leg",
                                "let",
                                "lid",
                                "lie",
                                "lip",
                                "lit",
                                "log",
                                "lot",
                                "low",
                                "mad",
                                "man",
                                "map",
                                "mat",
                                "max",
                                "may",
                                "mid",
                                "mix",
                                "mob",
                                "mod",
                                "mom",
                                "mop",
                                "mud",
                                "mug",
                                "mum",
                                "nap",
                                "net",
                                "new",
                                "nip",
                                "nod",
                                "not",
                                "now",
                                "nun",
                                "nut",
                                "oak",
                                "odd",
                                "off",
                                "oil",
                                "old",
                                "one",
                                "our",
                                "out",
                                "owe",
                                "owl",
                                "own",
                                "pad",
                                "pan",
                                "par",
                                "pas",
                                "pat",
                                "paw",
                                "pay",
                                "pea",
                                "peg",
                                "pen",
                                "pep",
                                "pet",
                                "pic",
                                "pie",
                                "pig",
                                "pin",
                                "pit",
                                "ply",
                                "pod",
                                "pop",
                                "pot",
                                "pro",
                                "pub",
                                "put",
                                "rad",
                                "rag",
                                "ram",
                                "ran",
                                "rap",
                                "rat",
                                "raw",
                                "ray",
                                "red",
                                "rep",
                                "rib",
                                "rig",
                                "rim",
                                "rip",
                                "rob",
                                "rod",
                                "rot",
                                "row",
                                "rub",
                                "rug",
                                "rum",
                                "run",
                                "sac",
                                "sad",
                                "sag",
                                "sap",
                                "sat",
                                "saw",
                                "say",
                                "sea",
                                "see",
                                "set",
                                "sex",
                                "she",
                                "shy",
                                "sin",
                                "sip",
                                "sis",
                                "sit",
                                "six",
                                "ski",
                                "sky",
                                "sly",
                                "son",
                                "sow",
                                "soy",
                                "spa",
                                "spy",
                                "sub",
                                "sue",
                                "sum",
                                "sun",
                                "tab",
                                "tag",
                                "tan",
                                "tap",
                                "tar",
                                "tax",
                                "tea",
                                "ten",
                                "the",
                                "tie",
                                "tin",
                                "tip",
                                "too",
                                "top",
                                "tow",
                                "toy",
                                "try",
                                "tub",
                                "tug",
                                "two",
                                "use",
                                "van",
                                "vet",
                                "via",
                                "vow",
                                "wan",
                                "war",
                                "was",
                                "wax",
                                "way",
                                "web",
                                "wee",
                                "wet",
                                "who",
                                "why",
                                "wig",
                                "win",
                                "won",
                                "wow",
                                "yes",
                                "yet",
                                "you",
                                "zip",
                                "zoo"]
}



























struct Word_Length_3: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Word_Length_3_Previews: PreviewProvider {
    static var previews: some View {
        Word_Length_3()
    }
}
