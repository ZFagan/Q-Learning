//
//  ViewControllerlables.swift
//  TestappANN
//
//  Created by ZemoF on 6/9/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import UIKit

class ViewControllerlables: UIViewController {

    
    
    @IBOutlet weak var smgOut: UISegmentedControl!
    @IBOutlet weak var lbl00: UILabel!
    @IBOutlet weak var lbl10: UILabel!
    @IBOutlet weak var lbl20: UILabel!
    @IBOutlet weak var lbl02: UILabel!
    @IBOutlet weak var lbl05: UILabel!
    
    @IBOutlet weak var lbl04: UILabel!
    @IBOutlet weak var lbl03: UILabel!
    @IBOutlet weak var lbl01: UILabel!
    @IBOutlet weak var lbl30: UILabel!
    @IBOutlet weak var lbl11: UILabel!
    @IBOutlet weak var lbl12: UILabel!
    @IBOutlet weak var lbl13: UILabel!
    @IBOutlet weak var lbl14: UILabel!
    @IBOutlet weak var lbl15: UILabel!
    @IBOutlet weak var lbl35: UILabel!
    @IBOutlet weak var lbl32: UILabel!
    @IBOutlet weak var lbl31: UILabel!
    @IBOutlet weak var lbl42: UILabel!
    
    @IBOutlet weak var lbl24: UILabel!
    @IBOutlet weak var lbl23: UILabel!
    @IBOutlet weak var lbl22: UILabel!
    @IBOutlet weak var lbl21: UILabel!
    @IBOutlet weak var lbl33: UILabel!
    
    @IBOutlet weak var lbl34: UILabel!
    @IBOutlet weak var lbl41: UILabel!


    @IBOutlet weak var lnl34: UILabel!
    @IBOutlet weak var lbl45: UILabel!
    @IBOutlet weak var lbl25: UILabel!
    @IBOutlet weak var lbl40: UILabel!
    
    @IBOutlet weak var lbl43: UILabel!
    @IBOutlet weak var lbl44: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func smgqvalswicher(_ sender: Any) {
        switch smgOut.selectedSegmentIndex {
        case 0:
            lbl00.text=String(qval00[0])
            lbl01.text=String(qval01[0])
            lbl02.text=String(qval02[0])
            lbl03.text=String(qval03[0])
            lbl04.text=String(qval04[0])
            lbl05.text=String(qval05[0])
            lbl10.text=String(qval10[0])
            lbl11.text=String(qval11[0])
            lbl12.text=String(qval12[0])
            lbl13.text=String(qval13[0])
            lbl14.text=String(qval14[0])
            lbl15.text=String(qval15[0])
            lbl20.text=String(qval20[0])
            lbl21.text=String(qval21[0])
            lbl22.text=String(qval22[0])
            lbl23.text=String(qval23[0])
            lbl24.text=String(qval24[0])
            lbl25.text=String(qval25[0])
            lbl30.text=String(qval30[0])
            lbl31.text=String(qval31[0])
            lbl32.text=String(qval32[0])
            lbl33.text=String(qval33[0])
            lbl34.text=String(qval34[0])
            lbl35.text=String(qval35[0])
            lbl40.text=String(qval40[0])
            lbl41.text=String(qval41[0])
            lbl42.text=String(qval42[0])
            lbl43.text=String(qval43[0])
            lbl44.text=String(qval44[0])
            lbl45.text=String(qval45[0])
        case 1:
            lbl00.text=String(qval00[1])
            lbl01.text=String(qval01[1])
            lbl02.text=String(qval02[1])
            lbl03.text=String(qval03[1])
            lbl04.text=String(qval04[1])
            lbl05.text=String(qval05[1])
            lbl10.text=String(qval10[1])
            lbl11.text=String(qval11[1])
            lbl12.text=String(qval12[1])
            lbl13.text=String(qval13[1])
            lbl14.text=String(qval14[1])
            lbl15.text=String(qval15[1])
            lbl20.text=String(qval20[1])
            lbl21.text=String(qval21[1])
            lbl22.text=String(qval22[1])
            lbl23.text=String(qval23[1])
            lbl24.text=String(qval24[1])
            lbl25.text=String(qval25[1])
            lbl30.text=String(qval30[1])
            lbl31.text=String(qval31[1])
            lbl32.text=String(qval32[1])
            lbl33.text=String(qval33[1])
            lbl34.text=String(qval34[1])
            lbl35.text=String(qval35[1])
            lbl40.text=String(qval40[1])
            lbl41.text=String(qval41[1])
            lbl42.text=String(qval42[1])
            lbl43.text=String(qval43[1])
            lbl44.text=String(qval44[1])
            lbl45.text=String(qval45[1])
        case 2:
                lbl00.text=String(qval00[2])
                lbl01.text=String(qval01[2])
                lbl02.text=String(qval02[2])
                lbl03.text=String(qval03[2])
                lbl04.text=String(qval04[2])
                lbl05.text=String(qval05[2])
                lbl10.text=String(qval10[2])
                lbl11.text=String(qval11[2])
                lbl12.text=String(qval12[2])
                lbl13.text=String(qval13[2])
                lbl14.text=String(qval14[2])
                lbl15.text=String(qval15[2])
                lbl20.text=String(qval20[2])
                lbl21.text=String(qval21[2])
                lbl22.text=String(qval22[2])
                lbl23.text=String(qval23[2])
                lbl24.text=String(qval24[2])
                lbl25.text=String(qval25[2])
                lbl30.text=String(qval30[2])
                lbl31.text=String(qval31[2])
                lbl32.text=String(qval32[2])
                lbl33.text=String(qval33[2])
                lbl34.text=String(qval34[2])
                lbl35.text=String(qval35[2])
                lbl40.text=String(qval40[2])
                lbl41.text=String(qval41[2])
                lbl42.text=String(qval42[2])
                lbl43.text=String(qval43[2])
                lbl44.text=String(qval44[2])
                lbl45.text=String(qval45[2])
        case 3:
                lbl00.text=String(qval00[3])
                lbl01.text=String(qval01[3])
                lbl02.text=String(qval02[3])
                lbl03.text=String(qval03[3])
                lbl04.text=String(qval04[3])
                lbl05.text=String(qval05[3])
                lbl10.text=String(qval10[3])
                lbl11.text=String(qval11[3])
                lbl12.text=String(qval12[3])
                lbl13.text=String(qval13[3])
                lbl14.text=String(qval14[3])
                lbl15.text=String(qval15[3])
                lbl20.text=String(qval20[3])
                lbl21.text=String(qval21[3])
                lbl22.text=String(qval22[3])
                lbl23.text=String(qval23[3])
                lbl24.text=String(qval24[3])
                lbl25.text=String(qval25[3])
                lbl30.text=String(qval30[3])
                lbl31.text=String(qval31[3])
                lbl32.text=String(qval32[3])
                lbl33.text=String(qval33[3])
                lbl34.text=String(qval34[3])
                lbl35.text=String(qval35[3])
                lbl40.text=String(qval40[3])
                lbl41.text=String(qval41[3])
                lbl42.text=String(qval42[3])
                lbl43.text=String(qval43[3])
                lbl44.text=String(qval44[3])
                lbl45.text=String(qval45[3])
        default:
            lbl00.backgroundColor=UIColor.black
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
