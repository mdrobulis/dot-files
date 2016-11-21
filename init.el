(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents )

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'ac-cider)
  (package-install 'ac-cider))

(unless (package-installed-p 'org-bullets)
  (package-install 'org-bullets))

(unless (package-installed-p 'sublime-themes)
  (package-install 'sublime-themes))

(unless (package-installed-p 'better-defaults)
  (package-install 'better-defaults))


(unless (package-installed-p 'sublime-themes)
  (package-install 'sublime-themes))

(unless (package-installed-p 'avk-emacs-themes)
  (package-install 'avk-emacs-themes))

;;(load-theme 'hickey t)
(load-theme 'avk-darkblue-white t)


(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))



