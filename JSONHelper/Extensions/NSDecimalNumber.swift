//
//  Copyright © 2016 Baris Sencan. All rights reserved.
//

import Foundation

extension NSDecimalNumber: Convertible {

  public static func convertFromValue<T>(_ value: T?) throws -> Self? {
    guard let value = value else { return nil }

    if let doubleValue = value as? Double {
      return self.`init`(value:)(double: doubleValue)
    } else if let stringValue = value as? String {
      return self.init(string: stringValue)
    } else if let floatValue = value as? Float {
      return self.`init`(value:)(float: floatValue)
    } else if let intValue = value as? Int {
      return self.`init`(value:)(integer: intValue)
    }

    throw ConversionError.unsupportedType
  }
}
