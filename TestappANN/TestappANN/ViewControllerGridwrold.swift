//
//  ViewControllerGridwrold.swift
//  TestappANN
//
//  Created by ZemoF on 5/22/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import UIKit
var qval00:[Float]=[0.0,0.0,0.0,0.0]
var qval01:[Float]=[0.0,0.0,0.0,0.0]
var qval02:[Float]=[0.0,0.0,0.0,0.0]
var qval03:[Float]=[0.0,0.0,0.0,0.0]
var qval04:[Float]=[0.0,0.0,0.0,0.0]
var qval05:[Float]=[0.0,0.0,0.0,0.0]
var qval10:[Float]=[0.0,0.0,0.0,0.0]
var qval11:[Float]=[0.0,0.0,0.0,0.0]
var qval12:[Float]=[0.0,0.0,0.0,0.0]
var qval13:[Float]=[0.0,0.0,0.0,0.0]
var qval14:[Float]=[0.0,0.0,0.0,0.0]
var qval15:[Float]=[0.0,0.0,0.0,0.0]
var qval20:[Float]=[0.0,0.0,0.0,0.0]
var qval21:[Float]=[0.0,0.0,0.0,0.0]
var qval22:[Float]=[0.0,0.0,0.0,0.0]
var qval23:[Float]=[0.0,0.0,0.0,0.0]
var qval24:[Float]=[0.0,0.0,0.0,0.0]
var qval25:[Float]=[0.0,0.0,0.0,0.0]
var qval30:[Float]=[0.0,0.0,0.0,0.0]
var qval31:[Float]=[0.0,0.0,0.0,0.0]
var qval32:[Float]=[0.0,0.0,0.0,0.0]
var qval33:[Float]=[0.0,0.0,0.0,0.0]
var qval34:[Float]=[0.0,0.0,0.0,0.0]
var qval35:[Float]=[0.0,0.0,0.0,0.0]
var qval40:[Float]=[0.0,0.0,0.0,0.0]
var qval41:[Float]=[0.0,0.0,0.0,0.0]
var qval42:[Float]=[0.0,0.0,0.0,0.0]
var qval43:[Float]=[0.0,0.0,0.0,0.0]
var qval44:[Float]=[0.0,0.0,0.0,0.0]
var qval45:[Float]=[0.0,0.0,0.0,0.0]

class ViewControllerGridwrold: UIViewController {
    let wallColor=UIColor.black
    let goalTile=UIColor.green
    let badTile=UIColor.red
    let ai=UIColor.cyan
    let OGcolors=[UIColor.gray,UIColor.yellow]
    
    @IBOutlet weak var lblDown: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lblleft: UILabel!
    @IBOutlet weak var lblright: UILabel!
    
    @IBOutlet weak var V05: UIView!
    @IBOutlet weak var v04: UIView!
    @IBOutlet weak var V03: UIView!
    @IBOutlet weak var V02: UIView!
    @IBOutlet weak var V01: UIView!
    @IBOutlet weak var V00: UIView!
    @IBOutlet weak var V10: UIView!
    @IBOutlet weak var V20: UIView!
    @IBOutlet weak var V30: UIView!
    @IBOutlet weak var V40: UIView!
    @IBOutlet weak var V11: UIView!
    @IBOutlet weak var V21: UIView!
    @IBOutlet weak var v31: UIView!
    @IBOutlet weak var V41: UIView!
    
    @IBOutlet weak var V25: UIView!
    @IBOutlet weak var V12: UIView!
    @IBOutlet weak var V13: UIView!
    @IBOutlet weak var V14: UIView!
    @IBOutlet weak var V15: UIView!
    @IBOutlet weak var V22: UIView!
    @IBOutlet weak var V23: UIView!
    @IBOutlet weak var V43: UIView!
    @IBOutlet weak var V32: UIView!
    @IBOutlet weak var V42: UIView!
    @IBOutlet weak var V45: UIView!
    @IBOutlet weak var V34: UIView!
    @IBOutlet weak var V35: UIView!
    @IBOutlet weak var V24: UIView!
    
