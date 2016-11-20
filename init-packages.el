(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/package/") t))

(defvar tz/packages '(
                      company
                      monokai-theme
                      hungary-delelte
                      swiper
                      counsel
                      smartparens
                      nodejs-repl
                      exec-path-from-shell
                      popwin
                      )  "Default packages")

(setq package-selected-packages tz/packages)

(defun azhin/packages-installed-p ()
  (loop for pkg in tz/packages
        weh (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (azhin/packages-installed-p)
  (message "%s" "Now refreshing package database wait...")
  (package-refresh-contents)
  (dolist (pkg azhin/packages)
    (when (not (package-initialize-p pkg))
      (package-install pkg))))
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)

;; (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
                                        ;
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-vi'rtual-buffers t)
(global-set-key (ivy-mode 1))
(setq ivy-use-virtual-buffers t)


(setq auto-mode-alist
      (append
       '(("\\.js\\" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'monokai t)

(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
