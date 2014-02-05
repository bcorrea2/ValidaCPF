Pod::Spec.new do |s|
  s.name         = "ValidaCPF"
  s.version      = "0.0.1"
  s.summary      = "Validador de CPF's"
  s.homepage     = "https://github.com/bcorrea2/ValidaCPF"
  s.source       = { :git => "https://github.com/bcorrea2/ValidaCPF" }
  s.authors      = { "Bruno Corrêa" => "bcorrea2@gmail.com" }
  s.source_files = 'ValidaCPF'
  s.requires_arc = false
  s.ios.deployment_target = '4.3'
end