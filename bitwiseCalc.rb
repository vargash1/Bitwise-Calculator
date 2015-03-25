#!/usr/bin/env ruby
# @Author: vargash1
# @Name:   Vargas, Hector
# @Email:  vargash1@wit.edu
# @Date:   2015-02-23 10:23:20
# @Last Modified by:   vargash1
# @Last Modified time: 2015-03-25 17:36:28
require 'colorize'
class BoolCalc
    def print_all_radix(num)
        puts "Decimal:\t\tHex:".yellow
        puts "\t#{num.to_s(10)}\t\t#{num.to_s(16)}"
        puts "Binary: ".yellow
        print_nice_binary(num)
    end
    def execute()
        puts "\t--------------------X------------------".yellow
        print_all_radix(@x)
        if (@operation != 'NOT')
            puts "\t--------------------Y------------------".yellow
            print_all_radix(@y)
        end
        puts "\t-------------------#{@operation}-----------------".yellow
        case 
        when (@operation == 'AND')
            final_result = @x & @y
        when (@operation == 'OR')
            final_result = @x | @y
        when (@operation == 'XOR')
            final_result = @x ^ @y 
        when (@operation == 'NOT')
            final_result = ~@x
        when (@operation == 'SHR')
            final_result = @x >> @y
        when (@operation == 'SHL')
            final_result = @x << @y
        end
        print_all_radix(final_result)   
    end
    def check_for_errors()
        if (@operation == nil)
            abort ("ERROR, EXPECTED AN OPERATION".red)
        end
        #either missing @x for (not) 
        #or @x and @y for (xor,and,or,shr,shl)
        missing_num = (((@x == nil) && (@y == nil)) || (@x == nil)) 
        if (missing_num)
            abort("ERROR, MISSING NUMBER(s)".red)
        end
    end   
    def parse_args()
        ops = ['NOT','SHR','SHL','AND','OR','XOR']
        i = 0
        if (ARGV.length == 0 || (ARGV[0].upcase) == "-H")
            print_help()
            exit
        end
        ARGV.each do |a|
            case 
            #if ARGV[a] is letters only,check if its a valid operation
            when (a == a[/[a-zA-Z]*/])
                ops.each do |ops_elem|
                    if (a.upcase == ops_elem)
                        @operation = ops_elem
                    end
                end
            #if ARGV[a] is a number, save it.
            when (is_number(a.to_i))
                if (i == 0)
                    @x = a.to_i
                    i += 1
                else
                    @y = a.to_i
                end
            end
        end
    end
    def is_number(num)
        is_num = ((num.to_f.to_s == num.to_s) || (num.to_i.to_s == num.to_s))
        return is_num
    end
    def print_help()
        puts """\tSimply run the Ruby Script with the any of the following as arguements.\n
        \t./boolCalc.rb <put> <args> <here>\n
        Results will be output in Hex, Binary, and Decimal
        \tHere are some examples
            1 AND 2
                Displays 1 & 2 
            1 OR 2
                Displays 1 | 2 
            NOT 1
                Displays ~1 
            1 XOR 2
                Displays 1 XOR 2
            1 SHR 2
                Displays 1 Shift Right 2
            1 SHL 2
                Displays 1 Shift Left 2
        Please Note that the order in which you enter the arguments
        as well as case sensitivity do not matter!
        """
        exit
    end
    def print_nice_binary(num)
        puts "\t32 BIT FORMAT".yellow
        print "\t"
        31.downto(0) do |n| 
            print num[n]
            if (n%4 == 0)
                print " "  
            end
        end
        puts "\n\t64 BIT FORMAT".yellow
        print "\t"
        63.downto(0) do |n| 
            print num[n]
            if (n%4 == 0)
                print " "  
            end
       end
    puts 
    end
end
def main()
    runtime = BoolCalc.new()
    runtime.parse_args()
    runtime.check_for_errors()
    runtime.execute()
    runtime = nil
end
main()  
