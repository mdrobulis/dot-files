(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents )

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

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
(setq ac-quick-help-delay 0.5)
(ac-config-default)


