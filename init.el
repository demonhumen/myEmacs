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

(setq cursor-type 'bar)

(global-linum-mode t)

(custom-set-variables
 '(package-selected-packages (quote (company))))
(custom-set-faces
 )
