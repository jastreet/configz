
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
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-archives
   (quote
    (("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("org" . "https://orgmode.org/elpa/"))))
 '(package-selected-packages
   (quote
n    (org-alert org-emms org-notebook org-noter org-outline-numbering org-bullets auctex org-plus-contrib org org-starter org-pdfview slime ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

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

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(defalias 'list-buffers 'ibuffer) ; make ibuffer default

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)

;;Clear the eshell buffer.
(defun eshell/clear ()      
   (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))

