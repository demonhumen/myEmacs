
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kdb "<f5>") 'open-my-init-file)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbb "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key "\C-x\ \C-r" 'recentf-open-(global-set-key (kbd "C-c p f") 'counsel-git))

(global-set-key (kbd "C-c a") 'org-agenda)
(provide 'init-keybindings)
