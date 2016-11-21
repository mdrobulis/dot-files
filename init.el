(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents )

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(setq projectile-indexing-method 'native)
(projectile-global-mode)


;; IDO search matcher
(unless (package-installed-p 'flx-ido)
  (package-install 'flx-ido))

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)



(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(unless (package-installed-p 'ac-cider)
  (package-install 'ac-cider))

(unless (package-installed-p 'org-bullets)
  (package-install 'org-bullets))

(unless (package-installed-p 'org-journal)
  (package-install 'org-journal))

(unless (package-installed-p 'better-defaults)
  (package-install 'better-defaults))


;; THEME & STYLE
(unless (package-installed-p 'sublime-themes)
  (package-install 'sublime-themes))

(load-theme 'fogus t)

(set-default-font "DejaVu Sans Mono-11")

(global-linum-mode t)

(setq linum-format "%4d \u2502")

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'paredit)
(add-hook 'clojure-mode-hook (lambda () (paredit-mode 1)))


;; General Auto-Complete
(require 'auto-complete-config)
(setq ac-delay 0.0)
(ac-config-default)
(setq ac-quick-help-delay 0.5)

;; LAZYNES for yes no questions
(defalias 'yes-or-no-p 'y-or-n-p)

