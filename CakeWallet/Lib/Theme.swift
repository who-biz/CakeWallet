import UIKit

enum Theme: String {
    case def, night
    
    static var current: Theme {
        if
            let rawValue = UserDefaults.standard.string(forKey: Configurations.DefaultsKeys.currentTheme),
            let theme = Theme(rawValue: rawValue) {
            return theme
        }
        
        return .def
    }
    
    var container: ContainerColorScheme {
        switch self {
        case .def:
            return ContainerColorScheme(background: .whiteSmoke)
        case .night:
            return ContainerColorScheme(background: .wildDarkBlue)
        }
    }
    
    var primaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .vividBlue, text: .white)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .vividBlue)
        }
    }
    
    var secondaryButton: ButtonColorScheme {
        switch self {
        case .def:
            return ButtonColorScheme(background: .wildDarkBlue, text: .white)
        case .night:
            return ButtonColorScheme(background: .whiteSmoke, text: .wildDarkBlue)
        }
    }
    
    var pin: PinIndicatorScheme {
        return PinIndicatorScheme(background: .white, value: .vividBlue)
    }
    
    var pinKey: PinKeyScheme {
        return PinKeyScheme(background: .wildDarkBlue, text: .white)
    }
    
    var pinKeyReversed: PinKeyReversedScheme {
        return PinKeyReversedScheme(background: .white, text: .spaceViolet)
    }
    
    var card: CardScheme {
        return CardScheme(background: .white)
    }
    
    var text: UIColor {
        switch self {
        case .def:
            return .spaceViolet
        case .night:
            return .whiteSmoke
        }
    }
    
    var lightText: UIColor {
        switch self {
        case .def:
            return .wildDarkBlue
        case .night:
            return .whiteSmoke
        }
    }
    
    var progressBar: ProgressBarScheme {
        return ProgressBarScheme(value: .greenMalachite, background: .whiteSmoke)
    }
}