
public class EventValidator {
    public static func validate(event: String, props: [String: Any]) -> Bool {
        let schema = Schema([
            "type": "object",
            "properties": [
                "name": ["type": "string"],
                "price": ["type": "number"],
            ],
            "required": ["name"],
        ])
        if schema.validate(props).valid {
            SEGAnalytics.setup(with: SEGAnalyticsConfiguration(writeKey: ""))
            SEGAnalytics.shared()?.track(event, properties: props)
        } else {
//            fatalError()
        }
        return schema.validate(props).valid
    }
}
