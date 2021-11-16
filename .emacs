;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("org" . "https://orgmode.org/elpa/")))
 '(package-selected-packages '(auctex dash ox-pandoc org-bullets)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   t)

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(setq x-select-enable-clipboard t)

(progn
  (require 'windmove)
  ;; use Shift+arrow_keys to move cursor around split panes
  (windmove-default-keybindings)
  ;; when cursor is on edge, move to the other side, as in a torus space
  (setq windmove-wrap-around t )
)

;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(defalias 'list-buffers 'ibuffer) ; make ibuffer default

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)

;;Clear the eshell buffer.
(defun eshell/clear ()      
   (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))


;; View preferences
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-face-attribute 'default nil :height 180)
(setq org-src-fontify-natively t)

;; Mac options
(setq ispell-program-name "/opt/homebrew/bin/ispell")

;; LATEX setup - Mac Specific
(setq tex-dvi-view-command "/Users/jimm/bin/latex-view '*'")
(setq org-latex-listings 't)
;;(setq org-highlight-latex-and-related '(latex script entities))

(getenv "PATH")
 (setenv "PATH"
(concat
 "/Library/TeX/texbin/" ":"
(getenv "PATH")))

(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
             '("org-plain-latex"
               "\\documentclass{article}")))
