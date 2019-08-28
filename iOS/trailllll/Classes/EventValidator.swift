
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
        return schema.validate(props).valid
    }
    
    
}
