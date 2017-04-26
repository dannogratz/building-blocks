=begin 
In cryptography, a Caesar cipher, also known as Caesar's cipher,
the shift cipher, Caesar's code or Caesar shift, is one of the simplest 
and most widely known encryption techniques. It is a type of substitution
cipher in which each letter in the plaintext is replaced by a letter some
fixed number of positions down the alphabet. For example, with a left
shift of 3, D would be replaced by A, E would become B, and so on. The method
is named after Julius Caesar, who used it in his private correspondence.
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
    > caesar_cipher("What a string!", 5)
    => "Bmfy f xywnsl!"
Quick Tips:

You will need to remember how to convert a string into a number.
Don't forget to wrap from z to a.
Don't forget to keep the same case.

=end


def caesar_encode(string, shift)
  encoded_message = ""
  
  string.split("").each do |char|
    shifted = char.ord + shift
    if char.ord.between?(65,90)
      if shifted > 90
        encoded_message << (shifted - 26).chr 
      else 
        encoded_message << shifted.chr 
      end
      
    elsif char.ord.between?(97,122)
    
      if shifted > 122
        encoded_message << (shifted - 26).chr 
      else 
        encoded_message << shifted.chr
      end
      
    else 
      encoded_message << char 
    end
  end
  return encoded_message
end


puts caesar_encode("Encode this string", 5)
