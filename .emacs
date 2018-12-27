;; Modules

; Enable elpy
(package-initialize)
(elpy-enable)

; Enable Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Global shortcuts

(global-set-key (kbd "M-x") #'helm-M-x)

(global-set-key [M-down] 'windmove-down)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-tab] 'other-window)

(defhydra hydra-zoom (global-map "C-x w")
  "resize window"
  ("0" (lambda() (interactive) (enlarge-window 2)))
  ("9" (lambda() (interactive) (shrink-window 2)))
  ("<up>" (lambda() (interactive) (enlarge-window 2)))
  ("<down>" (lambda() (interactive) (shrink-window 2)))
  ("]" (lambda() (interactive) (enlarge-window-horizontally 2)))
  ("[" (lambda() (interactive) (shrink-window-horizontally 2)))
  ("<right>" (lambda() (interactive) (enlarge-window-horizontally 2)))
  ("<left>" (lambda() (interactive) (shrink-window-horizontally 2))))

(global-set-key (kbd "S-C-<left>") (kbd "C-u 5 C-x {"))
(global-set-key (kbd "S-C-<right>") (kbd "C-u 5 C-x }"))
(global-set-key (kbd "S-C-<down>") (kbd "C-u 5 C-x 0"))  ; FIXME: hotkey does not work
(global-set-key (kbd "S-C-<up>") (kbd "C-u 5 C-x 9"))    ; FIXME: hotkey does not work

;(global-set-key [C-tab] 'switch-to-previous-buffer)
(global-set-key [C-tab] 'ido-switch-buffer)
(global-set-key [C-f4] 'kill-this-buffer)
(global-unset-key (kbd "M-`"))
(global-set-key (kbd "M-q") 'kill-this-buffer)
(global-set-key (kbd "C-w") 'backward-delete-word)
(global-set-key [C-prior] 'switch-to-previous-buffer)
;(global-set-key (kbd "C--")  'switch-to-next-buffer)
;(global-set-key (kbd "C-=") 'switch-to-previous-buffer)
(global-set-key [C-next]  'switch-to-next-buffer)
(global-set-key [f2] 'save-buffer)

(global-set-key [S-f4] 'delete-window)
(global-set-key (kbd "M-w") 'delete-window)
(global-set-key [C-S-f4] 'kill-buffer-and-window)
(global-set-key [f5] 'delete-other-windows)
(global-set-key [S-f5] 'split-window-below)
(global-set-key [C-f5] 'split-window-right)
(global-set-key [f6] 'window-toggle-split-direction)

;(global-set-key (kbd "C-b") 'buffer-menu)
(global-set-key (kbd "C-b") 'ibuffer)
(global-set-key (kbd "C-`") 'helm-buffers-list)
(global-set-key (kbd "C-@") 'helm-buffers-list) ;; in text mode same as above
;(global-set-key (kbd "C-a") 'switch-to-buffer)
(global-set-key (kbd "C-a") 'move-beginning-of-line)
(global-set-key (kbd "C-x <C-up>") 'switch-to-last-buffer)
(global-set-key (kbd "C-x 9") 'shrink-window)
(global-set-key (kbd "C-x 0") 'enlarge-window)

(global-set-key (kbd "C-y") 'delete-line)
(global-set-key (read-kbd-macro "<M-DEL>") 'backward-delete-word)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)
(global-set-key (kbd "C--") 'highlight-symbol-at-point)
(global-set-key (kbd "C-0") 'highlight-symbol-next-and-center)
(global-set-key (kbd "C-9") 'highlight-symbol-prev-and-center)
(global-set-key (kbd "C-_") 'highlight-symbol-at-point)
(global-set-key (kbd "C-\\") 'forward-or-backward-sexp)
(global-set-key (kbd "C-'") 'isearch-forward-at-point)
(global-set-key [f3] 'set-mark-command)
(global-set-key [C-f3] 'kmacro-start-macro-or-insert-counter) ; XXX doesn't bind in text mode

(global-set-key [f7] 'find-file-in-project)
(global-set-key [C-f7] 'search-all-buffers)
(global-set-key [f9] 'compile)
(global-set-key [M-f10] 'toggle-menu-bar-mode-from-frame)
(global-set-key [f11] 'helm-bookmarks)
(global-set-key [M-f11] 'bookmark-bmenu-list)
(global-set-key [C-f11] 'bookmark-set)

(global-set-key (kbd "M-c") 'copy-region-as-kill)
(global-set-key (kbd "M-C") 'copy-symbol-as-kill)
(global-set-key (kbd "C-M-L") 'copy-line-as-kill)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-z") 'kill-region)
(global-set-key (kbd "C-M-d") 'pwd)

(global-set-key (kbd "M-i") 'helm-imenu)
(global-set-key (kbd "M-,") 'pop-tag-mark)
(global-set-key (kbd "M-<") 'beginning-of-buffer)
(global-set-key (kbd "M->") 'end-of-buffer)
(global-set-key (kbd "M-?") 'rgrep)
;(global-set-key (kbd "M-\"") 'helm-ag-project-root)
(global-set-key (kbd "M-\"") 'ag-project-regexp)
(global-set-key [M-f7] 'find-name-dired)
(global-set-key (kbd "M-l") 'goto-line)
(global-set-key (kbd "C-r") 'isearch-backward-regexp) ; search regex by default
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "C-s") 'isearch-forward-regexp) ; search regex by default
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-c C-r") 'revert-buffer)
(global-set-key (kbd "M-N") 'scroll-up-line)
(global-set-key (kbd "M-P") 'scroll-down-line)
(global-set-key (kbd "C-c C-d") 'duplicate-line)
(global-set-key (kbd "C-c C-w") 'toggle-truncate-lines)
(global-set-key (kbd "C-c C-s") 'toggle-case-fold-search)
(global-set-key (kbd "C-c C-l") 'downcase-word)
(global-set-key (kbd "C-c C-g") 'toggle-grep-in-generate)

;; Magit shortcuts
(global-set-key [f8] 'magit-status)
(global-set-key [M-f8] 'magit-diff-buffer-file)
(global-set-key [S-f8] 'magit-log-buffer-file)
(global-set-key [C-S-f8] 'magit-blame)
(global-set-key (kbd "C-c m b") 'magit-blame)
(global-set-key (kbd "C-c m l") 'magit-log-buffer-file)
(global-set-key (kbd "C-c m d") 'magit-diff-buffer-file)
(require 'magit)
(define-key magit-diff-mode-map (kbd "C-c C-r") 'magit-diff-toggle-refine-hunk)
(define-key magit-status-mode-map (kbd "C-c C-r") 'magit-diff-toggle-refine-hunk)

;; ISearch mode hotkeys
;(define-key isearch-mode-map (kbd "C-S-s") 'isearch-repeat-backward)
(define-key isearch-mode-map (kbd "M-v") 'isearch-yank-kill)
(define-key isearch-mode-map "\C-f" 'isearch-repeat-forward)
(define-key isearch-mode-map [f3] 'isearch-repeat-forward)
(define-key isearch-mode-map [f4] 'isearch-repeat-backward)

;; Normal scrolling that moves point at the beginning/end of buffer.
(global-set-key [next]
  (lambda () (interactive)
    (condition-case nil (scroll-up)
      (end-of-buffer (goto-char (point-max))))))

(global-set-key [prior]
  (lambda () (interactive)
    (condition-case nil (scroll-down)
      (beginning-of-buffer (goto-char (point-min))))))

(define-key ctl-x-4-map (kbd "t") 'transpose-windows)

;; Icicles shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(dolist (map (append (list minibuffer-local-completion-map
                           minibuffer-local-must-match-map)
                     (list minibuffer-local-filename-completion-map)))
  (define-key map [up] 'previous-history-element)
  (define-key map [down] 'next-history-element))

;; CC mode shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun cc-mode-shortcuts ()
  (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
  (define-key c-mode-base-map (kbd "S-RET") 'open-line)
  (define-key c-mode-base-map (kbd "C-c TAB") 'indent-region)
;  (define-key c-mode-base-map [tab] 'mOBy-indent-or-complete)
;  (define-key c-mode-base-map [backtab] 'my-unindent)
;  (define-key c-mode-base-map [M-up] 'c-beginning-of-defun)
;  (define-key c-mode-base-map [M-down] 'c-end-of-defun)
;  (define-key c-mode-base-map [f1] 'semantic-mrub-switch-tags)
;  (define-key c-mode-base-map [f3] 'semantic-ia-fast-jump)
  (define-key c-mode-base-map (kbd "C-w") 'backward-delete-word-cc)
  (define-key c-mode-base-map [C-backspace] 'backward-delete-word-cc)
  (define-key c-mode-base-map [M-backspace] 'delete-horizontal-space)
  (define-key c-mode-base-map (kbd "M-DEL") 'delete-horizontal-space)
  (define-key c-mode-base-map (kbd "M-d") 'delete-word-cc)
;  (define-key c-mode-base-map [C-delete] 'delete-word)
  (define-key c-mode-base-map [C-delete] 'kill-word)
  (define-key c-mode-base-map [M-delete] 'delete-horizontal-space-forward)
;  (define-key c-mode-base-map (kbd "<S-SPC>") 'semantic-ia-complete-symbol-menu)
  (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
  (define-key c-mode-base-map (kbd "M-h") 'eassist-switch-h-cpp)
  (define-key c-mode-base-map [C-up] 'c-beginning-of-defun)
  (define-key c-mode-base-map [C-down] 'c-end-of-defun)
  (define-key c-mode-base-map [home] 'smart-home)

;  (define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods)
;  (define-key c-mode-base-map (kbd "C-o") 'helm-imenu)
  (define-key c-mode-base-map (kbd "C-c C-d") 'duplicate-line)
  (define-key c-mode-base-map (kbd "C-c C-f") 'hs-toggle-hiding)
  (define-key c-mode-base-map (kbd "C-c C-u") 'uncomment-region)
  ;(define-key c-mode-base-map  (kbd "M-,") 'rtags-location-stack-back)
  ;(define-key c-mode-base-map  (kbd "M-;") 'rtags-find-references-at-point)
  ;(define-key c-mode-base-map (kbd "C-c r r") 'rtags-references-tree)
  (define-key c-mode-base-map  (kbd "M-,") 'pop-tag-mark)
  ;(define-key c-mode-base-map  (kbd "M-;") 'rtags-find-references-at-point)

  (define-key c-mode-base-map (kbd "M-b") 'skip-backward)
  (define-key c-mode-base-map (kbd "M-f") 'skip-forward)
)

(add-hook 'c-mode-common-hook 'cc-mode-shortcuts)

;; Python mode shortcuts
(define-key elpy-mode-map [M-up] nil)
(define-key elpy-mode-map [M-down] nil)
(define-key elpy-mode-map [M-left] nil)
(define-key elpy-mode-map [M-right] nil)
(define-key elpy-mode-map (kbd "M-i") 'elpy-occur-definitions)
(define-key elpy-mode-map (kbd "M-\r") 'electric-indent-just-newline)
(define-key elpy-mode-map (kbd "C-c C-d") 'duplicate-line)
(define-key elpy-mode-map (kbd "C-c C-r") 'revert-buffer)

;; Groovy mode shortcuts
(defun groovy-mode-shortcuts ()
  (define-key groovy-mode-map (kbd "C-c C-r") 'revert-buffer)
)
(add-hook 'groovy-mode-hook
          '(lambda ()
             (groovy-mode-shortcuts)))

;; Org mode shortcuts
(require 'org)
(define-key org-mode-map (kbd "C-y") 'delete-line)


;; Settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                          ;; ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(add-to-list 'load-path "~/.emacs.d/lisp")

;(load-library "buff-menu") ;; hack: required for buff-menu+
;(require 'buff-menu+)
(require 'highlight-symbol)
(require 'eassist)

(setq-default truncate-lines t) ;; disable word wrapping
(setq scroll-step 1)    ;; scroll by line, not half-pages
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(electric-pair-mode)
(setq column-number-mode t)
(display-time-mode 1)
(setq dired-listing-switches "-lXGh --group-directories-first") ; Show directories first in dired
(setq compilation-scroll-output t)
;(setq Buffer-menu-sort-column 1)

; Prefer vertical split and disable meaningless splitting in compilation mode
(setq split-height-threshold 130) ; (orig: 80)
(setq split-width-threshold nil)  ; (orig: 160)

(defalias 'yes-or-no-p 'y-or-n-p) ; Ask y/n instead of yes/no

; Deal with temporary files. I don't care about them and this makes them go away.
(setq make-backup-files nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

; start server
(load "server")
(unless (server-running-p) (server-start))

;;;;; C/C++ mode settings

(defun cc-mode-settings ()
  (setq-default indent-tabs-mode nil) ;; indent with spaces
;  (standard-display-ascii ?\t "^I")   ;; visible tabs
 (standard-display-ascii ?\t "\t")
  (hs-minor-mode 1)
  ;; Put the brackets <> in the word class, so as to remove their interpretation as delimiters
  (modify-syntax-entry ?< ".")
  (modify-syntax-entry ?> ".")
  (modify-syntax-entry ?[ ".")
  (modify-syntax-entry ?] ".")
)

(add-hook 'c-mode-common-hook 'cc-mode-settings)

;; Enable ggtags
(add-hook 'c-mode-common-hook
  (lambda ()
    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                    (ggtags-mode 1))))

;; Fix jerky scrolling
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)

;; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun toggle-grep-in-generate ()
  "Toggle grepping in the 'generated' subdirectory."
  (interactive)

  (print grep-find-ignored-directories)
  (if (member "generated" grep-find-ignored-directories)
      (progn
        (setq grep-find-ignored-directories (delete "generated" grep-find-ignored-directories))
        )
        (progn
          (add-to-list 'grep-find-ignored-directories "generated")
          )
        )
  )

(add-to-list 'grep-find-ignored-directories "generated")
(setq grep-find-ignored-directories (delete "generated" grep-find-ignored-directories))


(defun delete-line ()
  (interactive)
  (let ((beg (line-beginning-position))
        (loff (- (point) (line-beginning-position)))) ; save position within the line
    (forward-line 1)
    (delete-region beg (point))
    ; move point to where it was on the line we've deleted
    (forward-char (min (- (line-end-position) (line-beginning-position)) loff))))

;; Delete a word backwards or forwards
(defun delete-word (arg)
    "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
    (interactive "p")
      (delete-region (point) (progn (forward-word arg) (point))))
(defun backward-delete-word (arg)
    "Delete characters backward until encountering the beginning of a word.
With argument, do this that many times."
    (interactive "p")
    (delete-region (point) (progn (backward-word arg) (point))))
(defun backward-delete-word-cc ()
    (interactive)
    (delete-region (point) (progn (skip-backward) (point))))
(defun delete-word-cc ()
    (interactive)
    (delete-region (point) (progn (skip-forward) (point))))

;; Go to matching paren
(defun forward-or-backward-sexp (&optional arg)
  "Go to the matching parenthesis character if one is adjacent to point."
  (interactive "^p")
  (cond ((looking-at "\\s(") (forward-sexp arg))
        ((looking-back "\\s)" 1) (backward-sexp arg))
        ;; Now, try to succeed from inside of a bracket
        ((looking-at "\\s)") (forward-char) (backward-sexp arg))
        ((looking-back "\\s(" 1) (backward-char) (forward-sexp arg))))

;; Smart next/prev buffer
(defun next-code-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (next-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (next-buffer))))
(defun prev-code-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (previous-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (previous-buffer))))
(global-set-key [remap switch-to-next-buffer]     'next-code-buffer)
(global-set-key [remap switch-to-previous-buffer] 'prev-code-buffer)

;; Symbol highlighting improvements
(defun highlight-symbol-next-and-center ()
  (interactive)
  (highlight-symbol-next)
  (recenter))

(defun highlight-symbol-prev-and-center ()
  (interactive)
  (highlight-symbol-prev)
  (recenter))

;; Switch to last buffer
(defun switch-to-last-buffer ()
    "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
    (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))

;; ISearch for a word at point
(defvar isearch-initial-string nil)
(defun isearch-set-initial-string ()
  (remove-hook 'isearch-mode-hook 'isearch-set-initial-string)
  (setq isearch-string isearch-initial-string)
  (isearch-search-and-update))
(defun isearch-forward-at-point (&optional regexp-p no-recursive-edit)
  "Interactive search forward for the symbol at point."
  (interactive "P\np")
  (if regexp-p (isearch-forward regexp-p no-recursive-edit)
    (let* ((end (progn (skip-syntax-forward "w_") (point)))
           (begin (progn (skip-syntax-backward "w_") (point))))
      (if (eq begin end)
          (isearch-forward regexp-p no-recursive-edit)
        (setq isearch-initial-string (buffer-substring begin end))
        (add-hook 'isearch-mode-hook 'isearch-set-initial-string)
        (isearch-forward regexp-p no-recursive-edit)))))


;; Search in all buffers
(defun search-all-buffers (regexp)
  (interactive "sRegexp: ")
  (multi-occur-in-matching-buffers "." regexp t))

;; Open .emacs file
(defun init ()
  (interactive)
  (find-file "~/.emacs"))

;; Transpose windows
(defun transpose-windows ()
  "Transpose two windows.  If more or less than two windows are visible, error."
  (interactive)
  (unless (= 2 (count-windows))
    (error "There are not 2 windows."))
  (let* ((windows (window-list))
    (w1 (car windows))
    (w2 (nth 1 windows))
    (w1b (window-buffer w1))
    (w2b (window-buffer w2)))
    (set-window-buffer w1 w2b)
         (set-window-buffer w2 w1b)))

;; Toggle between horizontal and vertical window split
(defun window-toggle-split-direction ()
    "Switch window split from horizontally to vertically, or vice versa.

i.e. change right window to bottom, or change bottom window to right."
    (interactive)
    (require 'windmove)
    (let ((done))
      (dolist (dirs '((right . down) (down . right)))
        (unless done
          (let* ((win (selected-window))
                 (nextdir (car dirs))
                 (neighbour-dir (cdr dirs))
                 (next-win (windmove-find-other-window nextdir win))
                 (neighbour1 (windmove-find-other-window neighbour-dir win))
                 (neighbour2 (if next-win (with-selected-window next-win
                                            (windmove-find-other-window neighbour-dir next-win)))))
            ;;(message "win: %s\nnext-win: %s\nneighbour1: %s\nneighbour2:%s" win next-win neighbour1 neighbour2)
            (setq done (and (eq neighbour1 neighbour2)
                            (not (eq (minibuffer-window) next-win))))
            (if done
                (let* ((other-buf (window-buffer next-win)))
                  (delete-window next-win)
                  (if (eq nextdir 'right)
                      (split-window-vertically)
                    (split-window-horizontally))
                                  (set-window-buffer (windmove-find-other-window neighbour-dir) other-buf))))))))

;; Save region to cooledit.clip
(defun clip ()
    "Save region to cooledit.clip"
    (interactive)
    (write-region (region-beginning) (region-end) (concat (getenv "HOME") "/.mc/cedit/cooledit.clip")))

;; Delete horizontal space forward
(defun delete-horizontal-space-forward () ; adapted from `delete-horizontal-space'
  "*Delete all spaces and tabs after point."
  (interactive "*")
  (delete-region (point) (progn (skip-chars-forward " \t") (point))))

;; Smart HOME key behavior
(defun smart-home()
  (interactive)
  (let (saved-pos)
    (setq saved-pos (point))
    (back-to-indentation)
    (when (= (point) saved-pos) ; already at the first significant char
      (beginning-of-line))))


;; Copy entire line into the kill buffer
(defun copy-line-as-kill ()
      "Copy the whole line that point is on and move to the beginning of the next line.
    Consecutive calls to this command append each line to the
    kill-ring."
      (interactive)
      (let ((beg (line-beginning-position 1))
            (end (line-beginning-position 2))
            (saved_pos (point)))
        (if (eq last-command 'quick-copy-line)
            (kill-append (buffer-substring beg end) (< end beg))
          (kill-new (buffer-substring beg end)))))


;; Duplicate line
(defun duplicate-line (arg)
  "Duplicate current line, leaving point in lower line."
  (interactive "*p")

  ;; save the point for undo
  (setq buffer-undo-list (cons (point) buffer-undo-list))

  ;; local variables for start and end of line
  (let ((bol (save-excursion (beginning-of-line) (point)))
        eol)
    (save-excursion

      ;; don't use forward-line for this, because you would have
      ;; to check whether you are at the end of the buffer
      (end-of-line)
      (setq eol (point))

      ;; store the line and disable the recording of undo information
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        ;; insert the line arg times
        (while (> count 0)
          (newline)         ;; because there is no newline in 'line'
          (insert line)
          (setq count (1- count)))
        )

      ;; create the undo information
      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list)))
    ) ; end-of-let

  ;; put the point in the lowest line and return
  (next-line arg))

;; Create a scratch buffer
(defun scratch ()
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

;; Copy current symbol to kill buffer
(defun copy-symbol-as-kill ()
  "Copy current symbol to kill buffer"
  (interactive)
  (save-excursion
    (copy-region-as-kill (progn (skip-syntax-backward "w_")
                                (point))
                         (progn (skip-syntax-forward "w_")
                                (point)))))


;; Smart movement in C++ mode
(defun get-skip-syntax (pos)
  (let* (
        (cur_syntax (string (char-syntax (char-after pos))))
        (skip_syntax (cond ((string= cur_syntax "w") "w_")
                           ((string= cur_syntax "_") "w_")
                           ((string= cur_syntax "(") " .")
                           ((string= cur_syntax ")") " .")
                           (t cur_syntax))))
;    (message "skip_syntax: %s" skip_syntax)
    skip_syntax))

(defun skip-same-syntax (dir)
  "TBD"
  (interactive)
  (let* ((cur_syntax  (string (char-syntax (char-after (point)))))
         (skip_syntax (get-skip-syntax (point))))
    (message "cur_syntax: [%s], skip_syntax: [%s]" cur_syntax skip_syntax)
    (cond ((< dir 0) (skip-syntax-backward skip_syntax))
          (t         (skip-syntax-forward  skip_syntax)))))

(defun skip-syntax (syntax direction)
  (if (= direction -1)
      (skip-syntax-backward syntax)
    (skip-syntax-forward syntax)))

(defun skip (direction)
  (skip-same-syntax direction)
  (let ((saved_pos (point))
        (next_pos nil)
        (next_syntax nil))
    (if (eq saved_pos (point))
        (progn
          (forward-char direction)
          (setq next_pos (point))
;          (setq next_pos (+ saved_pos direction))
;          (message "cur_pos=%s next_pos=%s" saved_pos next_pos)
          (setq next-syntax (get-skip-syntax next_pos))
          (if (string= next-syntax "w_")
              (skip-syntax next-syntax direction))
;        (forward-char direction))
          ))))

(defun skip-backward ()
  "TBD"
  (interactive)
  (skip -1))
(defun skip-forward ()
  "TBD"
  (interactive)
  (skip 1))


;; rtags

;; (require 'rtags-helm)

;; ;; ensure that we use only rtags checking
;; ;; https://github.com/Andersbakken/rtags#optional-1
;; (defun setup-flycheck-rtags ()
;;   (interactive)
;;   (flycheck-select-checker 'rtags)
;;   ;; RTags creates more accurate overlays.
;;   (setq-local flycheck-highlighting-mode nil)
;;   (setq-local flycheck-check-syntax-automatically nil))

;; ;; only run this if rtags is installed
;; (when (require 'rtags nil :noerror)
;;   ;; make sure you have company-mode installed
;;   (require 'company)
;;   ;(define-key c-mode-base-map (kbd "M-.") (function rtags-find-symbol-at-point))
;;   ;(define-key c-mode-base-map (kbd "M-,") (function rtags-find-references-at-point))
;;   ;; install standard rtags keybindings. Do M-. on the symbol below to
;;   ;; jump to definition and see the keybindings.
;;   (rtags-enable-standard-keybindings)
;;   ;; comment this out if you don't have or don't use helm
;;   (setq rtags-use-helm t)
;;   ;; company completion setup
;;   (setq rtags-autostart-diagnostics t)
;;   (rtags-diagnostics)
;;   (setq rtags-completions-enabled t)
;;   (push 'company-rtags company-backends)
;;   (global-company-mode)
;;   (define-key c-mode-base-map (kbd "<C-tab>") (function company-complete))
;;   ;; use rtags flycheck mode -- clang warnings shown inline
;;   (require 'flycheck-rtags)
;;   ;; c-mode-common-hook is also called by c++-mode
;;     (add-hook 'c-mode-common-hook #'setup-flycheck-rtags))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(c-default-style
   (quote
    ((c-mode . "stroustrup")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(c-offsets-alist
   (quote
    ((inline-open . 0)
     (member-init-intro . 0)
     (arglist-cont-nonempty . +))))
 '(column-number-mode t)
 '(display-time-24hr-format t)
 '(display-time-default-load-average nil)
 '(display-time-mail-directory nil)
 '(display-time-mail-file "nonexistent")
 '(display-time-mode t)
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(elpy-rpc-python-command "/home/vadym/opt/python/bin/python")
 '(flycheck-checkers
   (quote
    (ada-gnat asciidoctor asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint css-stylelint d-dmd dockerfile-hadolint elixir-dogma emacs-lisp emacs-lisp-checkdoc erlang-rebar3 erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert go-megacheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy javascript-eslint javascript-jshint javascript-jscs javascript-standard json-jsonlint json-python-json jsonnet less less-stylelint llvm-llc lua-luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing proselint protobuf-protoc pug puppet-parser puppet-lint python-pylint python-flake8 python-pycompile r-lintr racket rpm-rpmlint markdown-mdl nix rst-sphinx rst ruby-rubocop ruby-reek ruby-rubylint ruby ruby-jruby rust-cargo rust scala scala-scalastyle scheme-chicken scss-lint scss-stylelint sass/scss-sass-lint sass scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint systemd-analyze tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
 '(flycheck-python-pylint-executable "/home/vadym/opt/python/bin/pylint")
 '(ggtags-global-abbreviate-filename nil)
 '(git-commit-setup-hook
   (quote
    (git-commit-save-message git-commit-setup-changelog-support git-commit-propertize-diff with-editor-usage-message)))
 '(git-commit-summary-max-length 120)
 '(grep-files-aliases
   (quote
    (("all" . "* .*")
     ("el" . "*.el")
     ("ch" . "*.[ch]")
     ("c" . "*.c")
     ("cc" . "*.cc *.cxx *.cpp *.C *.CC *.c++")
     ("cchh" . "*.cc *.[ch]xx *.[ch]pp *.[CHh] *.CC *.HH *.[ch]++")
     ("hh" . "*.hxx *.hpp *.[Hh] *.HH *.h++")
     ("h" . "*.h")
     ("l" . "[Cc]hange[Ll]og*")
     ("m" . "[Mm]akefile*")
     ("tex" . "*.tex")
     ("texi" . "*.texi")
     ("asm" . "*.[sS]")
     ("pl" . "*.pl")
     ("py" . "*.py *.yaml *.conf *.ini *.json")
     ("xml" . "*.xml")
     ("src" . "*.cc *.[ch]xx *.[ch]pp *.[CHh] *.CC *.HH *.[ch]++ *.xml *.pl *.yaml *.yaml"))))
 '(helm-buffer-max-length 50)
 '(helm-buffers-fuzzy-matching t)
 '(helm-imenu-fuzzy-match t)
 '(ibuffer-expert t)
 '(magit-diff-refine-hunk t)
 '(magit-status-sections-hook
   (quote
    (magit-insert-status-headers magit-insert-merge-log magit-insert-rebase-sequence magit-insert-am-sequence magit-insert-sequencer-sequence magit-insert-bisect-output magit-insert-bisect-rest magit-insert-bisect-log magit-insert-unstaged-changes magit-insert-staged-changes magit-insert-stashes magit-insert-unpulled-from-upstream magit-insert-unpulled-from-pushremote magit-insert-unpushed-to-upstream magit-insert-unpushed-to-pushremote magit-insert-untracked-files)))
 '(package-selected-packages
   (quote
    (magit yasnippet-snippets yasnippet go-mode s groovy-mode hydra helm-swoop helm-projectile projectile project-explorer nav yaml-mode wgrep-ag undo-tree rtags py-autopep8 jedi icicles helm-grepint helm-fuzzy-find helm-ag ggtags flycheck elpy autopair ag)))
 '(pe/omit-regex "^\\.\\|^#\\|~$\\|^node_modules\\|\\.o$")
 '(safe-local-variable-values
   (quote
    ((ffip-project-root . "~/projects/cmdaemon/8.1/")
     (ffip-project-root . "~/projects/cmdaemon/8.0-chevron/")
     (ffip-project-root . "~/projects/cmdaemon/7.3g/")
     (ffip-project-root . "~/projects/cmdaemon/8.0/")
     (ffip-project-root . "~/projects/cmdaemon/trunkg/")
     (ffip-project-root . "~/projects/cmdaemon/trunk2/")
     (ffip-project-root . "~/projects/cmdaemon/trunk/"))))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "LucidaTypewriter" :foundry "B&H" :slant normal :weight bold :height 99 :width normal))))
 '(company-tooltip ((t (:background "cyan" :foreground "white" :weight bold))))
 '(magit-diff-added ((t (:foreground "green"))))
 '(magit-diff-added-highlight ((t (:foreground "green"))))
 '(magit-diff-base-highlight ((t (:background "#eeeebb" :foreground "magenta"))))
 '(magit-diff-context ((t (:foreground "white"))))
 '(magit-diff-context-highlight ((t (:background "black" :foreground "white"))))
 '(magit-diff-file-heading ((t (:background "cyan" :foreground "white" :underline nil :weight bold))))
 '(magit-diff-file-heading-highlight ((t (:background "cyan" :foreground "yellow"))))
 '(magit-diff-hunk-heading ((t (:foreground "blue"))))
 '(magit-diff-hunk-heading-highlight ((t (:foreground "blue"))))
 '(magit-diff-our-highlight ((t (:foreground "green"))))
 '(magit-diff-removed ((t (:foreground "#aa2222"))))
 '(magit-diff-removed-highlight ((t (:foreground "#aa2222"))))
 '(magit-diff-their-highlight ((t (:inherit nil))))
 '(magit-dimmed ((t (:foreground "grey50"))))
 '(magit-log-date ((t (:foreground "green"))))
 '(magit-log-graph ((t (:foreground "cyan"))))
 '(magit-refname ((t (:background "cyan" :foreground "grey30"))))
 '(magit-section-highlight ((t (:background "white" :foreground "black"))))
 '(term-color-black ((t (:background "white" :foreground "black"))))
 '(tool-bar ((t (:foreground "yellow" :box (:line-width 1 :style released-button)))))
 '(window-divider-last-pixel ((t (:foreground "magenta")))))
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
