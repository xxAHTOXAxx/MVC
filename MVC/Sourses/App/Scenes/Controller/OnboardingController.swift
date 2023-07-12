
import UIKit

class OnboardingController: UIViewController {

    var model: OnboardingModel?
    
    // Это вычисляемое свойство преобразует тип родительской view в Onboarding View
    // Это делается чтобы мы в будущем могли из Controller'a обращаться к элементам View
    private var onboardingView: OnboardingView? { guard isViewLoaded else { return nil }
    return view as? OnboardingView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Присваиваем значению View наш созданный класс Onboarding View()
        // Можно это сделать в Main.storyboard, но я решил сделать так
        view = OnboardingView()
        model = OnboardingModel()
    }
}

