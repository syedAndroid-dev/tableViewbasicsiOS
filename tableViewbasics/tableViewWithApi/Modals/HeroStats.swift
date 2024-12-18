//
//  HeroStats.swift
//  tableViewbasics
//
//  Created by Syed on 20/12/24.
//


struct HeroStats : Codable{
    let id : Int
    let name : String
    let primaryAttr : String
    let attackType : String
    let roles : [String]
    let image : String
    let icon : String
    let baseHealth : Int
    let basehealthRegen : Float?
    let baseMana : Int
    let baseManaRegen : Float?
    let baseArmor : Int
    let baseMr : Int
    let baseAttackMin : Int
    let baseAttackMax : Int
    let baseStr : Int
    let baseAgi : Int
    let baseInt : Int
    let strGain : Float
    let agiGain : Float
    let intGain : Float
    let attackRange : Int
    let projectileSpeed : Int
    let attackRate : Float
    let baseAttackTime : Int
    let attackPoint : Float
    let moveSpeed : Int
    let turnRate : Float?
    let cmEnabled : Bool
    let legs : Int
    let dayVision : Int
    let nightVision : Int
    let localizedName : String
    let onePick : Int
    let twoPick : Int
    let threePick : Int
    let fourPick : Int
    let fivePick : Int
    let sixPick : Int
    let sevenPick : Int
    let eightPick : Int
    let oneWin : Int
    let twoWin : Int
    let threeWin : Int
    let fourWin : Int
    let fiveWin : Int
    let sixWin : Int
    let sevenWin: Int
    let eightWin : Int
    let turboPicks : Int
    let turboPicksTrend : [Int]
    let turboWins : Int?
    let turboWinsTrend : [Int]
    let proPick : Int
    let proWin : Int
    let proBan : Int
    let pubPick : Int
    let pubWin : Int
    let pubPickTrend : [Int]
    let pubWinTrend : [Int]
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case primaryAttr = "primary_attr"
        case attackType = "attack_type"
        case roles = "roles"
        case image = "img"
        case icon = "icon"
        case baseHealth = "base_health"
        case basehealthRegen = "base_health_regen"
        case baseMana = "base_mana"
        case baseManaRegen = "base_mana_regen"
        case baseArmor = "base_armor"
        case baseMr = "base_mr"
        case baseAttackMin = "base_attack_min"
        case baseAttackMax = "base_attack_max"
        case baseStr = "base_str"
        case baseAgi = "base_agi"
        case baseInt = "base_int"
        case strGain = "str_gain"
        case agiGain = "agi_gain"
        case intGain = "int_gain"
        case attackRange = "attack_range"
        case projectileSpeed = "projectile_speed"
        case attackRate = "attack_rate"
        case baseAttackTime = "base_attack_time"
        case attackPoint = "attack_point"
        case moveSpeed = "move_speed"
        case turnRate = "turn_rate"
        case cmEnabled = "cm_enabled"
        case legs = "legs"
        case dayVision = "day_vision"
        case nightVision = "night_vision"
        case localizedName = "localized_name"
        case onePick = "1_pick"
        case oneWin = "1_win"
        case twoPick = "2_pick"
        case threePick = "3_pick"
        case fourPick = "4_pick"
        case fivePick = "5_pick"
        case sixPick = "6_pick"
        case sevenPick = "7_pick"
        case eightPick = "8_pick"
        case twoWin = "2_win"
        case threeWin = "3_win"
        case fourWin = "4_win"
        case fiveWin = "5_win"
        case sixWin = "6_win"
        case sevenWin = "7_win"
        case eightWin = "8_win"
        case turboPicks = "turbo_picks"
        case turboPicksTrend = "turbo_picks_trend"
        case turboWins = "turboWins"
        case turboWinsTrend = "turbo_wins_trend"
        case proPick = "pro_pick"
        case proWin = "pro_win"
        case proBan = "pro_ban"
        case pubPick = "pub_pick"
        case pubWin = "pub_win"
        case pubPickTrend = "pub_pick_trend"
        case pubWinTrend = "pub_win_trend"
        
    }
}


