//
// FakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire
import PromiseKit



open class FakeAPI {
    /**
     creates an XmlItem
     
     - parameter xmlItem: (body) XmlItem Body 
     - returns: Promise<Void>
     */
    open class func createXmlItem( xmlItem: XmlItem) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        createXmlItemWithRequestBuilder(xmlItem: xmlItem).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     creates an XmlItem
     - POST /fake/create_xml_item
     - this route creates an XmlItem
     - parameter xmlItem: (body) XmlItem Body 
     - returns: RequestBuilder<Void> 
     */
    open class func createXmlItemWithRequestBuilder(xmlItem: XmlItem) -> RequestBuilder<Void> {
        let path = "/fake/create_xml_item"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: xmlItem)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input boolean as post body (optional)
     - returns: Promise<Bool>
     */
    open class func fakeOuterBooleanSerialize( body: Bool? = nil) -> Promise<Bool> {
        let deferred = Promise<Bool>.pending()
        fakeOuterBooleanSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     - POST /fake/outer/boolean
     - Test serialization of outer boolean types
     - parameter body: (body) Input boolean as post body (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func fakeOuterBooleanSerializeWithRequestBuilder(body: Bool? = nil) -> RequestBuilder<Bool> {
        let path = "/fake/outer/boolean"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input composite as post body (optional)
     - returns: Promise<OuterComposite>
     */
    open class func fakeOuterCompositeSerialize( body: OuterComposite? = nil) -> Promise<OuterComposite> {
        let deferred = Promise<OuterComposite>.pending()
        fakeOuterCompositeSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     - POST /fake/outer/composite
     - Test serialization of object with outer number type
     - parameter body: (body) Input composite as post body (optional)
     - returns: RequestBuilder<OuterComposite> 
     */
    open class func fakeOuterCompositeSerializeWithRequestBuilder(body: OuterComposite? = nil) -> RequestBuilder<OuterComposite> {
        let path = "/fake/outer/composite"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterComposite>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input number as post body (optional)
     - returns: Promise<Double>
     */
    open class func fakeOuterNumberSerialize( body: Double? = nil) -> Promise<Double> {
        let deferred = Promise<Double>.pending()
        fakeOuterNumberSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     - POST /fake/outer/number
     - Test serialization of outer number types
     - parameter body: (body) Input number as post body (optional)
     - returns: RequestBuilder<Double> 
     */
    open class func fakeOuterNumberSerializeWithRequestBuilder(body: Double? = nil) -> RequestBuilder<Double> {
        let path = "/fake/outer/number"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Double>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input string as post body (optional)
     - returns: Promise<String>
     */
    open class func fakeOuterStringSerialize( body: String? = nil) -> Promise<String> {
        let deferred = Promise<String>.pending()
        fakeOuterStringSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     - POST /fake/outer/string
     - Test serialization of outer string types
     - parameter body: (body) Input string as post body (optional)
     - returns: RequestBuilder<String> 
     */
    open class func fakeOuterStringSerializeWithRequestBuilder(body: String? = nil) -> RequestBuilder<String> {
        let path = "/fake/outer/string"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body)  
     - returns: Promise<Void>
     */
    open class func testBodyWithFileSchema( body: FileSchemaTestClass) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testBodyWithFileSchemaWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     - PUT /fake/body-with-file-schema
     - For this test, the body for this request much reference a schema named `File`.
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func testBodyWithFileSchemaWithRequestBuilder(body: FileSchemaTestClass) -> RequestBuilder<Void> {
        let path = "/fake/body-with-file-schema"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter query: (query)  
     - parameter body: (body)  
     - returns: Promise<Void>
     */
    open class func testBodyWithQueryParams( query: String,  body: User) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testBodyWithQueryParamsWithRequestBuilder(query: query, body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     - PUT /fake/body-with-query-params
     - parameter query: (query)  
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func testBodyWithQueryParamsWithRequestBuilder(query: String, body: User) -> RequestBuilder<Void> {
        let path = "/fake/body-with-query-params"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": query
        ])

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     To test \"client\" model
     
     - parameter body: (body) client model 
     - returns: Promise<Client>
     */
    open class func testClientModel( body: Client) -> Promise<Client> {
        let deferred = Promise<Client>.pending()
        testClientModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else if let response = response {
                deferred.fulfill(response.body!)
            } else {
                fatalError()
            }
        }
        return deferred.promise
    }

    /**
     To test \"client\" model
     - PATCH /fake
     - To test \"client\" model
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func testClientModelWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: Promise<Void>
     */
    open class func testEndpointParameters( number: Double,  double: Double,  patternWithoutDelimiter: String,  byte: Data,  integer: Int? = nil,  int32: Int? = nil,  int64: Int64? = nil,  float: Float? = nil,  string: String? = nil,  binary: URL? = nil,  date: Date? = nil,  dateTime: Date? = nil,  password: String? = nil,  callback: String? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testEndpointParametersWithRequestBuilder(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, integer: integer, int32: int32, int64: int64, float: float, string: string, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - POST /fake
     - Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - BASIC:
       - type: http
       - name: http_basic_test
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func testEndpointParametersWithRequestBuilder(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: URL? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "integer": integer?.encodeToJSON(),
            "int32": int32?.encodeToJSON(),
            "int64": int64?.encodeToJSON(),
            "number": number,
            "float": float,
            "double": double,
            "string": string,
            "pattern_without_delimiter": patternWithoutDelimiter,
            "byte": byte,
            "binary": binary,
            "date": date?.encodeToJSON(),
            "dateTime": dateTime?.encodeToJSON(),
            "password": password,
            "callback": callback
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter enumHeaderStringArray
     */
    public enum EnumHeaderStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumHeaderString
     */
    public enum EnumHeaderString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryStringArray
     */
    public enum EnumQueryStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumQueryString
     */
    public enum EnumQueryString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryInteger
     */
    public enum EnumQueryInteger_testEnumParameters: Int {
        case _1 = 1
        case number2 = -2
    }

    /**
     * enum for parameter enumQueryDouble
     */
    public enum EnumQueryDouble_testEnumParameters: Double {
        case _11 = 1.1
        case number12 = -1.2
    }

    /**
     * enum for parameter enumFormStringArray
     */
    public enum EnumFormStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumFormString
     */
    public enum EnumFormString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     To test enum parameters
     
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (query) Query parameter enum test (double) (optional)
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional, default to .$)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to .-efg)
     - returns: Promise<Void>
     */
    open class func testEnumParameters( enumHeaderStringArray: [String]? = nil,  enumHeaderString: EnumHeaderString_testEnumParameters? = nil,  enumQueryStringArray: [String]? = nil,  enumQueryString: EnumQueryString_testEnumParameters? = nil,  enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil,  enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil,  enumFormStringArray: [String]? = nil,  enumFormString: EnumFormString_testEnumParameters? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testEnumParametersWithRequestBuilder(enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble, enumFormStringArray: enumFormStringArray, enumFormString: enumFormString).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     To test enum parameters
     - GET /fake
     - To test enum parameters
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (query) Query parameter enum test (double) (optional)
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional, default to .$)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to .-efg)
     - returns: RequestBuilder<Void> 
     */
    open class func testEnumParametersWithRequestBuilder(enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "enum_form_string_array": enumFormStringArray,
            "enum_form_string": enumFormString?.rawValue
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "enum_query_string_array": enumQueryStringArray, 
            "enum_query_string": enumQueryString?.rawValue, 
            "enum_query_integer": enumQueryInteger?.rawValue, 
            "enum_query_double": enumQueryDouble?.rawValue
        ])
        let nillableHeaders: [String: Any?] = [
            "enum_header_string_array": enumHeaderStringArray,
            "enum_header_string": enumHeaderString?.rawValue
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Fake endpoint to test group parameters (optional)
     
     - parameter requiredStringGroup: (query) Required String in group parameters 
     - parameter requiredBooleanGroup: (header) Required Boolean in group parameters 
     - parameter requiredInt64Group: (query) Required Integer in group parameters 
     - parameter stringGroup: (query) String in group parameters (optional)
     - parameter booleanGroup: (header) Boolean in group parameters (optional)
     - parameter int64Group: (query) Integer in group parameters (optional)
     - returns: Promise<Void>
     */
    open class func testGroupParameters( requiredStringGroup: Int,  requiredBooleanGroup: Bool,  requiredInt64Group: Int64,  stringGroup: Int? = nil,  booleanGroup: Bool? = nil,  int64Group: Int64? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testGroupParametersWithRequestBuilder(requiredStringGroup: requiredStringGroup, requiredBooleanGroup: requiredBooleanGroup, requiredInt64Group: requiredInt64Group, stringGroup: stringGroup, booleanGroup: booleanGroup, int64Group: int64Group).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     Fake endpoint to test group parameters (optional)
     - DELETE /fake
     - Fake endpoint to test group parameters (optional)
     - parameter requiredStringGroup: (query) Required String in group parameters 
     - parameter requiredBooleanGroup: (header) Required Boolean in group parameters 
     - parameter requiredInt64Group: (query) Required Integer in group parameters 
     - parameter stringGroup: (query) String in group parameters (optional)
     - parameter booleanGroup: (header) Boolean in group parameters (optional)
     - parameter int64Group: (query) Integer in group parameters (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func testGroupParametersWithRequestBuilder(requiredStringGroup: Int, requiredBooleanGroup: Bool, requiredInt64Group: Int64, stringGroup: Int? = nil, booleanGroup: Bool? = nil, int64Group: Int64? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "required_string_group": requiredStringGroup.encodeToJSON(), 
            "required_int64_group": requiredInt64Group.encodeToJSON(), 
            "string_group": stringGroup?.encodeToJSON(), 
            "int64_group": int64Group?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "required_boolean_group": requiredBooleanGroup,
            "boolean_group": booleanGroup
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     test inline additionalProperties
     
     - parameter param: (body) request body 
     - returns: Promise<Void>
     */
    open class func testInlineAdditionalProperties( param: [String:String]) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testInlineAdditionalPropertiesWithRequestBuilder(param: param).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     test inline additionalProperties
     - POST /fake/inline-additionalProperties
     - parameter param: (body) request body 
     - returns: RequestBuilder<Void> 
     */
    open class func testInlineAdditionalPropertiesWithRequestBuilder(param: [String:String]) -> RequestBuilder<Void> {
        let path = "/fake/inline-additionalProperties"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: param)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     test json serialization of form data
     
     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - returns: Promise<Void>
     */
    open class func testJsonFormData( param: String,  param2: String) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testJsonFormDataWithRequestBuilder(param: param, param2: param2).execute { (response, error) -> Void in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(())
            }
        }
        return deferred.promise
    }

    /**
     test json serialization of form data
     - GET /fake/jsonFormData
     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - returns: RequestBuilder<Void> 
     */
    open class func testJsonFormDataWithRequestBuilder(param: String, param2: String) -> RequestBuilder<Void> {
        let path = "/fake/jsonFormData"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "param": param,
            "param2": param2
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
