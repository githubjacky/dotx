------------------------------------------------------------------------
-- import
------------------------------------------------------------------------
import XMonad
import Data.Monoid
import System.Exit
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps
import XMonad.Layout.ResizableTile
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import Data.Ratio
------------------------------------------------------------------------
-- main
------------------------------------------------------------------------
main = do
    xmonad $ docks $ewmh defaults    
------------------------------------------------------------------------
-- global variables
------------------------------------------------------------------------
myTerminal      = "alacritty"
myBorderWidth   = 3
myModMask       = mod4Mask
myWorkspaces    = ["1","2","3","4","5"]

-- Border colors for unfocused and focused windows, respectively.
myNormalBorderColor  = "#4c566a"
myFocusedBorderColor = "#d8dee9"


-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Whether clicking on a window to focus also passes the click to the window
myClickJustFocuses :: Bool
myClickJustFocuses = False


------------------------------------------------------------------------
-- Key bindings
------------------------------------------------------------------------

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm,               xK_Return         ), spawn $ XMonad.terminal conf)
    , ((modm .|. shiftMask, xK_Return         ), spawn "st")
    , ((modm,               xK_space          ), kill)
    , ((modm .|. shiftMask, xK_space          ), sendMessage NextLayout)
    , ((modm,               xK_q              ), spawn "xmonad --recompile; xmonad --restart")
    , ((modm .|. shiftMask, xK_q              ), io (exitWith ExitSuccess))  -- quit xmonad
    , ((modm,               xK_t              ), withFocused $ windows . W.sink) -- push window back to the tiling
    , ((modm .|. shiftMask, xK_Tab            ), windows W.focusMaster  )  -- move focus to the master window
    , ((modm,               xK_Tab            ), spawn "rofi -show window")

    , ((modm,               xK_minus          ), incWindowSpacing 5)               -- increment the right-hand gap
    , ((modm .|. shiftMask, xK_minus          ), sendMessage MirrorExpand)
    , ((modm,               xK_equal          ), decWindowSpacing 5)               -- decreme 
    , ((modm .|. shiftMask, xK_equal          ), sendMessage MirrorShrink)
    , ((modm,               xK_u              ), spawn "st -e ranger")
    , ((modm,               xK_i              ), spawn "st -e bluetoothctl")
    , ((modm,               xK_o              ), spawn "st -e btop")
    , ((modm,               xK_p              ), spawn "st -e pulsemixer")
    , ((modm .|. shiftMask, xK_p              ), spawn "st -e ncmpcpp")
    , ((modm,               xK_h              ), sendMessage Shrink)
    , ((modm,               xK_j              ), windows W.focusDown)
    , ((modm,               xK_k              ), windows W.focusUp  )
    , ((modm,               xK_l              ), sendMessage Expand)
    -- Swap the focused window and the master window
    , ((modm,               xK_semicolon      ), windows W.swapMaster)
    , ((modm,               xK_apostrophe     ), spawn "st -e ssh bbsu@ptt.cc")
    , ((modm,               xK_b              ), spawn "shut-dm")
    , ((modm,               xK_n              ), spawn "editconf")
    , ((modm,               xK_m              ), spawn "pass-dm")
    , ((modm,               xK_comma          ), spawn "bookmark")
    , ((modm,               xK_period         ), spawn "rofi -show run")
    , ((modm,               xK_slash          ), spawn "rofi -show drun")

     -- Rotate through the available layout algorithms

    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_a ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modm .|. shiftMask, xK_n     ), refresh)


    , ((modm,               xK_s              ), sendMessage ToggleStruts)
    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_x     ), windows W.swapDown  )

    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_z     ), windows W.swapUp    )


    -- Increment the number of windows in the master area
    , ((modm .|. shiftMask, xK_comma ), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    , ((modm .|. shiftMask, xK_period), sendMessage (IncMasterN (-1)))
    ]

    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_6,xK_7,xK_8,xK_9,xK_0]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

------------------------------------------------------------------------
-- Mouse bindings
------------------------------------------------------------------------
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $
    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))
    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]
------------------------------------------------------------------------
-- Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--
myLayout = avoidStruts (tiled ||| noBorders Full)
--- third layout: Mirror tiled
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled = spacing 5 $gaps [(U, 5), (R, 5), (L, 5), (D, 5)] $ ResizableTall nmaster delta ratio []

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 10/100
------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "st-256color"                 --> doRectFloat (W.RationalRect 0.15 0.16 0.7 0.7) 
     ,className =? "Pcmanfm"                     --> doRectFloat (W.RationalRect 0.15 0.16 0.7 0.7) 
     ,className =? "Nitrogen"                     --> doRectFloat (W.RationalRect 0.15 0.16 0.7 0.7) 
     -- ,className =? "Nitrogen"                     --> doRectFloat (W.RationalRect 0.12 0.1 0.755 0.81) 
    ]

-- Event handling

-- * EwmhDesktops users should change this to ewmhDesktopsEventHook
--
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
------------------------------------------------------------------------
-- Status bars and logging

-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
-- Override the PP values as you would otherwise, adding colors etc depending
-- on  the statusbar used
myLogHook = do
    ewmhDesktopsLogHook
------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.
myStartupHook = do
    spawn "sh ~/.config/polybar/launch.sh"
    spawn "nitrogen --restore"
------------------------------------------------------------------------
-- Override the PP values as you would otherwise, adding colors etc depending
-- on  the statusbar used
-- Emit a DBus signal on log updates
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults = def {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,
        keys               = myKeys,
        mouseBindings      = myMouseBindings,
      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook <+> manageDocks,
        startupHook        = myStartupHook,
        handleEventHook    = docksEventHook <+> fullscreenEventHook,
        logHook            = myLogHook
}
