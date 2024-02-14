#!/bin/bash
sudo update-alternatives --install /usr/bin/vi vi "$(command -v nvim)" 60
sudo update-alternatives --config vi
                                
sudo update-alternatives --install /usr/bin/vim vim "$(command -v nvim)" 60
sudo update-alternatives --config vim
                                                                
sudo update-alternatives --install /usr/bin/editor editor "$(command -v nvim)" 60
sudo update-alternatives --config editor
