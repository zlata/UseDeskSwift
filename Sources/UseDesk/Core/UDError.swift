//
//  UDError.swift
//  UseDesk_SDK_Swift
//
//

import Foundation
import Alamofire

@objc public enum UDError: Int {
    case null
    case chanelIdError
    case urlError
    case emailError
    case urlToSendFileError
    case urlAPIError
    case phoneError
    case tokenError
    case falseInitChatError
    case serverError
    case emptyKnowledgeBaseID
    
    public init(errorCode: Int) {
        switch errorCode {
        case 112:
            self = UDError.tokenError
        default:
            self = UDError.serverError
        }
    }
    
    var description: String {
        switch self {
        case .null:
            return ""
        case .chanelIdError:
            return "Invalid chanel id"
        case .urlError:
            return "Invalid url"
        case .emailError:
            return "Invalid email"
        case .urlToSendFileError:
            return "Invalid url to send file"
        case .urlAPIError:
            return "Invalid urlAPI"
        case .phoneError:
            return "Invalid phone number"
        case .tokenError:
            return "Invalid token"
        case .falseInitChatError:
            return "False init chat"
        case .serverError:
            return "Error in server"
        case .emptyKnowledgeBaseID:
            return "Empty knowledgeBaseID"
        }
    }
}
