//
//  ConnectionsSDKInterface.swift
//  StripeCore
//
//  Created by Vardges Avetisyan on 2/24/22.
//  Copyright © 2022 Stripe, Inc. All rights reserved.
//

#if !os(macOS)
@_spi(STP) public protocol FinancialConnectionsSDKInterface {
    init()
    func presentFinancialConnectionsSheet(
        apiClient: STPAPIClient,
        clientSecret: String,
        returnURL: String?,
        existingConsumer: FinancialConnectionsConsumer?,
        style: FinancialConnectionsStyle,
        elementsSessionContext: ElementsSessionContext?,
        onEvent: ((FinancialConnectionsEvent) -> Void)?,
        from presentingViewController: UIViewController,
        completion: @escaping (FinancialConnectionsSDKResult) -> Void
    )
}
#endif
