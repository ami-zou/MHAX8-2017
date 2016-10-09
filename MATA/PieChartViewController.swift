//
//  SecondViewController.swift
//  MATA
//
//  Created by Ami Zou on 10/9/16.
//  Copyright © 2016 MHacks8. All rights reserved.
//

import UIKit
import Charts

class SecondViewController: UIViewController, ChartViewDelegate {
    
    @IBOutlet weak var PieScrollView: UIScrollView!
    
    @IBOutlet weak var PieChartViewOne: PieChartView!
    @IBOutlet weak var PieChartViewTwo: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PieScrollView.contentSize.height = 800
        
        PieChartViewOne.delegate = self
        PieChartViewTwo.delegate = self
        
        let clothes = ["Jeans","Tops","T-shirts", "Jackets"]
        let unitsSold = [35.0, 17.0, 12.0, 8.0]
        setChartOne(dataPoints: clothes, values: unitsSold)
        
        let gender = ["Males","Females","Others"]
        let Percentage = [55.0,40.0,5.0]
        setChartTwo(dataPoints: gender, values: Percentage)
    }

    func setChartOne(dataPoints: [String], values: [Double]){
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count{
            let dataEntry = ChartDataEntry(x: values[i], y:Double(i))
            dataEntries.append(dataEntry)
        }
        
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "Units Sold")
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        
        PieChartViewOne.data = pieChartData
        
        var colors: [UIColor] = []
        
        for _ in 0..<dataPoints.count{
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
        
        PieChartViewOne.holeColor = nil
    }
    
    func setChartTwo(dataPoints: [String], values: [Double]){
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count{
            let dataEntry = ChartDataEntry(x: values[i], y:Double(i))
            dataEntries.append(dataEntry)
        }
        
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "Units Sold")
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        
        PieChartViewTwo.data = pieChartData
        
        var colors: [UIColor] = []
        
        for _ in 0..<dataPoints.count{
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
        
        PieChartViewTwo.holeColor = nil
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

