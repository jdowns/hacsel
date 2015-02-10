;;; hacs.el --- HACS editing commands for GNU Emacs

;; Copyright (C) 2015 John Downs

;; Author: John Downs
;; URL: https://github.com/jdowns/hacsel
;; Version: 0.0.1
;; Maintainer: John Downs
;; Keywords: languages, compilers

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file provides syntax highlighting and keybindings for
;; writing hacs source files.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(setq myKeywords
  '(("//.*$" . font-lock-comment-face)
    ("\/\*.\*\/" . font-lock-comment-face)
    ("[A-Z]* " . font-lock-constant-face)
    ("space\\|token\\|fragment\\|main\\|sort\\|sugar\\|symbol\\|scheme\\|attribute" . font-lock-keyword-face)
    ("Compile\\|Leftmost\\|Unif" . font-lock-function-name-face)
    ("[A-Z][a-z]*" . font-lock-type-face)))

(define-derived-mode hacs-mode c-mode
  (setq font-lock-defaults '(myKeywords))
   (setq mode-name "hacs lang"))

;;; TODO: Define keyboard shortcuts for special characters
(global-set-key (kbd "<prior>") '(insert-key "→"))
(provide 'hacs)
;;; hacs.el ends here
