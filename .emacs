(setq load-path (cons "~/share/emacs/site-lisp" load-path))
(setq load-path (cons "/usr/share/emacs/site-lisp/emacs-goodies-el" load-path))
(setq load-path (cons (expand-file-name "/usr/share/doc/git-core/contrib/emacs") load-path))
(require 'dirvars)
(require 'doxymacs)
(require 'color-theme)
(require 'dabbrev)
(require 'cyclebuffer)
(require 'cc-word)
(require 'xcscope)
;;(require 'vc-git)
(require 'git)
(require 'magit)

(modify-frame-parameters nil '((wait-for-wm . nil)))
;;(setq load-path (cons "~/.emacs.d/elpa" load-path))

;; packet manager ELPA 
;;(load "package")
;;(package-initialize)
(desktop-load-default)
(desktop-read)
;; save a list of open files in ~/.emacs.desktop
;; save the desktop file automatically if it already exists
(setq desktop-save 'if-exists)
(desktop-save-mode 1)

;; save a bunch of variables to the desktop file
;; for lists specify the len of the maximal saved data also
(setq desktop-globals-to-save
      (append '((extended-command-history . 30)
                (file-name-history        . 100)
                (grep-history             . 30)
                (compile-history          . 30)
                (minibuffer-history       . 50)
                (query-replace-history    . 60)
                (read-expression-history  . 60)
                (regexp-history           . 60)
                (regexp-search-ring       . 20)
                (search-ring              . 20)
                (shell-command-history    . 50)
                tags-file-name
                register-alist)))

(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)


(add-hook 'c-mode-common-hook 'doxymacs-mode) 
(setq c-default-style '((java-mode . "java")
			(awk-mode . "awk")
			(other . "k&r")))



(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-echo-syntactic-information-p t)
 '(c-ignore-auto-fill (quote (cpp)))
 '(c-syntactic-indentation t)
 '(column-number-mode t)
 '(erc-email-userid "kangas")
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom smiley stamp track unmorse)))
 '(erc-nick "haddoque")
 '(erc-nick-uniquifier "_^_^_")
 '(hippie-expand-try-functions-list (quote (try-expand-dabbrev try-expand-list try-expand-line try-expand-dabbrev-all-buffers try-complete-file-name-partially try-complete-file-name)))
 '(inhibit-startup-screen t)
 '(magit-commit-signoff t)
 '(paren-highlight-offscreen t)
 '(paren-message-linefeed-display "^J")
 '(show-paren-mode t)
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 20) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (set-background-color "black"))))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(background "blue")
 '(font-lock-builtin-face ((((class color) (background dark)) (:foreground "Turquoise"))))
 '(font-lock-comment-face ((t (:foreground "MediumAquamarine"))))
 '(font-lock-constant-face ((((class color) (background dark)) (:bold t :foreground "DarkOrchid"))))
 '(font-lock-doc-string-face ((t (:foreground "green2"))))
 '(font-lock-function-name-face ((t (:foreground "SkyBlue"))))
 '(font-lock-keyword-face ((t (:bold t :foreground "CornflowerBlue"))))
 '(font-lock-preprocessor-face ((t (:italic nil :foreground "CornFlowerBlue"))))
 '(font-lock-reference-face ((t (:foreground "DodgerBlue"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen"))))
 '(font-lock-type-face ((t (:foreground "#9290ff"))))
 '(font-lock-variable-name-face ((t (:foreground "PaleGreen"))))
 '(font-lock-warning-face ((((class color) (background dark)) (:foreground "yellow" :background "red"))))
 '(highlight ((t (:background "CornflowerBlue"))))
 '(list-mode-item-selected ((t (:background "gold"))))
 '(makefile-space ((t (:background "wheat"))))
 '(mode-line ((t (:background "Navy"))))
 '(paren-match ((t (:background "darkseagreen4"))))
 '(region ((t (:background "DarkSlateBlue"))))
 '(show-paren-match ((t (:foreground "black" :background "wheat"))))
 '(show-paren-mismatch ((((class color)) (:foreground "white" :background "red"))))
 '(speedbar-button-face ((((class color) (background dark)) (:foreground "green4"))))
 '(speedbar-directory-face ((((class color) (background dark)) (:foreground "khaki"))))
 '(speedbar-file-face ((((class color) (background dark)) (:foreground "cyan"))))
 '(speedbar-tag-face ((((class color) (background dark)) (:foreground "Springgreen"))))
 '(vhdl-speedbar-architecture-selected-face ((((class color) (background dark)) (:underline t :foreground "Blue"))))
 '(vhdl-speedbar-entity-face ((((class color) (background dark)) (:foreground "darkGreen"))))
 '(vhdl-speedbar-entity-selected-face ((((class color) (background dark)) (:underline t :foreground "darkGreen"))))
 '(vhdl-speedbar-package-face ((((class color) (background dark)) (:foreground "black"))))
 '(vhdl-speedbar-package-selected-face ((((class color) (background dark)) (:underline t :foreground "black"))))
 '(widget-field ((((class grayscale color) (background light)) (:background "DarkBlue")))))
;;(load "/usr/share/emacs/site-lisp/emacs-goodies-el/color-theme.el")
;; (load "/usr/share/emacs/site-lisp/color-theme/color-theme.el")
;;(load "/usr/share/emacs/site-lisp/color-theme/themes/color-theme-library.el")

(color-theme-ld-dark)
(global-set-key [M-return] 'hippie-expand)

(global-set-key (kbd "<C-tab>") 'cyclebuffer-forward)
(global-set-key (kbd "<C-M-tab>") 'cyclebuffer-backward)
(global-set-key (kbd "M-q") 'indent-region)
(global-set-key (kbd "M-w") 'copy-region-as-kill)
(global-set-key (kbd "C-.") 'tags-search)
(setq which-func-modes '(actionscript-mode python-mode emacs-lisp-mode c-mode c++-mode perl-mode cperl-mode makefile-mode sh-mode fortran-mode java-mode))

(which-function-mode t) 

;; Insert functions
;;(global-unset-key "\C-h")

;; Insert new file header (author)
(global-set-key "\C-h\C-n" 'insert-file-header)

;; Insert new file header in form file
(global-set-key "\C-h\C-f" 'insert-file-header-form)

;; Change file header (author)
(global-set-key "\C-h\C-c" 'change-file-header)

;; Insert doxymacs function comment
(global-set-key "\C-c d f" 'doxymacs-insert-function-comment)
;; Insert doxymacs member comment
(global-set-key "\C-c d ;" 'doxymacs-insert-member-comment)
;; Insert doxymacs file comment
(global-set-key "\C-c d i" 'doxymacs-insert-file-comment)
;; Comment current region
(global-set-key "\C-c d c" 'doxymacs-insert-grouping-comment)

(setq tramp-default-method "ssh")

(defun insert-file-header () (interactive)
  (beginning-of-buffer)
  (insert "// Copyright (C) 2009 Pontus Sköldström <pontus.skoldstrom@acreo.se>.\n")
  (insert "// Licensed under the GNU GPL Version 2.\n")
  (insert "//\n")
  (insert "// Modified by Pontus Sköldström <pontus.skoldstrom@acreo.se>\n")
  (insert "// First added:  ")
  (insert (format-time-string "%Y-%m-%d\n"))
  (insert "// Last changed: ")
  (insert (format-time-string "%Y-%m-%d\n")))

(defun insert-file-header-form () (interactive)
  (beginning-of-buffer)
  (insert "# Copyright (C) 2009 Pontus Sköldström <pontus.skoldstrom@acreo.se>.\n")
  (insert "# Licensed under the GNU GPL Version 2.\n")
  (insert "#\n")
  (insert "# Modified by Pontus Sköldström <pontus.skoldstrom@acreo.se>\n")
  (insert "# First added:  ")
  (insert (format-time-string "%Y-%m-%d\n"))
  (insert "# Last changed: ")
  (insert (format-time-string "%Y-%m-%d\n")))

(defun change-file-header () (interactive)
  (beginning-of-buffer)
  (goto-line 4)
  (kill-line 1)
  (insert "// Modified by Pontus Sköldström <pontus.skoldstrom@acreo.se>\n")
  (forward-line 1)
  (kill-line 1)
  (insert "// Last changed: ")
  (insert (format-time-string "%Y-%m-%d\n")))

(global-font-lock-mode 1)
(setq which-func-modes '(actionscript-mode python-mode emacs-lisp-mode c-mode c++-mode perl-mode cperl-mode makefile-mode sh-mode fortran-mode java-mode))
(which-function-mode t)
;;; (load-file /usr/share/emacs/site-lisp/pager.el)
;;(require 'pager)
;;(global-set-key "\C-v"	   'pager-page-down)
;; (global-set-key [next] 	   'pager-page-down)
;; (global-set-key "\ev"	   'pager-page-up)
;; (global-set-key [prior]	   'pager-page-up)
;; (global-set-key '[M-up]    'pager-row-up)
;; (global-set-key '[M-kp-8]  'pager-row-up)
;; (global-set-key '[M-down]  'pager-row-down)
;; (global-set-key '[M-kp-2]  'pager-row-down)
(global-set-key '[f9]  'compile)
;; (when (or (string-match "XEmacs\\|Lucid" emacs-version) window-system)
;;   (require 'mic-paren)			; loading
;;   (paren-activate)			; activating
;;; set here any of the customizable variables of mic-paren, e.g.:
;;; ...
;; )  

;;; highlight TODO, FIXME
(defface my-fixme-face
  '((t :background "red" :foreground "white" :weight bold))
  "Font for showing FIXME and XXX words."
  :group 'basic-faces)

(defface my-todo-face
  '((t :background "red" :foreground "black" :weight bold))
  "Font for showing TODO words."
  :group 'basic-faces)
(defface my-done-face
  '((t :background "green" :foreground "white" :weight bold))
  "Font for showing DONE words."
  :group 'basic-faces)

(add-hook 'font-lock-mode-hook (function (lambda ()
					   (unless (or (eq 'diff-mode major-mode) (eq 'script-mode major-mode))
					     (font-lock-add-keywords nil	
								     '(("\\<\\(TODO:?\\)\\>" 1 'my-todo-face t)	
								       ("\\<\\(DONE:?\\)\\>" 1 'my-done-face t)	
								       ("\\<\\(FIXME:?\\|XXX\\)\\>" 1 'my-fixme-face t)
								       )))))) 

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t)
(autoload 'tex-mode-flyspell-verify "flyspell" "" t) 
(setq-default ispell-program-name "aspell")
(setq-default ispell-extra-args '("--mode=tex"))

;;(setq load-path (cons "~/xref/xref/emacs" load-path))
;;(setq exec-path (cons "~/xref/xref" exec-path))
;;(load "xrefactory")
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "detex | wc -w"))


(setq cscope-do-not-update-database t)
(load-file "/usr/share/emacs/site-lisp/xcscope.el")

;; some Xrefactory defaults can be set here
;; (defvar xref-current-project nil) ;; can be also "my_project_name"
;; (defvar xref-key-binding 'global) ;; can be also 'local or 'none
;; (setq load-path (cons "/home/eponsko/xref/emacs" load-path))
;; (setq exec-path (cons "/home/eponsko/xref" exec-path))
;; (load "xrefactory")
;; end of Xrefactory configuration partf ;;
;; (message "xrefactory loaded")
;; (setq compile-command "ssh root@r1 \"cd /home/eponsko/trunk/dragon-sw/kom-rsvp ; make clean && make &&  make install\"")
(setq compilation-scroll-output t)
(fset 'yes-or-no-p 'y-or-n-p)


(defun pontus-c-mode ()
  "C mode with adjusted defaults for use when Pontus hacks."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 2)
  (global-set-key "\r" 'newline-and-indent)
  (global-set-key "\M-d" 'c-kill-word)
  
  ;; Set line width to 120 columns...
  (setq fill-column 120)
  (setq auto-fill-mode t)
  )

(setq auto-mode-alist (cons '("/home/eponsko/tmp.*/.*\\.(cc|c|h)$" . linux-c-mode)
			    auto-mode-alist))

(defun pfold-hide ()
  "Fold level 2"
  (interactive)
  (set-selective-display 2)
  )

(defun pfold-one ()
  "Fold level 1"
  (interactive)
  (set-selective-display 1)
  )

(defun pfold-show ()
  "Fold level 0"
  (interactive)
  (set-selective-display nil)
  )

(global-set-key '[C-kp-subtract] 'pfold-hide)
(global-set-key '[C-kp-add] 'pfold-show)
(global-set-key '[C-kp-multiply] 'pfold-one)

(defun kill-whitespace ()
  "Kill the whitespace between two non-whitespace characters"
  (interactive "*")
  (save-excursion
    (save-restriction
      (save-match-data
	(progn
	  ;;	  (re-search-backward "[^ \t\r\n]" nil t)
	  (re-search-forward "[ \t\r\n]+" nil t)
	  (replace-match "" nil nil))))))

(global-set-key '[C-delete] 'kill-whitespace)
(global-set-key [f6] 'start-kbd-macro)
(global-set-key [f7] 'end-kbd-macro)
(global-set-key [f5] 'kmacro-end-and-call-macro)
(global-set-key "\C-x\C-q" 'save-buffers-kill-emacs)
(global-set-key "\C-x\C-m" 'magit-status)
(global-unset-key "\C-x\C-c")
;;(if (= emacs-major-version 23)(require 'w3m-load))



;;(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'git))

;; (autoload 'git-blame-mode "git-blame"
;; "Minor mode for incremental blame for Git." t)

(add-to-list 'load-path "~/.emacs.d/circe/")
(autoload 'circe "circe" "Connect to an IRC server" t)

;; This defines the password variables below
;;(setq circe-default-realname "http://www.forcix.cx/"
;;      circe-ignore-list nil
;;      circe-server-coding-system '(latin-1 . undecided)
;;      )

;;(setq lui-max-buffer-size 30000
;;      lui-flyspell-p t)
     

;;(eval-after-load "circe"
;;  '(progn
;;     (require 'lui-irc-colors)
;;     (add-to-list 'lui-pre-output-hook 'lui-irc-colors)
;;     (add-to-list 'circe-receive-message-functions)))

(defun irc ()
  "Connect to IRC."
  (interactive)
  (circe "irc.du.se" "6667" "EFnet" ))

(require 'w3m-e21)
(provide 'w3m-e23)
