;;*****************************************************************
;;
;;                     KBM's emacs config - Init
;;
;;*****************************************************************

;;BuiltIn Package System
(require 'package)
(add-to-list 'package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

;;-----------------------------------------------------------------
;;                         User Interface
;;-----------------------------------------------------------------

;;(tool-bar-mode -1)     ; Disable toolbar
;;(menu-bar-mode -1)     ; Disable the menubar
;;(tooltip-mode -1)      ; Disable tooltips

;;(scroll-bar-mode -1)   ; Disable visible scrollbar
(set-fringe-mode -1)   ; Give some breathing room

(global-display-line-numbers-mode 1)   ; Enable line numbers on left margin

;;Setup the visible bell instead of sound queue
(setq visible-bell t)


;;Setting Themes
(load-theme 'modus-operandi)

(set-face-attribute 'default nil :font "Intel One Mono" :height 100)
;;----------------------------------------------------------------
;; Functionalities
;;----------------------------------------------------------------

;;Activating the EVIL mode
;;(require 'evil)
;;(evil-mode 1)

;; Ledger-Mode
  (use-package ledger-mode
    :mode ("\\.dat\\'"
           "\\.ledger\\'")
    :custom (ledger-clear-whole-transactions t))

  (use-package flycheck-ledger :after ledger-mode)
