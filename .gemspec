# @Author: Vargas Hector <vargash1>
# @Date:   Saturday, January 9th 2016, 7:11:52 pm
# @Email:  vargash1@wit.edu
# @Last modified by:   vargash1
# @Last modified time: Tuesday, May 10th 2016, 2:49:58 pm

Gem::Specification.new do |s|
    s.name        = 'bitwiseCalc'
    s.version     = '1.6.0'
    s.date        = '2016-05-10'
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
