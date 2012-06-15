;; .emacs
;; Emacs main init file

;; Load the elisp files located in ~/.elisp
(add-to-list 'load-path "~/.elisp")

;; Use color themes and set the default one.
;;(require 'color-theme)
;;(color-theme-calm-forest)
;;(color-theme-matrix)

;; Disable the menu.
(menu-bar-mode -1)

;; Inhibit the creation of backup files.
(setq backup-inhibited t)

;; Load Ruby mode when an .rb or .rhtlm file is opened.
;;(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
;;(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
;;(setq auto-mode-alist  (cons '(".rhtml$" . html-mode) auto-mode-alist))

;; Load C# Mode when a .cs file is opened.
;; (autoload 'csharp-mode "csharp-mode-0.4.0"
;;   "Major mode for editing C# files." t)
;; (add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

;; Load the Markdown when a .mdwn or .md file is opened.
(autoload 'markdown-mode "markdown-mode"
 "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; Autoload the CUDA mode and set it when a .cu file is opened.
;; (autoload 'cuda-mode "cuda-mode"
;;   "Major mode for eding C for CUDA files." t)
;; (add-to-list 'auto-mode-alist '("\\.cu$" . cuda-mode))

;; Setup the Prolog mode.
;(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
;(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
;(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
;(setq prolog-system 'swi)
;; (setq auto-mode-alist (append '(("\.pl$" . prolog-mode)
;; 				("\.m$" . mercury-mode))
;; 			      auto-mode-alist))

(require 'haskell-mode)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; (require 'erlang)
;; (add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))

;; (require 'proto-mode)

;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Show the current time.
(setq display-time-24hr-format t)
(display-time)

;; Go to UTF-8.
(set-keyboard-coding-system 'utf-8)
(set-language-environment "utf-8")

;; Make it possible to resize windows.
(require 'windresize)

(setq-default ispell-program-name "aspell")
(setq ispell-local-dictionary "en_GB")

;; Make emacs automatically setup syntax highlighting for the
;; corresponding major modes.
(global-font-lock-mode 1)

;; This definition is required for flyspell-mode to work in mail-mode.
;;(defvar message-signature-separator "^-- *$" "Regexp matching the
;;signature separator.")

;; Enter flyspell-mode and auto-fill-mode automatically when opening
;; mail.
(add-hook 'mail-mode-hook 'flyspell-mode)
(add-hook 'mail-mode-hook 'auto-fill-mode)

;; Some utility shortcuts.
(global-set-key [f6] 'ispell-change-dictionary)
(global-set-key (kbd "C-c q") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c C-q") 'delete-trailing-whitespace)
(global-set-key (kbd "C-x C-r") 'revert-buffer)

;; Enable the narrow-to-region command.
(put 'narrow-to-region 'disabled nil)

;; Setup SLIME.
;; (add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
;; (add-hook 'inferior-lisp-mode (lambda () (inferior-slime-mode t)))
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
;; (setq inferior-lisp-program "sbcl")
;; (require 'slime)
;; (slime-setup '(slime-fancy))

;; Redefine the keybinding for 'slime-close-all-parens-in-sexp, since
;; the default one (C-c C-]) conflicts with some shortcuts in
;; gnome-terminal.
;; (global-set-key (kbd "C-c C-q") 'slime-close-all-parens-in-sexp)

;; Create a shortcut for outline mode.
;;(global-set-key (kbd "C-c C-o") 'outline-minor-mode)

;; Setup auto-pairing of brackets and such.
(require 'autopair)
(autopair-global-mode)

;; Set up the org-mode.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-directory "~/Dropbox/NotesTODOs")
(setq org-mobile-inbox-for-pull "~/Dropbox/MobileOrg/mobileorg.org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-capture-file "~/Dropbox/MobileOrg/mobileorg.org")

;; Load spelling for .org files.
(add-hook 'org-mode-hook 'flyspell-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(canlock-password "6df40ec6905eea265b9dc65f43c29fc1e505ac2a")
 '(column-number-mode t)
 '(org-agenda-files (quote ("~/Dropbox/NotesTODOs/gsoc.org" "~/Dropbox/NotesTODOs/phd.org" "~/Dropbox/NotesTODOs/birthdays.org" "~/Dropbox/NotesTODOs/imi.org" "~/Dropbox/NotesTODOs/msc.org" "~/Dropbox/NotesTODOs/notes.org")))
 '(rw-hunspell-dictionary-menu t)
 '(rw-hunspell-use-rw-ispell t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
