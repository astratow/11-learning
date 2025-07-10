(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "https://orgmode.org/elpa/")))
(package-initialize)
(use-package flycheck
  :hook (lsp-mode . flycheck-mode)
  :bind (:map flycheck-mode-map
	      ('M-n' . flycheck-previous-error)
	      ('M-p' . flycheck-next-error))
  :custom (flycheck-display-errors-delay .3))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((prog-mode . lsp-deferred)
	 (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (read-process-output-max (* 1024 1024))
  :init
  (setq lsp-completion-provider :none)
  (setq lsp-keymap-prefix "C-c")
  (setq lsp-diagnostics-provider :flycheck))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))
;; Basic Org config
(require 'org)
(setq org-log-done 'time)
(setq org-hide-leading-stars t)
(setq org-startup-indented t)
(setq org-directory "~/projects")
(setq org-default-notes-file (concat org-directory "/inbox.org"))
(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode))

;; Keybindings for fast workflow
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; Enable syntax highlighting in code blocks
(setq org-src-fontify-natively t)
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))
(setq org-agenda-files '("~/projects/11-learning/6-week-plan.org"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(i)" "WAIT(w)" "|" "DONE(d)" "CANCELED(c)")))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/projects/inbox.org" "Tasks")
         "* TODO %?\n  %U\n  %a")))
(global-set-key (kbd "C-c a") 'org-agenda)
(run-with-idle-timer 300 t 'org-save-all-org-buffers)
(add-hook 'org-mode-hook 'org-indent-mode)
;; programming setup
(use-package which-key
  :ensure t
  :config
  (which-key-mode))
(use-package php-mode
  :ensure t
  :hook (php-mode . lsp-deferred))

(use-package lsp-mode
  :ensure t
  :commands lsp)

;; Optional for Laravel Blade files
(use-package web-mode
  :ensure t
  :mode ("\\.blade\\.php\\'" . web-mode))
;; JS setup
(use-package typescript-mode
  :ensure t
  :mode ("\\.ts\\'" . typescript-mode)
  :hook (typescript-mode . lsp-deferred))

(use-package js-mode
  :ensure nil ;; built-in
  :hook (js-mode . lsp-deferred))

(use-package web-mode
  :ensure t
  :mode (("\\.vue\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
         ("\\.jsx\\'" . web-mode)))

;; For Vue/Nuxt/Angular/React
(add-hook 'web-mode-hook #'lsp-deferred)

(use-package company
  :ensure t
  :config
  (global-company-mode))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package treemacs
  :ensure t)

(use-package lsp-treemacs
  :after lsp)

(global-set-key (kbd "C-x t t") #'treemacs)

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))
