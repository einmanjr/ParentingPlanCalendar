//
//  ViewController.swift
//  ParentingPlanCalendar
//
//  Created by Michael Einman on 5/3/21.
//
import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {

    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        calendar.dataSource = self
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }
    
    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, titleDefaultColorFor date: Date) -> UIColor? {
       
        //Remove timeStamp from date
        if date.removeTimeStamp!.compare(Date().removeTimeStamp!) == .orderedAscending {
       
           return .green
       
        }else if date.removeTimeStamp!.compare(Date().removeTimeStamp!) == .orderedDescending{
       
           return .red
       
        } else {
       
           return .black

        }
               
     }
}

extension Date {

    public var removeTimeStamp : Date? {
        guard let date = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month, .day], from: self)) else {
         return nil
        }
        return date
    }
}
