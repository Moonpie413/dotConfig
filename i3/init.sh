#! /bin/sh
echo "initing i3 environment"
echo "========================"
apt install i3 i3status rofi i3lock xbacklight feh arandr lxappearance compton i3blocks

if [ ! -f ".fonts/System San Francisco Display Regular.ttf"]; then
    echo "copying fonts..."
    cp "./fonts/*" "$HOME/.fonts/"
else
    echo "fonts exists"
fi
