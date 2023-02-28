lime_green=$(tput setaf 154);
red=$(tput setaf 196);
white=$(tput setaf 255);
blue=$(tput setaf 027)
tput_reset='\033[0;10m';

PS1="\n$lime_green\u$white@$red\h$white in $blue\w\n $white => $tput_reset";
