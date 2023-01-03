#!/usr/bin/python

from i3ipc import Connection, Event
from argparse import ArgumentParser

parser = ArgumentParser(description="i3 window maximize & close")


parser.add_argument(
    "-c",
    "--ctrl",
    type=str,
    help="maximize or close",
    default="maximize",
    choices=["maximize", "close"],
)

argsv = parser.parse_args()

i3 = Connection()
action = argsv.ctrl


def window_focused():
    focused = i3.get_tree().find_focused()
    return focused


def no_window():
    print("", flush=True)


def print_icon():
    if action == "maximize":
        print("", flush=True)  # 
    elif action == "close":
        print("", flush=True)


def on_window_focus(i3, e):
    focused = window_focused()
    print_for_window(focused.window_class)  # type: ignore


def on_workspace_focus(i3, e):
    focused = window_focused()
    print_for_window(focused.window_class)  # type: ignore


def print_for_window(window):
    if window is None or window == "":
        no_window()
    else:
        print_icon()


i3.on(Event.WORKSPACE, on_workspace_focus)
i3.on(Event.WINDOW, on_window_focus)

print_for_window(window_focused().window_class)  # type:ignore
i3.main()
