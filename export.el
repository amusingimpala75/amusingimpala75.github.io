;;; Website-Export --- Org mode to webpage exporting tool for my website
;;; Commentary:
;;; exports the org files into the export folder and copies them with the
;;; assets
;;; Code:
(require 'org)
(require 'htmlize)
(require 'nix-mode)

;; Configuring org mode export settings
(setq org-src-fontify-natively t
      org-html-htmlize-output-type 'css
      org-html-style "<link rel=\"alternative stylesheet\" type=\"text/css\" href=\"/assets/style.css\""
      org-html-postamble nil
      org-html-self-link-headlines t)

;; Remove old export if present
(when (and (file-exists-p "./export") (file-directory-p "./export"))
  (delete-directory "./export" t))

;; Recursively
(let ((files (directory-files-recursively "." ".*\\.org" nil (lambda (x) (string-match "^\\./export/.*" x)))))
  (dolist (file files)
    (let* ((in-buf (find-file file))
           (out-buf (org-html-export-as-html))
           (out-name (concat "./export/" (file-name-sans-extension file) ".html"))
           (out-parent (file-name-parent-directory out-name)))
      (mkdir out-parent t)
      (write-file out-name)
      (kill-buffer in-buf)
      (kill-buffer out-buf))))

(copy-directory "./assets/" "./export/assets")

(provide 'export)
;;; export.el ends here
