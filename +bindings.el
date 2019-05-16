;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;;; Leader key
(map! :leader
      :desc "M-x"                                    "SPC" #'execute-extended-command
      :desc "Find file in project"                     "." #'projectile-find-file
      )

;;; Prefix map
(map! (:prefix-map ("b" . "buffer")
                   :desc "Previous buffer"           "TAB" #'previous-buffer
                   :desc "Switch buffer"               "b" #'switch-to-buffer
                   :desc "Delete buffer"               "d" #'kill-this-buffer
                   :desc "Recent files"                "r" #'recentf-open-files
                   )

      (:prefix-map ("w" . "window")
                   :desc "Delete window or workspace"  "d" #'+workspace/close-window-or-workspace
                   :desc "Maximize window"             "m" #'doom/window-maximize-buffer
                   :desc "Other window"                "w" #'other-window
                   :desc "Split window right"          "|" #'split-window-right
                   :desc "Split window below"          "-" #'split-window-below
                   )

      (:prefix-map ("c" . "code")
                   :desc "Comment line or region"      "l" #'evil-commentary-line
                   )

      (:prefix-map ("t" . "toggl")
                   :desc "Toggl truncate lines"        "t" #'toggle-truncate-lines
                   )

      (:prefix-map ("j" . "jump")
                   :desc "Jump to symbol"              "i" #'imenu
                   :desc "Jump to symbol across buffers" "I" #'imenu-anywhere
                   :desc "Jump to link"                "l" #'ace-link
                   )

      (:prefix-map ("s" . "search")
                   :desc "Search buffer"               "s" #'swiper
                   :desc "Search current directory"    "d" #'+default/search-from-cwd
                   :desc "Search project"              "p" #'+default/search-project
                   :desc "Look up online"              "o" #'+lookup/online-select
                   )

      (:prefix-map ("p" . "project")
                   :desc "Find file in project"        "f" #'projectile-find-file
                   )

      (:prefix-map ("g" . "git")
                   (:when (featurep! :tools magit)
                     :desc "Magit status"              "s" #'magit-status
                     )
                   )
      )
