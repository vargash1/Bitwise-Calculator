Gem::Specification.new do |s|
    s.name        = 'bitwiseCalc'
    s.version     = '0.0.7'
    s.date        = '2015-05-10'
    s.summary     = "BitWise Calculator"
    s.description = "A simple BitWise Calculator"
    s.authors     = "Hector Vargas"
    s.email       = 'hjvargas1213@gmail.com'
    s.homepage    = 'https://github.com/vargash1/Bitwise-Calculator'
    s.license     = 'MIT'
    s.bindir      = 'lib'
    s.executables   << 'bitwiseCalc'
    s.post_install_message = "Thanks for installing!"
    s.add_runtime_dependency 'colorize', '~> 0.7.7', '>= 0.7.7'
end
