//
//  ViewController.swift
//  Simple Calculator Program
//
//  Created by MacBook Pro on 30/09/23.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var operasiKalkulator: UILabel!
    @IBOutlet weak var hasilKalkulator: UILabel!
    
    var perhitungan:String = ""
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearAll()
    }
    func clearAll()
    {
        perhitungan = " "
        operasiKalkulator.text = ""
        hasilKalkulator.text = ""
    }
    @IBAction func btnAllClear(_ sender: Any) {
        clearAll()
    }
    @IBAction func btnDelete(_ sender: Any) {
        if(!perhitungan.isEmpty)
        {
            perhitungan.removeLast()
            operasiKalkulator.text = perhitungan
        }
    }
    func tambahKeOperasi(value:String)
    {
        perhitungan = perhitungan + value
        operasiKalkulator.text = perhitungan
    }
    @IBAction func btnPersen(_ sender: Any) {
        tambahKeOperasi(value:  "%")
    }
    @IBAction func btnBagi(_ sender: Any) {
        tambahKeOperasi(value:  "/")
    }
    @IBAction func btnKali(_ sender: Any) {
        tambahKeOperasi(value:  "*")
    }
    @IBAction func btnKurang(_ sender: Any) {
        tambahKeOperasi(value:  "-")
    }
    @IBAction func btnTambah(_ sender: Any) {
        tambahKeOperasi(value:  "+")
    }
    @IBAction func btnHasil(_ sender: Any) {
        perhitungan = perhitungan.replacingOccurrences(of: "/", with: "*1.0/")
        let cekFungsiPersen = perhitungan.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: cekFungsiPersen)
        let hasil = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatHasil(result:  hasil)
        hasilKalkulator.text = resultString
    }
    func formatHasil(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func btnDesimal(_ sender: Any){
        tambahKeOperasi(value: ".")
    }
    @IBAction func btnNol(_ sender: Any) {
        tambahKeOperasi(value:  "0")
    }
    @IBAction func btnSatu(_ sender: Any) {
        tambahKeOperasi(value:  "1")
    }
    @IBAction func btnDua(_ sender: Any) {
        tambahKeOperasi(value:  "2")
    }
    @IBAction func btnTiga(_ sender: Any) {
        tambahKeOperasi(value:  "3")
    }
    @IBAction func btnEmpat(_ sender: Any) {
        tambahKeOperasi(value:  "4")
    }
    @IBAction func btnLima(_ sender: Any) {
        tambahKeOperasi(value:  "5")
    }
    @IBAction func btnEnam(_ sender: Any) {
        tambahKeOperasi(value:  "6")
    }
    @IBAction func btnTujuh(_ sender: Any) {
        tambahKeOperasi(value:  "7")
    }
    @IBAction func btnDelapan(_ sender: Any) {
        tambahKeOperasi(value:  "8")
    }
    @IBAction func btnSembilan(_ sender: Any) {
        tambahKeOperasi(value:  "9")
    }
}

