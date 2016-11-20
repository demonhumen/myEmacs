
(global-auto-revert-mode t)

(global-linum-mode t)
(global-hl-line-mode t)

(setq ring-bell-function 'ignore)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(

                                            ("8az" "azhin")

                                            )
  )

(recentf-mode t)
(setq recentf-max-menu-items 25)

(setq make-backup-files nil)

(setq auto-save-default nil)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)
(provide init-better-defaults)