    @IBOutlet weak var V33: UIView!
    @IBOutlet weak var V44: UIView!
    let gridworld:[[[Character]]] = [
        [[" "," "," "," "," ","N"],//cliff1 0
        ["S"," "," "," ","*","N"],
        ["-","-", "-", "-","-","N"],
        ["N","N","N","N","N","N"],
        ["N","N","N","N","N","N"]],
        [[" "," "," "," "," ","N"],//cliff2 1
        ["*","S"," "," ","*","N"],
        ["-","-", "-", "-", "-","N"],
        ["N","N","N","N","N","N"],
        ["N","N","N","N","N","N"]],
        [[" "," "," "," "," ","N"],//discount 2
        [" ","#"," "," "," ","N"],
        [" ","#", "*","#", "*","N"],
        ["S"," "," "," "," ","N"],
        ["-","-", "-", "-", "-","N"]],
        [[ "#","-", "-", "-", "-", "-", "#"],//bridge 3
        ["*", "S"," "," "," ","*","*"],
        ["#","-", "-", "-", "-", "-", "#"],
        ["N","N","N","N","N","N"],
        ["N","N","N","N","N","N"]],
        [[" "," "," ","*","N","N","N"],//book 4
        [" ","#"," ","-","N","N"],
        ["S"," "," "," ","N","N"],
        ["N","N","N","N","N","N"],
        ["N","N","N","N","N","N"]],
        [[" "," "," ","*","N","N"],//maze
        ["#","#"," ","#","N","N"],
        [" ","#"," "," ","N","N"],
        [" ","#","#"," ","N","N"],
        ["S"," "," "," ","N","N"]]]
    var currentCordinates=[0,0]
    var maximumX=0
    var maximumY=0
    
   
    let gamma:Float=1.0
    override func viewDidLoad() {
        super.viewDidLoad()
        Setgrid(Myindex: myPassedInfo[2])
    
        lbl.text=String(myPassedInfo[2])+"  "+send
     //   lbl.text=String(Qvalues[0])
       
        
        // Do any additional setup after loading the view.
    }
    

    
 
