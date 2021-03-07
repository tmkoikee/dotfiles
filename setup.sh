#!/bin/bash

if [ -e ~/.screenrc ]; then
    mv ~/.screenrc ~/.screenrc.org
fi
ln -s screenrc ~/.screenrc
