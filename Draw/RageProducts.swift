/*
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

public struct RageProducts {
    
    public static let Book01 = "Book001" //used book01 in tutorial
    public static let Book02 = "Book02"
    public static let Book03 = "Book03"
    public static let Book04 = "Book04"
    public static let Book05 = "Book05"
    public static let Book06 = "Book06"
    public static let Book07 = "Book07"
    public static let Book08 = "Book08"
    public static let Book09 = "Book09"
    public static let Book10 = "Book10"
    public static let Book11 = "Book11"
    fileprivate static let productIdentifiers: Set<ProductIdentifier> = [RageProducts.Book01,RageProducts.Book02,RageProducts.Book03,RageProducts.Book04,RageProducts.Book05,RageProducts.Book06,RageProducts.Book07,RageProducts.Book08,RageProducts.Book09,RageProducts.Book10,RageProducts.Book11]
    
    public static let store = IAPHelper(productIds: RageProducts.productIdentifiers)
}

func resourceNameForProductIdentifier(_ productIdentifier: String) -> String? {
    return productIdentifier.components(separatedBy: ".").last
}
