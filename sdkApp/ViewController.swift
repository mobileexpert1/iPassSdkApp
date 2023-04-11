//  ViewController.swift
//  sdkApp
//  Created by CS on 22/03/23.

import UIKit
import iPassSDK1

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark : 1 Genrate Token
        Apis().initJWTToken(first_name: "test11", last_name: "demo11", password: "sharma@123#", email: "rohit@gmail.com",token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk") { returnData, returnError in
            if returnError != nil {
                print("returnError",returnError)
            }else{
                print("returnData = ",returnData)
            }
        }
        
        // mark :- 2 initate Token
        Apis().callApiMethodUpdateValues("eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", "")
        { returnData, returnError in
            if returnError != nil {
                print("returnError",returnError?.user?.detail)
            }else{
                print("returnData = ",returnData)
            }
        }
        
        // mark :- 3. Eorkflow status
        Apis().getWorkFlowStatus("eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNmZjQzZTU4OTkzMzBjNzM3NGQ0YWQxIiwiZW1haWwiOiJxdzFlYTU4c2FAZ21haWwuY29tIiwiaWF0IjoxNjc3NjczNDQ1LCJleHAiOjE2Nzc2NzM0NzV9.yFkIV6CWvdryABqq2y_A1ojauSiLIVSPTRAmUOkb70I", "a13d5a76-d363-4688-925e-c336b0e78723", "") { returnResponse, returnError in
            if returnError != nil {
                if returnError?.statusParse?.detail == nil {
                    print("user",returnError?.user?.detail)
                }else{
                    print("statusParse",returnError?.statusParse?.detail)
                }
            }else{
                print("returnData = ",returnResponse)
            }
        }
        // mark :- 4. Workflow Details
        Apis().getUserDetail(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNmZjVkYWY4OTkzMzBjNzM3NGQ0YzM4IiwiZW1haWwiOiJxdzFlYWQ3c2FAZ21haWwuY29tIiwiaWF0IjoxNjc3NjgwMDQ3LCJleHAiOjE2Nzc2ODAwNzd9.7_eZOX1N8h9bah7tDyeylhVWmJehtmg2C6DLUPyIvhY", accountId: "7b532c42-abc4-4f06-a131-36cddb92a5d4", sessionId: "123asd2568987hjd254685", email: "qwer57@gmail.com", workflowExecutionId: "cc853ab2-eacd-4e32-8a2f-89d65f5f412d") { returnResponse, returnError in
            
            if returnError != nil {
                print("statusParse",returnError?.parseBody?.detail)
            }else{
                print("returnData = ",returnResponse)
            }
        }
        
        // mark :- 5. FrontImage Data
        Apis().getUserFrontImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418ae95be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        // mark :- 6. Back Image Data
        Apis().getbackImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418ae95be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // mark :- .7 Get Face Image Data
        Apis().getfaceImage(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "63a13da8-11c5-459b-ba78-57a418a5be", accountId: "667b4984-3787-4632-8064-0b2aa735203a") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // mark :- 8. Liveness Images
        Apis().getUserlivenessImage1(accessToken: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", apiAuthorizationToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjQwZjEzZDI4OTkzMzBjNzM3NGQ1ZmE0IiwiZW1haWwiOiJhQGdtYWlsLmNvbSIsImlhdCI6MTY3ODcwOTcxNCwiZXhwIjoxNjc4NzA5NzQ0fQ.crNCyB-vtwwjQf4ABTFDtYzL6ogSgL0sqNP7rNX1LME", credentialId: "546f59b54da-eddf-41b8-9cac-6605472b6688", accountId: "2e1172a6-3ea4-4d24-9a32-836fcf992bfe") { returnResponse, returnError in
            print(returnResponse, returnError)
            if returnError != nil{
                print("statusParse",returnError?.parseBody?.detail)
                print(returnError?.user?.detail)
            } else{
                print("returnData = ",returnResponse)
            }
        }
        
        // mark :- 9. Delete account data
        Apis().deletAccountData(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", accountId: "aad5ccc5-2967-4fc4-ba4a-d50ca2497c82", workflowExecutionId: "57e00317-81e3-4364-bbfb-31859320d07c", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNjNzhkOGFiNjFkNjhlZTkwMTViMDNhIiwiZW1haWwiOiJxd2VydHRlc3QyMTU1NTVAZ21haWwuY29tIiwiaWF0IjoxNjc0MDIyMjgyLCJleHAiOjE2NzQwMjIzMTJ9.Hn73bM63q5jgbgbeASkwhI5xgHStTv4J9L84nDLSWA") {  returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.user?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        // mark :- 10. Delete account
        Apis().deletAccount(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", accountId: "aad5ccc5-2967-4fc4-ba4a-d50ca2497c28", workflowExecutionId: "", authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNjNzhkOGFiNjFkNjhlZTkwMTViMDNhIiwiZW1haWwiOiJxd2VydHRlc3QyMTU1NTVAZ21haWwuY29tIiwiaWF0IjoxNjc0MDIyMjgyLCJleHAiOjE2NzQwMjIzMTJ9.Hn73bM63q5jgbgbeASkwhI5xgHStTv4J9L84nDLSWA") {  returnResponse, returnError in
            if returnError != nil{
                print("statusParse",returnError?.user?.detail)
            } else {
                print("returnData = ",returnResponse?.data)
            }
        }
        // mark :- 11. get Social Media detail by phone number
        Apis().GetSMAccByMobileNo(token: "111eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", jwtToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", phoneNo: "9872521456") { returnResponse,returnError in
            if returnError != nil{
                if ((returnError?.user) != nil){
                    print("--User Error-----", returnError?.user?.detail)
                }
                else
                {
                    print("--Body Error---", returnError?.bdy?.detail)
                }
            }
            else{
                if returnResponse?.data?.resParse?.success == false{
                    print("----",returnResponse?.data?.resParse?.error?.message)
                }
                else {
                    print("returnData = ",returnResponse?.data)
                }
            }
        }
        
        
        // mark :- 11. get Social Media detail by Email
        Apis().getSMAccByEmail(token: "eyJhbGciOiJIUzI1NiJ9.bXJ2ZXJtYTkxMzc4QGdtYWlsLmNvbWFqYXkga3VtYXI.H9agOLfRpnWywRo3alp75OeblSADsKsGDxVVUtheMyk", jwtToken: "rteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjNiN2MzMWQ2MDRmODhkZTVmNGZmM2QxIiwiZW1haWwiOiJxd2VydHkzQGdtYWlsLmNvbSIsImlhdCI6MTY3Mjk4NzQyMSwiZXhwIjoxNjcyOTg3NDUxfQ.hsMcehuY4T-d3_-HV09u5r4JwBaLrD-1cioI-xq37Bc", email: "abc@gmail.com") { returnResponse,returnError  in
            print("returnError------------",returnError)
            print("returnResponse--------",returnResponse)
        }
    }
}


