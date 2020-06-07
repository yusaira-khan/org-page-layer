(defconst org-page-packages
  '((org-page :location (recipe :fetcher local)))

  "The list of Lisp packages required by the org-page layer."
)


;;; packages.el ends here
(defun org-page/init-org-page ()
  (spacemacs/declare-prefix "ab" "blog")
  (use-package org-page
    :config (progn (setq op/repository-directory "~/Github/blog"
                         op/load-directory "~/.emacs.d/layers/org-page/local/org-page"
                         op/site-main-title "Yusaira's Blog"
                         op/site-sub-title "I don't know?"
                         op/site-domain "yusaira.ca/blog/"
                         op/theme 'mdo
                         op/personal-disqus-shortname "yusaira-ca"
                         op/theme-root-directory "~/.emacs.d/layers/org-page/local/org-page/themes"
                         op/personal-github-link "http://github.com/yusaira-khan")
                   (spacemacs/set-leader-keys
                     "abp" 'op/do-publication-and-preview-site
                     "abP" 'op/do-publication
                     "abn" 'op/new-post))))
