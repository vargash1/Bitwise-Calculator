Gem::Specification.new do |s|
    s.name        = 'bitwiseCalc'
    s.version     = '1.5.0'
    s.date        = '2016-01-09'
    s.summary     = "BitWise Calculator CLI tool"
    s.description = "A simple CLI  BitWise Calculator that can peform arithmetic"
    s.authors     = "Hector Vargas"
    s.email       = 'hjvargas1213@gmail.com'
    s.homepage    = 'https://github.com/vargash1/Bitwise-Calculator'
    s.license     = 'MIT'
    s.bindir      = 'lib'
    s.executables   << 'bitwiseCalc'
    s.post_install_message = "Thanks for installing! run bitwiseCalc -h for usage!"
    s.add_runtime_dependency 'colorize', '~> 0.7.7', '>= 0.7.7'
end
