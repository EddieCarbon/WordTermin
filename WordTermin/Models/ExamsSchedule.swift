//
//  ExamsModel.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 28/12/2023.
//

import Foundation


import Foundation

// MARK: - ExamSchedule
struct ExamSchedule {
    let organizationID: String?
    let isOskVehicleReservationEnabled, isRescheduleReservation: Bool?
    let category: String?
    let schedule: Schedule?
}

// MARK: - Schedule
struct Schedule {
    let scheduledDays: [ScheduledDay]?
}

// MARK: - ScheduledDay
struct ScheduledDay {
    let day: String?
    let scheduledHours: [ScheduledHour]?
}

// MARK: - ScheduledHour
struct ScheduledHour {
    let time: String?
    let theoryExams, practiceExams: [Exam]?
    let linkedExamsDto: [Any?]?
}

// MARK: - Exam
struct Exam {
    let id: String?
    let places: Int?
    let date: String?
    let amount: Int?
    let additionalInfo: NSNull?
}
