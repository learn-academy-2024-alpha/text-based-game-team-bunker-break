# Text-based Game Challenge

# CODE
puts 'Enter name'
user_name = gets.chomp

# TEXT

blink = "blink....\n"

eyes_opening =  "Your eyes slowly open as the room comes into focus.\nYou've awakened on an operating table in a run down bunker medical bay, unsure of where or who you are.\n" 

first_look = "You feel dizzy and your head is throbbing, the surgical light above you is flickering, you look around and see a medical tool station with bloody surgical tools,\n behind you is another medical bed with a person on it groaning.\n You slowly swing your legs off the table to stand up.\n" 

first_choice = "What should I do first:\n 1. Check the other persons condition?\n 2. Check to see if the door is unlocked?\n Please enter input here: "

fc_option_one = "shake.. shake.. 
\n #{user_name}: 'Hey buddy, wake up!'\n *Nothing Happens*\n I need to find something to wake them up.\n Looking around I see a bed side table with two drawers, and a rusty medicine cabinet.\n\n What should I do:\n 1. Look in the bed side table?\n 2. Check out the rusty medicine cabinet?\n"    
    fc_o1_c1 = "1. Open the top drawer?\n" 
    fc_o1_c2 = "2. Open the bottom drawer?\n"

    fc_o2_c1 = "The medical cabinet is rusted shut, I need to find something to pry it open. Maybe I should check the bed side table.\n"
    fc_o2_c2 = "The medical cabinet is rusted shut, but I can pry it open with the scalpel I found!\n POP!\n The medicine cabinets rusted metal door swung open revealing a glass jar labeled smelling salts with only one pouch left in it."



    # - check door (locked)
    # - check people (need to find medical)


# METHODS
def char_print_speed string, seconds
    string.each_char do |char|
        putc char
        sleep(seconds)
    end
end

# char_print_speed( ,0.1)
# sleep (0.5)



# char_print_speed(blink, 0.1)
# sleep (0.5)
# char_print_speed(blink, 0.1)
# sleep (0.5)
# char_print_speed(eyes_opening, 0.09)
# sleep (0.5)
# char_print_speed(first_look, 0.09)
# sleep (0.5)

# loop do
#     char_print_speed(first_choice, 0.1)
#     first_choice_input = gets.chomp
# if first_choice_input.include?('door') || first_choice_input.include?('2')
#     puts 'You reach for the handle and shake it and see that the door is locked'
#     break
# elsif first_choice_input.include?('person') || first_choice_input.include?('1')
#     sleep(1)
#     puts "\n"
#     puts 'You walk up to the closest medical bed, and pull back the curtain to find a person unconscious'
#     break
# else 
#     puts 'Thats not a valid option, please choose from the provided options'
#     sleep(2)
# end
# end

loop do
    char_print_speed(fc_option_one, 0.1)
    fc_option_one = gets.chomp
    if fc_option_one.include?('table') || fc_option_one.include?('1')
        bed_side = "\n I move closer to the bed side table.\n Which drawer should I open first?\n #{fc_o1_c1} #{fc_o1_c2}"
        loop do 
            char_print_speed(bed_side, 0.1) 
            which_drawer = gets.chomp            
            if which_drawer.include?('bottom') || which_drawer.include?('2')
                char_print_speed("\nWith some effort I pull open the bottom drawer, inside I see:\n a scalpel and new bandages. Lets take the scapel and new bandages, they might be useful.\n", 0.008)
                break
            elsif which_drawer.include?('top') || which_drawer.include?('1')  
                    char_print_speed("\n I pull open the top drawer, it sticks a little.\n Inside I find: a musty Bible, expired pills, and used bandages.\n Nothing in here is useful. I close the drawer.\n", 0.008)
                    sleep(2)
            else
                puts 'Thats not a valid option, please choose from the provided options'
                sleep(2)
            end
        end
    elsif char_print_speed(fc_o2_c1, )
    end
end    