    func Setgrid(Myindex:Int){
        
        
        switch Myindex {
        case 0:
            maximumX=4
            maximumY=2
            
        case 1:
            maximumX=4
            maximumY=2
        //case 2:
        //case 3:
        case 4:
            maximumX=2
            maximumY=3
            currentCordinates=[0,2]
            qval03=[1.0,1.0,1.0,1.0]
            qval13=[-1.0,-1.0,-1.0,-1.0]
      //  case 5:
        //    <#code#>
        default:
            maximumX=0
            maximumY=0
        }
        for n in 0...4 {
            for j in 0...5 {
                if(gridworld[Myindex][n][j]=="N"){
                    corectTile(holdRow:n,holdColum:j,HoldAction:0)
                }else if(gridworld[Myindex][n][j]==" "){
                    corectTile(holdRow:n,holdColum:j,HoldAction:1)
                }else if(gridworld[Myindex][n][j]=="S"){
                    corectTile(holdRow:n,holdColum:j,HoldAction:2)
                }else if(gridworld[Myindex][n][j]==("-")){
                    corectTile(holdRow:n,holdColum:j,HoldAction:3)
                }else if(gridworld[Myindex][n][j]==("*")){
                    corectTile(holdRow:n,holdColum:j,HoldAction:4)
                }else if(gridworld[Myindex][n][j]==("#")){
                    corectTile(holdRow:n,holdColum:j,HoldAction:5)
                }
            }
            
        }
       
        
        
    }
    func wallcheck(x:Int,y:Int,gridIndex:Int)->Bool{
        if(gridworld[gridIndex][x][y]=="#"){
            return true
        }else{
            return false
        }
    }
    
    
    
    
    func move(MyInput:Int){
        //0=up
        //1=down
        //2=right
        //3=left
        if((arc4random()%10)==0){
            print("Incorect")
            switch MyInput {
            case 1:
                if arc4random()%2==0{
                    if currentCordinates[1]==maximumX{
                    }else if(wallcheck(x: currentCordinates[1]+1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                        
                    }else{
                        
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[1]+=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }else{
                    if currentCordinates[1]==0{
                    }else if(wallcheck(x: currentCordinates[1]-1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                        
                    }else{
                        
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[1]-=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }
 
               
            case 2:
                if((arc4random()%2)==0){
                    if currentCordinates[0]==0{
                        
                    }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]-1, gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[0]-=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }else{
                    if currentCordinates[0]==maximumY{
                        
                    }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]+1, gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[0]+=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }
            case 3:
                if((arc4random()%2)==0){
                    if currentCordinates[0]==0{
                        
                    }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]-1, gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[0]-=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }else{
                    if currentCordinates[0]==maximumY{
                        
                    }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]+1, gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[0]+=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }
                
            case 0:
                if((arc4random()%2)==0){
                    if currentCordinates[1]==0{
                        
                    }else if(wallcheck(x: currentCordinates[1]-1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[1]-=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                    
                }else{
                    if currentCordinates[1]==maximumX{
                        
                    }else if(wallcheck(x: currentCordinates[1]+1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                        
                    }else{
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                        currentCordinates[1]+=1
                        corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                    }
                }
               
                default:
                    lbl.text="FUCK"
                }
        }else{//Correct action taken
            print("Correct")
            switch MyInput {
            case 1:
                if currentCordinates[0]==maximumY{
                }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]+1, gridIndex: myPassedInfo[2])){
                    
                }else{
                    
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                    currentCordinates[0]+=1
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                }
            case 2:
                if currentCordinates[1]==maximumX{
                    
                }else if(wallcheck(x: currentCordinates[1]+1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                    
                }else{
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                    currentCordinates[1]+=1
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                }
            case 3:
                if currentCordinates[1]==0{
                    
                }else if(wallcheck(x: currentCordinates[1]-1, y: currentCordinates[0], gridIndex: myPassedInfo[2])){
                    
                }else{
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                    currentCordinates[1]-=1
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                }
            case 0:
                if currentCordinates[0]==0{
                    
                }else if(wallcheck(x: currentCordinates[1], y: currentCordinates[0]-1, gridIndex: myPassedInfo[2])){
                    
                }else{
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 1)//OGColors
                    currentCordinates[0]-=1
                    corectTile(holdRow: currentCordinates[1], holdColum: currentCordinates[0], HoldAction: 2)//curenttile
                }
                
            default:
                lbl.text="FUCK"
            }
        }
        
        
    }
    func corectTile(holdRow:Int,holdColum:Int,HoldAction:Int){
        switch holdRow {
        case 0:
            switch holdColum {
            case 0:
                switch HoldAction {
                case 0:
                    V00.isHidden=true
                case 1:
                    V00.backgroundColor=OGcolors[0]
                case 2:
                    V00.backgroundColor=ai
                case 3:
                    V00.backgroundColor=badTile
                case 4:
                    V00.backgroundColor=goalTile
                case 5:
                    V00.backgroundColor=wallColor
                
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 1:
                switch HoldAction {
                case 0:
                    V01.isHidden=true
                case 1:
                    V01.backgroundColor=OGcolors[1]
                case 2:
                    V01.backgroundColor=ai
                case 3:
                    V01.backgroundColor=badTile
                case 4:
                    V01.backgroundColor=goalTile
                case 5:
                    V01.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 2:
                switch HoldAction {
                case 0:
                    V02.isHidden=true
                case 1:
                    V02.backgroundColor=OGcolors[0]
                case 2:
                    V02.backgroundColor=ai
                case 3:
                    V02.backgroundColor=badTile
                case 4:
                    V02.backgroundColor=goalTile
                case 5:
                    V02.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 3:
                switch HoldAction {
                case 0:
                    V03.isHidden=true
                case 1:
                    V03.backgroundColor=OGcolors[1]
                case 2:
                    V03.backgroundColor=ai
                case 3:
                    V03.backgroundColor=badTile
                case 4:
                    V03.backgroundColor=goalTile
                case 5:
                    V03.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 4:
                switch HoldAction {
                case 0:
                    v04.isHidden=true
                case 1:
                    v04.backgroundColor=OGcolors[0]
                case 2:
                    v04.backgroundColor=ai
                case 3:
                    v04.backgroundColor=badTile
                case 4:
                    v04.backgroundColor=goalTile
                case 5:
                    v04.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 5:
                switch HoldAction {
                case 0:
                    V05.isHidden=true
                case 1:
                    V05.backgroundColor=OGcolors[1]
                case 2:
                    V05.backgroundColor=ai
                case 3:
                    V05.backgroundColor=badTile
                case 4:
                    V05.backgroundColor=goalTile
                case 5:
                    V05.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            default:
                lbl.backgroundColor=UIColor.green
            }
        case 1:
            switch holdColum {
            case 0:
                switch HoldAction {
                case 0:
                    V10.isHidden=true
                case 1:
                    V10.backgroundColor=OGcolors[1]
                case 2:
                    V10.backgroundColor=ai
                case 3:
                    V10.backgroundColor=badTile
                case 4:
                    V10.backgroundColor=goalTile
                case 5:
                    V10.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 1:
                switch HoldAction {
                case 0:
                    V11.isHidden=true
                case 1:
                    V11.backgroundColor=OGcolors[0]
                case 2:
                    V11.backgroundColor=ai
                case 3:
                    V11.backgroundColor=badTile
                case 4:
                    V11.backgroundColor=goalTile
                case 5:
                    V11.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 2:
                switch HoldAction {
                case 0:
                    V12.isHidden=true
                case 1:
                    V12.backgroundColor=OGcolors[1]
                case 2:
                    V12.backgroundColor=ai
                case 3:
                    V12.backgroundColor=badTile
                case 4:
                    V12.backgroundColor=goalTile
                case 5:
                    V12.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 3:
                switch HoldAction {
                case 0:
                    V13.isHidden=true
                case 1:
                    V13.backgroundColor=OGcolors[0]
                case 2:
                    V13.backgroundColor=ai
                case 3:
                    V13.backgroundColor=badTile
                case 4:
                    V13.backgroundColor=goalTile
                case 5:
                    V13.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 4:
                switch HoldAction {
                case 0:
                    V14.isHidden=true
                case 1:
                    V14.backgroundColor=OGcolors[1]
                case 2:
                    V14.backgroundColor=ai
                case 3:
                    V14.backgroundColor=badTile
                case 4:
                    V14.backgroundColor=goalTile
                case 5:
                    V14.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 5:
                switch HoldAction {
                case 0:
                    V15.isHidden=true
                case 1:
                    V15.backgroundColor=OGcolors[0]
                case 2:
                    V15.backgroundColor=ai
                case 3:
                    V15.backgroundColor=badTile
                case 4:
                    V15.backgroundColor=goalTile
                case 5:
                    V15.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            default:
                lbl.backgroundColor=UIColor.green
            }
        case 2:
            switch holdColum {
            case 0:
                switch HoldAction {
                case 0:
                    V20.isHidden=true
                case 1:
                    V20.backgroundColor=OGcolors[0]
                case 2:
                    V20.backgroundColor=ai
                case 3:
                    V20.backgroundColor=badTile
                case 4:
                    V20.backgroundColor=goalTile
                case 5:
                    V20.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 1:
                switch HoldAction {
                case 0:
                    V21.isHidden=true
                case 1:
                    V21.backgroundColor=OGcolors[1]
                case 2:
                    V21.backgroundColor=ai
                case 3:
                    V21.backgroundColor=badTile
                case 4:
                    V21.backgroundColor=goalTile
                case 5:
                    V21.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 2:
                switch HoldAction {
                case 0:
                    V22.isHidden=true
                case 1:
                    V22.backgroundColor=OGcolors[0]
                case 2:
                    V22.backgroundColor=ai
                case 3:
                    V22.backgroundColor=badTile
                case 4:
                    V22.backgroundColor=goalTile
                case 5:
                    V22.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 3:
                switch HoldAction {
                case 0:
                    V23.isHidden=true
                case 1:
                    V23.backgroundColor=OGcolors[1]
                case 2:
                    V23.backgroundColor=ai
                case 3:
                    V23.backgroundColor=badTile
                case 4:
                    V23.backgroundColor=goalTile
                case 5:
                    V23.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 4:
                switch HoldAction {
                case 0:
                    V24.isHidden=true
                case 1:
                    V24.backgroundColor=OGcolors[0]
                case 2:
                    V24.backgroundColor=ai
                case 3:
                    V24.backgroundColor=badTile
                case 4:
                    V24.backgroundColor=goalTile
                case 5:
                    V24.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 5:
                switch HoldAction {
                case 0:
                    V25.isHidden=true
                case 1:
                    V25.backgroundColor=OGcolors[1]
                case 2:
                    V25.backgroundColor=ai
                case 3:
                    V25.backgroundColor=badTile
                case 4:
                    V25.backgroundColor=goalTile
                case 5:
                    V25.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            default:
                lbl.backgroundColor=UIColor.green
            }
        case 3:
            switch holdColum {
            case 0:
                switch HoldAction {
                case 0:
                    V30.isHidden=true
                case 1:
                    V30.backgroundColor=OGcolors[1]
                case 2:
                    V30.backgroundColor=ai
                case 3:
                    V30.backgroundColor=badTile
                case 4:
                    V30.backgroundColor=goalTile
                case 5:
                    V30.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 1:
                switch HoldAction {
                case 0:
                    v31.isHidden=true
                case 1:
                    v31.backgroundColor=OGcolors[0]
                case 2:
                    v31.backgroundColor=ai
                case 3:
                    v31.backgroundColor=badTile
                case 4:
                    v31.backgroundColor=goalTile
                case 5:
                    v31.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 2:
                switch HoldAction {
                case 0:
                    V32.isHidden=true
                case 1:
                    V32.backgroundColor=OGcolors[1]
                case 2:
                    V32.backgroundColor=ai
                case 3:
                    V32.backgroundColor=badTile
                case 4:
                    V32.backgroundColor=goalTile
                case 5:
                    V32.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 3:
                switch HoldAction {
                case 0:
                    V33.isHidden=true
                case 1:
                    V33.backgroundColor=OGcolors[0]
                case 2:
                    V33.backgroundColor=ai
                case 3:
                    V33.backgroundColor=badTile
                case 4:
                    V33.backgroundColor=goalTile
                case 5:
                    V33.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 4:
                switch HoldAction {
                case 0:
                    V34.isHidden=true
                case 1:
                    V34.backgroundColor=OGcolors[1]
                case 2:
                    V34.backgroundColor=ai
                case 3:
                    V34.backgroundColor=badTile
                case 4:
                    V34.backgroundColor=goalTile
                case 5:
                    V34.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            case 5:
                switch HoldAction {
                case 0:
                    V35.isHidden=true
                case 1:
                    V35.backgroundColor=OGcolors[0]
                case 2:
                    V35.backgroundColor=ai
                case 3:
                    V35.backgroundColor=badTile
                case 4:
                    V35.backgroundColor=goalTile
                case 5:
                    V35.backgroundColor=wallColor
                default:
                    lbl.backgroundColor=UIColor.cyan
                }
            default:
                lbl.backgroundColor=UIColor.green
            }
        case 4:
                switch holdColum {
                case 0:
                    switch HoldAction {
                    case 0:
                        V40.isHidden=true
                    case 1:
                        V40.backgroundColor=OGcolors[0]
                    case 2:
                        V40.backgroundColor=ai
                    case 3:
                        V40.backgroundColor=badTile
                    case 4:
                        V40.backgroundColor=goalTile
                    case 5:
                        V40.backgroundColor=wallColor
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                case 1:
                    switch HoldAction {
                    case 0:
                        V41.isHidden=true
                    case 1:
                        V41.backgroundColor=OGcolors[1]
                    case 2:
                        V41.backgroundColor=ai
                    case 3:
                        V41.backgroundColor=badTile
                    case 4:
                        V41.backgroundColor=goalTile
                    case 5:
                        V41.backgroundColor=wallColor
                    
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                case 2:
                    switch HoldAction {
                    case 0:
                        V42.isHidden=true
                    case 1:
                        V42.backgroundColor=OGcolors[0]
                    case 2:
                        V42.backgroundColor=ai
                    case 3:
                        V42.backgroundColor=badTile
                    case 4:
                        V42.backgroundColor=goalTile
                    case 5:
                        V42.backgroundColor=wallColor
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                case 3:
                    switch HoldAction {
                    case 0:
                        V43.isHidden=true
                    case 1:
                        V43.backgroundColor=OGcolors[1]
                    case 2:
                        V43.backgroundColor=ai
                    case 3:
                        V43.backgroundColor=badTile
                    case 4:
                        V43.backgroundColor=goalTile
                    case 5:
                        V43.backgroundColor=wallColor
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                case 4:
                    switch HoldAction {
                    case 0:
                        V44.isHidden=true
                    case 1:
                        V44.backgroundColor=OGcolors[0]
                    case 2:
                        V44.backgroundColor=ai
                    case 3:
                        V44.backgroundColor=badTile
                    case 4:
                        V44.backgroundColor=goalTile
                    case 5:
                        V44.backgroundColor=wallColor
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                case 5:
                    switch HoldAction {
                    case 0:
                        V45.isHidden=true
                    case 1:
                        V45.backgroundColor=OGcolors[1]
                    case 2:
                        V45.backgroundColor=ai
                    case 3:
                        V45.backgroundColor=badTile
                    case 4:
                        V45.backgroundColor=goalTile
                    case 5:
                        V45.backgroundColor=wallColor
                    default:
                        lbl.backgroundColor=UIColor.cyan
                    }
                default:
                    lbl.backgroundColor=UIColor.green
            }
        default:
           print(holdRow,holdColum)
           lbl.backgroundColor=UIColor.purple
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
    
    //3=up
    //2=down
    //1=right
    //0=left
    
    func checkEndConditions()->Bool{
        if(gridworld[myPassedInfo[2]][currentCordinates[1]][currentCordinates[0]]=="-"){
            print("reset")
            return true
            
        }else if(gridworld[myPassedInfo[2]][currentCordinates[1]][currentCordinates[0]]=="*"){
            print("reset")
            return true
        }else{
            return false
        }
        
    }
    @IBAction func btnUPAction(_ sender: Any) {
        //left
        move(MyInput: 0)
        updateQvalues(prevX: currentCordinates[0]+1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
        if(checkEndConditions()){
            Setgrid(Myindex: myPassedInfo[2])
        }
    }
    @IBAction func btnLeftAction(_ sender: Any) {
        //up
        move(MyInput: 3)
        updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]+1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 3)
        if(checkEndConditions()){
            Setgrid(Myindex: myPassedInfo[2])
        }
    }
    @IBAction func btnDownAction(_ sender: Any) {
        //right
         move(MyInput: 1)
         updateQvalues(prevX: currentCordinates[0]-1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 1)
       
        
         if(checkEndConditions()){
         Setgrid(Myindex: myPassedInfo[2])
         }
        
    }
    @IBAction func btnRightAction(_ sender: Any) {
        //down
         move(MyInput: 2)
         updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]-1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 2)
        
         if(checkEndConditions()){
         Setgrid(Myindex: myPassedInfo[2])
         }
  
        

    }
    
    //Q(s_t,a_t)=(1-alpha)*Q(s_t-1,a_t-1)+alpha*(r_t+gamma+maxQ(s_t+1,a))
    //Q(s_t,a_t)=newQvalue
    //alpha=learning rate
    //Q(s_t-1,a_t-1)=last Qvalue
    //maxQ(s_t+1,a)=estimate of optimal future value
    //gamma=discount factor
    //r_t=reward
    func findQvalues(x:Int,y:Int)->[Float]{
        switch x {
        case 0:
            switch y {
            case 0:
                return qval00
            case 1:
                return qval01
            case 2:
                return qval02
            case 3:
                return qval03
            case 4:
                return qval04
            case 5:
                return qval05
            default:
                return [10000,10000,10000,10000]
            }
        case 1:
            switch y {
            case 0:
                return qval10
            case 1:
                return qval11
            case 2:
                return qval12
            case 3:
                return qval13
            case 4:
                return qval14
            case 5:
                return qval15
            default:
                return [10000,10000,10000,10000]
            }
        case 2:
            switch y {
            case 0:
                return qval20
            case 1:
                return qval21
            case 2:
                return qval22
            case 3:
                return qval23
            case 4:
                return qval24
            case 5:
                return qval25
            default:
                return [10000,10000,10000,10000]
            }
        case 3:
            switch y {
            case 0:
                return qval30
            case 1:
                return qval31
            case 2:
                return qval32
            case 3:
                return qval33
            case 4:
                return qval34
            case 5:
                return qval35
            default:
                return [10000,10000,10000,10000]
            }
        case 4:
            switch y {
            case 0:
                return qval40
            case 1:
                return qval41
            case 2:
                return qval42
            case 3:
                return qval43
            case 4:
                return qval44
            case 5:
                return qval45
            default:
                return [10000,10000,10000,10000]
            }
        default:
            return [10000,10000,10000,10000]
        }
    }
    func updateQvalues(prevX:Int,prevY:Int,newX:Int,newY:Int, indexChange:Int){
         let curentQvals=findQvalues(x: newY, y: newX)
        print(curentQvals)
        switch prevY {
        case 0:
            switch prevX {
            case 0:
                qval00[indexChange] = 0.8*curentQvals.max()!
            case 1:
                qval01[indexChange] = 0.8*curentQvals.max()!
            case 2:
                qval02[indexChange] = 0.8*curentQvals.max()!
                print(qval02[indexChange])
            case 3:
                qval03[indexChange] = 0.8*curentQvals.max()!
                
            case 4:
                qval04[indexChange] = 0.8*curentQvals.max()!
            case 5:
                qval05[indexChange] = 0.8*curentQvals.max()!
            default:
                lblleft.text="notPosibleQvaluechange"
            }
        case 1:
            switch prevX {
            case 0:
                qval10[indexChange] = 0.8*curentQvals.max()!
                print(qval03[indexChange])
            case 1:
                qval11[indexChange] = 0.8*curentQvals.max()!
            case 2:
                qval12[indexChange] = 0.8*curentQvals.max()!
            case 3:
                qval13[indexChange] = 0.8*curentQvals.max()!
            case 4:
                qval14[indexChange] = 0.8*curentQvals.max()!
            case 5:
                qval15[indexChange] = 0.8*curentQvals.max()!
            default:
                 lblleft.text="notPosibleQvaluechange"
            }
        case 2:
            switch prevX {
            case 0:
                qval20[indexChange] = 0.8*curentQvals.max()!
            case 1:
                qval21[indexChange] = 0.8*curentQvals.max()!
            case 2:
                qval22[indexChange] = 0.8*curentQvals.max()!
            case 3:
                qval23[indexChange] = 0.8*curentQvals.max()!
            case 4:
                qval24[indexChange] = 0.8*curentQvals.max()!
            case 5:
                qval25[indexChange] = 0.8*curentQvals.max()!
            default:
                  lblleft.text="notPosibleQvaluechange"
            }
        case 3:
            switch prevX {
            case 0:
                 qval30[indexChange] = 0.8*curentQvals.max()!
            case 1:
                 qval31[indexChange] = 0.8*curentQvals.max()!
            case 2:
                 qval32[indexChange] = 0.8*curentQvals.max()!
            case 3:
                 qval33[indexChange] = 0.8*curentQvals.max()!
            case 4:
                 qval34[indexChange] = 0.8*curentQvals.max()!
            case 5:
                 qval35[indexChange] = 0.8*curentQvals.max()!
            default:
                  lblleft.text="notPosibleQvaluechange"
            }
        case 4:
            switch prevX {
            case 0:
                 qval40[indexChange] = 0.8*curentQvals.max()!
            case 1:
                 qval41[indexChange] = 0.8*curentQvals.max()!
            case 2:
                 qval42[indexChange] = 0.8*curentQvals.max()!
            case 3:
                 qval43[indexChange] = 0.8*curentQvals.max()!
            case 4:
                 qval44[indexChange] = 0.8*curentQvals.max()!
            case 5:
                 qval45[indexChange] = 0.8*curentQvals.max()!
            default:
                  lblleft.text="notPosibleQvaluechange"
            }
        default:
              lblleft.text="notPosibleQvaluechange1111"
        }
    }
    func moveVI(){
        
        let curentQvals=findQvalues(x: currentCordinates[0], y: currentCordinates[1])
        if(curentQvals.contains(10000)){
            lbl.text="no"
        }else{
            if(curentQvals.max()==0.0 && curentQvals.min()==0.0){
               let myhold=Int(arc4random()%4)
                switch myhold {
                case 0:
                    move(MyInput: Int(myhold))
                          updateQvalues(prevX: currentCordinates[0]+1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
                case 1:
                        move(MyInput: Int(myhold))
                          updateQvalues(prevX: currentCordinates[0]-1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
                case 2:
                        move(MyInput: Int(myhold))
                          updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]+1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
                case 3:
                        move(MyInput: Int(myhold))
                          updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]-1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
                default:
                    lbl.text="How"
                }
                
            }else if(curentQvals.max() != 0.0){
                switch curentQvals.max() {
                case curentQvals[0]:
                    move(MyInput: 0)
                    updateQvalues(prevX: currentCordinates[0]+1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 0)
                case curentQvals[1]:
                    move(MyInput: 1)
                    updateQvalues(prevX: currentCordinates[0]-1, prevY: currentCordinates[1], newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 1)
                case curentQvals[2]:
                    
                    move(MyInput: 2)
                    updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]+1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 2)
                case curentQvals[3]:
                    move(MyInput: 3)
                    updateQvalues(prevX: currentCordinates[0], prevY: currentCordinates[1]-1, newX: currentCordinates[0], newY: currentCordinates[1], indexChange: 3)
                default:
                    lblright.backgroundColor=UIColor.red
                }
            }
        }
        
        
    }
    
    @IBAction func btnRUN(_ sender: Any) {
        
        for z in 0...myPassedInfo[0] {
            Setgrid(Myindex: myPassedInfo[2])
            var isOver=false
            while !isOver {
                moveVI()
                isOver=checkEndConditions()
            }
        }
        
        
        
    }
    
    
    
    
                      
}
