//
//  AuthManager.swift
//  Spotify
//
//  Created by user208023 on 7/8/22.
//

import Foundation


final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "28c6b30fbd5b4eca9185ce93e8d984a3"
        static let clientScret = "9cee630ee58943b7926a0fd0fc81457f"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        // Get Token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
