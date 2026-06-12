//
//  GoalModel.swift
//  reisi
//
//  Created by Shandika David Ardiansyah on 12/06/26.
//

import Foundation
import SwiftData

@Model
final class GoalModel {
    var dailyGoal: Double
    var weeklyGoal: Double
    
    init(dailyGoal: Double, weeklyGoal: Double) {
        self.dailyGoal = dailyGoal
        self.weeklyGoal = weeklyGoal
    }
}
