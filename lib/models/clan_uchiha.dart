// To parse this JSON data, do
//
//     final clanUchiha = clanUchihaFromMap(jsonString);

import 'dart:convert';

class ClanUchiha {
  
    ClanUchiha({
      
        required this.the1Name,
        required this.the2Appearance,
        required this.the3Family,
        required this.the4Occupation,
        required this.the5Nickname,
        required this.the4Team,
        required this.the5Occupation,
        required this.the6Occupation,
        required this.the5NickName,
        required this.the3Occupation,
        required this.the4Nickname,
        
    });

    String the1Name;
    String the2Appearance;
    The3Family the3Family;
    String the4Occupation;
    String the5Nickname;
    String the4Team;
    String the5Occupation;
    String the6Occupation;
    String the5NickName;
    String the3Occupation;
    String the4Nickname;

    factory ClanUchiha.fromJson(String str) => ClanUchiha.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ClanUchiha.fromMap(Map<String, dynamic> json) => ClanUchiha(
      
        the1Name      : json["1. Name"],
        the2Appearance: json["2. Appearance"],
        the3Family    :  The3Family.fromMap(json["3. Family"]),
        the4Occupation: json["4. Occupation"] ? null : json["4. Occupation"],
        the5Nickname  : json["5. Nickname"]   ? null : json["5. Nickname"],
        the4Team      : json["4. Team"]       ? null : json["4. Team"],
        the5Occupation: json["5. Occupation"] ? null : json["5. Occupation"],
        the6Occupation: json["6. Occupation"] ? null : json["6. Occupation"],
        the5NickName  : json["5. NickName"]   ? null : json["5. NickName"],
        the3Occupation: json["3. Occupation"] ? null : json["3. Occupation"],
        the4Nickname  : json["4. Nickname"]   ? null : json["4. Nickname"],
        
    );

    Map<String, dynamic> toMap() => {
      
        "1. Name"      : the1Name,
        "2. Appearance": the2Appearance,
        "3. Family"    : the3Family.toMap(),
        "4. Occupation": the4Occupation,
        "5. Nickname"  : the5Nickname,
        "4. Team"      :  the4Team,
        "5. Occupation":  the5Occupation,
        "6. Occupation":  the6Occupation,
        "5. NickName"  :  the5NickName,
        "3. Occupation":  the3Occupation,
        "4. Nickname"  :  the4Nickname,
        
    };
}

class The3Family {
  
    The3Family({
      
      required  this.brother,
      required  this.niece,
      required  this.mother,
      required  this.father,
      required  this.wife,
      required  this.daughter,
      required  this.husband,
      required  this.grandDaughter,
      required  this.son,
      required  this.uncle,
      required  this.grandFather,
      required  this.grandMother,
      
    });

    String brother;
    String niece;
    String mother;
    String father;
    String wife;
    String daughter;
    String husband;
    String grandDaughter;
    String son;
    String uncle;
    String grandFather;
    String grandMother;

    factory The3Family.fromJson(String str) => The3Family.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory The3Family.fromMap(Map<String, dynamic> json) => The3Family(
      
        brother      : json["Brother"]  ? null : json["Brother"],
        niece        : json["Niece"]    ? null : json["Niece"],
        mother       : json["Mother"]   ? null : json["Mother"],
        father       : json["Father"]   ? null : json["Father"],
        wife         : json["Wife"]     ? null : json["Wife"],
        daughter     : json["Daughter"] ? null : json["Daughter"],
        husband      : json["Husband"]  ? null : json["Husband"],
        grandDaughter: json["GrandDaughter"] ? null : json["GrandDaughter"],
        son          : json["Son"]           ? null : json["Son"],
        uncle        : json["Uncle"]         ? null : json["Uncle"],
        grandFather  : json["GrandFather"]   ? null : json["GrandFather"],
        grandMother  : json["GrandMother"]   ? null : json["GrandMother"],
    );

    Map<String, dynamic> toMap() => {
      
        "Brother"      : brother,
        "Niece"        : niece,
        "Mother"       : mother,
        "Father"       : father,
        "Wife"         : wife,
        "Daughter"     : daughter,
        "Husband"      : husband,
        "GrandDaughter": grandDaughter,
        "Son"          : son,
        "Uncle"        : uncle,
        "GrandFather"  :  grandFather,
        "GrandMother"  :  grandMother,
    };
}
