(package-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode -1)
(linum-mode t)
(setq inhibit-splash-screen t)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kdb "<f5>") 'open-my-init-file)

(global-company-mode t)

(setq-default cursor-type 'b

(setq make-backup-files nil)

(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)

(setq initial-frame-alist (quote ((fullscreen , maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-linum-mode t)

(custom-set-variables
 '(package-selected-packages (quote (company))))
(custom-set-faces
 )
