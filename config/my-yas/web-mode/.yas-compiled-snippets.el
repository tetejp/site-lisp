;;; Compiled snippets and support files for `web-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'web-mode
                     '(("a" "<a class=\"btn btn-${1:$$(yas-choose-value '(\"default\" \"primary\" \"success\" \"info\" \"warning\" \"danger\" \"link\"))}\" role=\"button\" $2>$3</a>$0" "<a class=\"btn\" ..</a>" nil
                        ("twitter-bootstrap")
                        nil nil "direct-keybinding" nil)
                       ("alert" "<div class=\"alert alert-${1:$$(yas-choose-value '(\"success\" \"info\" \"warning\" \"danger\"))}\">${2:\n<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>}\n  $0\n</div>" "alert" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("a" "<a href=\"$1\" class=\"$2\" $3>$4</a>$0" "<a href=\"\" class=\"\"..</a>" nil
                        ("twitter-bootstrap")
                        nil nil "direct-keybinding" nil)
                       ("button" "<button type=\"button\" class=\"btn btn-${1:$$(yas-choose-value '(\"default\" \"primary\" \"success\" \"info\" \"warning\" \"danger\" \"link\"))}\" $2>$3</button>$0" "button" nil
                        ("twitter-bootstrap")
                        nil nil "direct-keybinding" nil)
                       ("container" "<div class=\"container\">\n  $0\n</div>" "container" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("dis" "style=\"display:none;\"" "dis" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("div" "<div class=\"$1\"${2: id=\"$3\"}>\n  $0 asdfa\n</div>" "div" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("icon" "<span class=\"glyphicon glyphicon-$1\"></span>$0" "icon" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("modal" "<div class=\"modal fade\" \n     id=\"$1\" \n     tabindex=\"-1\" \n     role=\"dialog\" \n     aria-labelledby=\"$2\" \n     aria-hidden=\"true\">\n  <div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <button type=\"button\" \n		class=\"close\" \n		data-dismiss=\"modal\" \n		aria-hidden=\"true\">&times;</button>\n        <h4 class=\"modal-title\" id=\"$2\">$3</h4>\n      </div>\n      <div class=\"modal-body\">\n        $0\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" \n                class=\"btn btn-default\" \n                data-dismiss=\"modal\">${5:Close}</button>\n        <button type=\"button\" \n		class=\"btn btn-primary\">${6:Save}</button>\n      </div>\n    </div>\n  </div>\n</div>" "modal" nil
                        ("twitter-bootstrap")
                        nil nil "direct-keybinding" nil)
                       ("panel" "<div class=\"panel $1\">\n  <div class=\"panel-heading\">$2</div>\n  <div class=\"panel-body\">\n    $0\n  </div>\n</div>" "panel" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("row" "<div class=\"row\">\n    <div class=\"col-xs-6 col-md-2\">\n        <div class=\"input-group \">\n            <span >$1</span>\n            <input type=\"text\" value=\"\"   id=\"$2\"  placeholder=\"$3\" />$0\n        </div>\n    </div>\n</div>\n" "row" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("table" "<table   class=\"table table-bordered table-striped\"   >" "table" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)
                       ("xdtd" "<include: file=\"../al_common/td_xs_opt.html\" />" "xdtd" nil
                        ("twitter-bootstrap")
                        nil nil nil nil)))


;;; Do not edit! File generated at Fri Jun 19 16:51:29 2015
